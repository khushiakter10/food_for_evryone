
import 'dart:developer';
import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:training_app/constants/app_constants.dart';
import 'package:training_app/feature/select_unselect/presentation/font_screen.dart';
import 'package:training_app/helpers/di.dart';
import 'package:training_app/helpers/language.dart';
import 'package:training_app/helpers/navigation_service.dart';
import 'package:training_app/helpers/register_provider.dart';
import 'package:training_app/networks/dio/dio.dart';






void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await GetStorage.init();
  diSetup();
  // initiInternetChecker();
  DioSingleton.instance.create();
  try {
    await FlutterDisplayMode.setHighRefreshRate();
  } catch (e) {
    log('Error setting high refresh rate: $e');
  }
  // await Firebase.initializeApp(
  //     options: FirebaseOptions(
  //         apiKey: "AIzaSyB9G5ZAPj9mYnBRPoeCzuECWOhrqwR7OnM",
  //         appId: "1:590855844219:android:fe6f7c6ad5aad66e714dde",
  //         messagingSenderId: "",
  //         projectId: "yogavillage-54c00"));
  //FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  // LocalNotificationService.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // rotation();
    // setInitValue();
    return MultiProvider(
      providers: providers,
      child: AnimateIfVisibleWrapper(
        showItemInterval: const Duration(milliseconds: 150),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return const UtillScreenMobile();
          },
        ),
      ),
    );
  }
}

class UtillScreenMobile extends StatelessWidget {
  const UtillScreenMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String language = appData.read(kKeyLanguage) ?? 'en';
    String countryCode =
        appData.read(kKeyCountryCode) ?? 'US';
    return ScreenUtilInit(
      designSize: const Size(414, 826),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          showPerformanceOverlay: false,
          // theme: ThemeData(
          //   primarySwatch: CustomTheme.kToDark,
          //   useMaterial3: false,
          // ),
          debugShowCheckedModeBanner: false,
          translations: LocalString(),
          locale: Locale(language, countryCode),
          builder: (context, widget) {
            return MediaQuery(data: MediaQuery.of(context), child: widget!);
          },
          navigatorKey: NavigationService.navigatorKey,
          // onGenerateRoute: RouteGenerator.generateRoute,
          home:    FontScreen (),
        );
      },
    );
  }
}
