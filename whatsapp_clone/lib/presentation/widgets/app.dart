import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/constants/constants.dart';
import 'package:whatsapp_clone/utilities/utilities.dart';
import 'package:camera/camera.dart';
import 'package:whatsapp_clone/presentation/presentation.dart';

class App extends StatelessWidget {
  final List<CameraDescription> cameras;

  App({this.cameras});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        ScreenUtil.defaultSize.width,
        ScreenUtil.defaultSize.height,
      ),
      allowFontScaling: false,
      builder: () {
        return MaterialApp(
          initialRoute: AppRoutes.home,
          home: HomePage(cameras: cameras),
          routes: AppRoutes.routes,
          theme: ThemeData(
            primaryColor: AppColors.darkShadeCyan,
            accentColor: AppColors.greenCyanShade,
          ),
          debugShowCheckedModeBanner: false,
          title: 'WhatsApp Clone App',
          supportedLocales: [
            const Locale('en'),
            const Locale('ar'),
          ],
          localizationsDelegates: [
            AppLocalizations.delegate,
            // Built-in localization for text direction LTR/RTL
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate
          ],
          localeResolutionCallback: (locale, supportedLocales) {
            for (var supportedLocaleLanguage in supportedLocales) {
              if (supportedLocaleLanguage.languageCode == locale.languageCode &&
                  supportedLocaleLanguage.countryCode == locale.countryCode) {
                return supportedLocaleLanguage;
              }
            }

            // If device not support with locale to get language code then default get first on from the list
            return supportedLocales.first;
          },
        );
      },
    );
  }
}
