import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/shared/theme/primary_colors.dart';
import 'package:plantapp/shared/utils/image_constant.dart';
import 'package:plantapp/shared/utils/size_utils.dart';
import 'package:plantapp/shared/widgets/custom_image_view.dart';

@RoutePage()
class PaywallView extends StatefulWidget {
  const PaywallView({super.key});

  @override
  State<PaywallView> createState() => _PaywallViewState();
}

class _PaywallViewState extends State<PaywallView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColors().darkGreenBackground,
      body: Stack(
        children: [
          CustomImageView(imagePath: ImageConstant.paywallBackground),
          Padding(
            padding: EdgeInsets.only(
              top: 280.v,
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            child: Column(

            ),
          ),
          _closeIcon(),
        ],
      ),
    );
  }

  Widget _closeIcon() {
    return Positioned(
      top: MediaQuery.of(context).padding.top,
      right: 20.h,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop(); // veya istediğin herhangi bir aksiyon
        },
        child: Container(
          width: 24.h,
          height: 24.v,
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha: 0.8), // siyah daire
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(Icons.close, color: Colors.white, size: 18.v),
          ),
        ),
      ),
    );
  }
}
