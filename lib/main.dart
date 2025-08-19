import 'package:flutter/material.dart';
import 'package:personal_portofolio/constants/custom_theme_color.dart';
import 'package:personal_portofolio/constants/scroll_behaviour.dart';
import 'package:personal_portofolio/home_page.dart';
import 'package:toastification/toastification.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp(
        title: "NabilMQ | Personal Portofolio",
        scrollBehavior: CustomScrollBehavior(),
        theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.light,
            seedColor: Colors.white,
            inverseSurface: CustomThemeColor.lightInverseSurface,
            surfaceContainerLow: CustomThemeColor.lightSurfaceContainerLow,
            surfaceDim: CustomThemeColor.lightSurfaceDim,
          ),
          textTheme: TextTheme(
            displayLarge: Theme.of(context).textTheme.displayLarge!.apply(
              color: CustomThemeColor.lightInverseSurface,
              decorationColor: CustomThemeColor.lightInverseSurface, 
            ),
            displayMedium: Theme.of(context).textTheme.displayMedium!.apply(
              color: CustomThemeColor.lightInverseSurface,
              decorationColor: CustomThemeColor.lightInverseSurface,
            ),
            displaySmall: Theme.of(context).textTheme.displaySmall!.apply(
              color: CustomThemeColor.lightInverseSurface,
              decorationColor: CustomThemeColor.lightInverseSurface,
            ),
            headlineLarge: Theme.of(context).textTheme.headlineLarge!.apply(
              color: CustomThemeColor.lightInverseSurface,
              decorationColor: CustomThemeColor.lightInverseSurface,
            ),
            headlineMedium: Theme.of(context).textTheme.headlineMedium!.apply(
              color: CustomThemeColor.lightInverseSurface,
              decorationColor: CustomThemeColor.lightInverseSurface,
            ),
            headlineSmall: Theme.of(context).textTheme.headlineSmall!.apply(
              color: CustomThemeColor.lightInverseSurface,
              decorationColor: CustomThemeColor.lightInverseSurface,
            ),
            titleLarge: Theme.of(context).textTheme.titleLarge!.apply(
              color: CustomThemeColor.lightInverseSurface,
              decorationColor: CustomThemeColor.lightInverseSurface,
            ),
            titleMedium: Theme.of(context).textTheme.titleMedium!.apply(
              color: CustomThemeColor.lightInverseSurface,
              decorationColor: CustomThemeColor.lightInverseSurface,
            ),
            titleSmall: Theme.of(context).textTheme.titleSmall!.apply(
              color: CustomThemeColor.lightInverseSurface,
              decorationColor: CustomThemeColor.lightInverseSurface,
            ),
            bodyLarge: Theme.of(context).textTheme.bodyLarge!.apply(
              color: CustomThemeColor.lightInverseSurface,
              decorationColor: CustomThemeColor.lightInverseSurface,
            ),
            bodyMedium: Theme.of(context).textTheme.bodyMedium!.apply(
              color: CustomThemeColor.lightInverseSurface,
              decorationColor: CustomThemeColor.lightInverseSurface,
            ),
            bodySmall: Theme.of(context).textTheme.bodySmall!.apply(
              color: CustomThemeColor.lightInverseSurface,
              decorationColor: CustomThemeColor.lightInverseSurface,
            ),
            labelLarge: Theme.of(context).textTheme.labelLarge!.apply(
              color: CustomThemeColor.lightInverseSurface,
              decorationColor: CustomThemeColor.lightInverseSurface,
            ),
            labelMedium: Theme.of(context).textTheme.labelMedium!.apply(
              color: CustomThemeColor.lightInverseSurface,
              decorationColor: CustomThemeColor.lightInverseSurface,
            ),
            labelSmall: Theme.of(context).textTheme.labelSmall!.apply(
              color: CustomThemeColor.lightInverseSurface,
              decorationColor: CustomThemeColor.lightInverseSurface,
            ),
          ),
          fontFamily: "Roboto",
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: CustomThemeColor.lightInverseSurface,
            selectionColor: CustomThemeColor.lightSurfaceDim,
            selectionHandleColor: CustomThemeColor.lightInverseSurface,
          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.dark,
            seedColor: Colors.black,
            inverseSurface: CustomThemeColor.darkInverseSurface,
            surfaceContainerLow: CustomThemeColor.darkSurfaceContainerLow,
            surfaceDim: CustomThemeColor.darkSurfaceDim,
          ),
          textTheme: TextTheme(
            displayLarge: Theme.of(context).textTheme.displayLarge!.apply(
              color: CustomThemeColor.darkInverseSurface,
              decorationColor: CustomThemeColor.darkInverseSurface,
            ),
            displayMedium: Theme.of(context).textTheme.displayMedium!.apply(
              color: CustomThemeColor.darkInverseSurface,
              decorationColor: CustomThemeColor.darkInverseSurface,
            ),
            displaySmall: Theme.of(context).textTheme.displaySmall!.apply(
              color: CustomThemeColor.darkInverseSurface,
              decorationColor: CustomThemeColor.darkInverseSurface,
            ),
            headlineLarge: Theme.of(context).textTheme.headlineLarge!.apply(
              color: CustomThemeColor.darkInverseSurface,
              decorationColor: CustomThemeColor.darkInverseSurface,
            ),
            headlineMedium: Theme.of(context).textTheme.headlineMedium!.apply(
              color: CustomThemeColor.darkInverseSurface,
              decorationColor: CustomThemeColor.darkInverseSurface,
            ),
            headlineSmall: Theme.of(context).textTheme.headlineSmall!.apply(
              color: CustomThemeColor.darkInverseSurface,
              decorationColor: CustomThemeColor.darkInverseSurface,
            ),
            titleLarge: Theme.of(context).textTheme.titleLarge!.apply(
              color: CustomThemeColor.darkInverseSurface,
              decorationColor: CustomThemeColor.darkInverseSurface,
            ),
            titleMedium: Theme.of(context).textTheme.titleMedium!.apply(
              color: CustomThemeColor.darkInverseSurface,
              decorationColor: CustomThemeColor.darkInverseSurface,
            ),
            titleSmall: Theme.of(context).textTheme.titleSmall!.apply(
              color: CustomThemeColor.darkInverseSurface,
              decorationColor: CustomThemeColor.darkInverseSurface,
            ),
            bodyLarge: Theme.of(context).textTheme.bodyLarge!.apply(
              color: CustomThemeColor.darkInverseSurface,
              decorationColor: CustomThemeColor.darkInverseSurface,
            ),
            bodyMedium: Theme.of(context).textTheme.bodyMedium!.apply(
              color: CustomThemeColor.darkInverseSurface,
              decorationColor: CustomThemeColor.darkInverseSurface,
            ),
            bodySmall: Theme.of(context).textTheme.bodySmall!.apply(
              color: CustomThemeColor.darkInverseSurface,
              decorationColor: CustomThemeColor.darkInverseSurface,
            ),
            labelLarge: Theme.of(context).textTheme.labelLarge!.apply(
              color: CustomThemeColor.darkInverseSurface,
              decorationColor: CustomThemeColor.darkInverseSurface,
            ),
            labelMedium: Theme.of(context).textTheme.labelMedium!.apply(
              color: CustomThemeColor.darkInverseSurface,
              decorationColor: CustomThemeColor.darkInverseSurface,
            ),
            labelSmall: Theme.of(context).textTheme.labelSmall!.apply(
              color: CustomThemeColor.darkInverseSurface,
              decorationColor: CustomThemeColor.darkInverseSurface,
            ),
          ),
          fontFamily: "Roboto",
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: CustomThemeColor.darkInverseSurface,
            selectionColor: CustomThemeColor.darkSurfaceDim,
            selectionHandleColor: CustomThemeColor.darkInverseSurface,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: LayoutBuilder(
          builder: (context, constraints) {
            return SelectionArea(
              child: HomePage(),
            );
          }
        ),
      ),
    );
  }
}


