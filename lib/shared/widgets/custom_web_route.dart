import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

enum WebViewResultType { success, failure }

@RoutePage()
class CustomWebView extends StatefulWidget {
  const CustomWebView({
    super.key,
    required this.pageTitle,
    this.url,
    this.enableGestures = false,
  });

  final String pageTitle;
  final String? url;
  final bool? enableGestures;

  @override
  State<CustomWebView> createState() => _CustomWebViewState();
}

class _CustomWebViewState extends State<CustomWebView> {
  late final WebViewController controller;
  bool isLoading = true;
  bool hasError = false;
  String? errorMessage;

  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (navigation) {
            return NavigationDecision.navigate;
          },
          onPageStarted: (url) {
            setState(() {
              isLoading = true;
              hasError = false;
              errorMessage = null;
            });
          },
          onPageFinished: (url) {
            setState(() {
              isLoading = false;
            });
          },
          onWebResourceError: (WebResourceError error) {
            setState(() {
              isLoading = false;
              hasError = true;
              errorMessage = error.description;
            });
          },
        ),
      );

    if (widget.url != null && widget.url!.isNotEmpty) {
      controller.loadRequest(Uri.parse(widget.url!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.pageTitle)),
      body: Stack(
        children: [
          if (hasError)
            _buildErrorView()
          else
            WebViewWidget(
              controller: controller,
              gestureRecognizers: widget.enableGestures == true
                  ? {
                      Factory<VerticalDragGestureRecognizer>(() => VerticalDragGestureRecognizer()),
                      Factory<HorizontalDragGestureRecognizer>(() => HorizontalDragGestureRecognizer()),
                    }
                  : {},
            ),
          if (isLoading)
            const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
        ],
      ),
    );
  }

  Widget _buildErrorView() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.redAccent),
            const SizedBox(height: 16),
            Text(
              "Failed to load page",
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            if (errorMessage != null) ...[
              const SizedBox(height: 8),
              Text(
                errorMessage!,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isLoading = true;
                  hasError = false;
                  errorMessage = null;
                });
                controller.reload();
              },
              child: const Text("Retry"),
            ),
          ],
        ),
      ),
    );
  }
}
