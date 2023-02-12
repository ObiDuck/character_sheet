import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'character_page.dart';
import 'home_page.dart';
import 'package:cupertino_back_gesture/cupertino_back_gesture.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BackGestureWidthTheme(
      // specify desired width as fixed logical pixels value
      // backGestureWidth: BackGestureWidth.fixed(200),

      // or as a fraction of the screen width
      backGestureWidth: BackGestureWidth.fraction(1 / 2),

      child: MaterialApp(
        theme: ThemeData(
          // force iOS behaviour on Android (for testing)
          // (or toggle platform via Flutter Inspector)
          // platform: TargetPlatform.iOS,

          // specify page transitions for each platform
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              // for Android - default page transition
              TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),

              // for iOS - one which considers ancestor BackGestureWidthTheme
              TargetPlatform.iOS:
                  CupertinoPageTransitionsBuilderCustomBackGestureWidth(),
            },
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}
