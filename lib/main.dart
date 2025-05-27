// ignore_for_file: deprecated_member_use, unused_import, prefer_const_constructors

import 'dart:developer';
import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/main.dart';
import 'package:training_app/constants/app_constants.dart';
import 'package:training_app/constants/custome_theme.dart';
import 'package:training_app/helpers/all_routes.dart';
import 'package:training_app/helpers/di.dart';
import 'package:training_app/helpers/helper_methods.dart';
import 'package:training_app/helpers/language.dart';
import 'package:training_app/helpers/navigation_service.dart';
import 'package:training_app/helpers/register_provider.dart';
import 'package:training_app/loading_screen.dart';
import 'package:training_app/networks/dio/dio.dart';
import 'package:training_app/splash_screen.dart';
import 'button_navigation_bar/button_navigation_bar.dart';
import 'feature/auth/presntation/log_in_screen.dart';
import 'feature/new_widget/presentation/alartdilog_screen.dart';
import 'feature/new_widget/presentation/cliprrect_screen.dart';
import 'feature/new_widget/presentation/drware_screen.dart';
import 'feature/new_widget/presentation/rictects_screen.dart';
import 'feature/packeg/presentation/code_gauge_screen.dart';
import 'feature/packeg/presentation/cupertion_progress_screen.dart';
import 'feature/packeg/presentation/heroanimation_screen.dart';
import 'feature/packeg/presentation/multi_circular_slider.dart';
import 'feature/packeg/presentation/practice.dart';
import 'feature/packeg/presentation/progress_line.dart';
import 'feature/packeg/presentation/sleek_circular_slider.dart';
import 'feature/packeg/presentation/step-progress.dart';
import 'feature/presentation/food/container_screen.dart';
import 'feature/presentation/food/container_select_unselect.dart';
import 'feature/presentation/food/container_design.dart';
import 'feature/presentation/food/file_text_screen.dart';
import 'feature/presentation/food/goggle_map_screen.dart';
import 'feature/presentation/food/listview_vedo_screen.dart';
import 'feature/presentation/food/listviewscreen.dart';
import 'feature/presentation/food/vedio.dart';
import 'feature/select_unselect/presentation/carousel-Slider_two.dart';
import 'feature/select_unselect/presentation/carousel_slider_screen.dart';
import 'feature/select_unselect/presentation/circular_progsstwo.dart';
import 'feature/select_unselect/presentation/circular_proress.dart';
import 'feature/select_unselect/presentation/calender_date_screen.dart';
import 'feature/select_unselect/presentation/drop_dwon_button.dart';
import 'feature/select_unselect/presentation/font_screen.dart';
import 'feature/select_unselect/presentation/food_screen.dart';
import 'feature/select_unselect/presentation/home_screen.dart';
import 'feature/select_unselect/presentation/listview_spared_screen.dart';
import 'feature/select_unselect/presentation/muve_screen.dart';
import 'feature/select_unselect/presentation/popup_menu_screen.dart';
import 'feature/select_unselect/presentation/practice.dart';
import 'feature/select_unselect/presentation/select_screen.dart';
import 'feature/select_unselect/presentation/spainer_screen.dart';
import 'feature/select_unselect/presentation/stack_screen.dart';
import 'feature/select_unselect/presentation/tab_screen.dart';

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
    String language = appData.read(kKeyLanguage) ?? 'en'; // Default language
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
          home: CarouselSliderTwoScreen(),
        );
      },
    );
  }
}
