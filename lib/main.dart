import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plantapp/core/get_it.dart';
import 'package:plantapp/core/router.dart';
import 'package:plantapp/core/services.dart';
import 'package:plantapp/shared/theme/theme_helper.dart';
import 'package:plantapp/shared/utils/size_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await EasyLocalization.ensureInitialized();

  GetIt.instance.registerSingleton(AppRouter());
  ThemeHelper().changeTheme('primary');

  runApp(EasyLocalization(supportedLocales: const [Locale('en', 'US'), Locale('tr', 'TR')], path: 'assets/lang', child: const MyApp()));
}

final scaffoldKey = GlobalKey<ScaffoldState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        top: false,
        bottom: Platform.isIOS ? false : true,
        child: AppSizer(
          builder: (context, orientation, deviceType) {
            return MaterialApp.router(
              key: scaffoldKey,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              themeMode: ThemeMode.system,
              theme: theme,
              routerConfig: router.config(),
            );
          },
        ),
      ),
    );
  }
}
