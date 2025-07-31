// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [CustomWebView]
class CustomWebRoute extends PageRouteInfo<CustomWebRouteArgs> {
  CustomWebRoute({
    Key? key,
    required String pageTitle,
    String? url,
    bool? enableGestures = false,
    List<PageRouteInfo>? children,
  }) : super(
         CustomWebRoute.name,
         args: CustomWebRouteArgs(
           key: key,
           pageTitle: pageTitle,
           url: url,
           enableGestures: enableGestures,
         ),
         initialChildren: children,
       );

  static const String name = 'CustomWebRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CustomWebRouteArgs>();
      return CustomWebView(
        key: args.key,
        pageTitle: args.pageTitle,
        url: args.url,
        enableGestures: args.enableGestures,
      );
    },
  );
}

class CustomWebRouteArgs {
  const CustomWebRouteArgs({
    this.key,
    required this.pageTitle,
    this.url,
    this.enableGestures = false,
  });

  final Key? key;

  final String pageTitle;

  final String? url;

  final bool? enableGestures;

  @override
  String toString() {
    return 'CustomWebRouteArgs{key: $key, pageTitle: $pageTitle, url: $url, enableGestures: $enableGestures}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CustomWebRouteArgs) return false;
    return key == other.key &&
        pageTitle == other.pageTitle &&
        url == other.url &&
        enableGestures == other.enableGestures;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      pageTitle.hashCode ^
      url.hashCode ^
      enableGestures.hashCode;
}

/// generated route for
/// [DiagnoseView]
class DiagnoseRoute extends PageRouteInfo<void> {
  const DiagnoseRoute({List<PageRouteInfo>? children})
    : super(DiagnoseRoute.name, initialChildren: children);

  static const String name = 'DiagnoseRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DiagnoseView();
    },
  );
}

/// generated route for
/// [GardenView]
class GardenRoute extends PageRouteInfo<void> {
  const GardenRoute({List<PageRouteInfo>? children})
    : super(GardenRoute.name, initialChildren: children);

  static const String name = 'GardenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const GardenView();
    },
  );
}

/// generated route for
/// [GetStartedView]
class GetStartedRoute extends PageRouteInfo<void> {
  const GetStartedRoute({List<PageRouteInfo>? children})
    : super(GetStartedRoute.name, initialChildren: children);

  static const String name = 'GetStartedRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const GetStartedView();
    },
  );
}

/// generated route for
/// [HomeTabView]
class HomeTabRoute extends PageRouteInfo<void> {
  const HomeTabRoute({List<PageRouteInfo>? children})
    : super(HomeTabRoute.name, initialChildren: children);

  static const String name = 'HomeTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeTabView();
    },
  );
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeView();
    },
  );
}

/// generated route for
/// [OnboardingView]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingView();
    },
  );
}

/// generated route for
/// [ProfileView]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileView();
    },
  );
}
