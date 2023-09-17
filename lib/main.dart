import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/SplashScreen/splash_screen.dart';
import 'package:test_app/home/home_screen.dart';
import 'package:test_app/home/nextLogin.dart';
import 'package:test_app/home/nextPage.dart';
import 'package:test_app/home/soon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              HomeScreen.routeName: (_) => HomeScreen(),
              SplashScreen.routeName: (_) => SplashScreen(),
              NextPage.routeName: (_) => NextPage(),
              LogIn.routeName: (_) => LogIn(),
              Soon.routeName: (_) => Soon(),
            },
            initialRoute: SplashScreen.routeName,
          );
        });
  }
}
