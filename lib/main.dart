import 'package:dnd_project/features/app_screen_feature/presentation/screen/app_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    EasyLocalization(
      path: 'assets/locale',
      supportedLocales: const [
        Locale('en'),
        Locale('it'),
        Locale('es'),
      ],
      fallbackLocale: const Locale('en'),
      child: AppScreen(),
    ),
  );
}
