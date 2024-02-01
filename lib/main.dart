import 'package:flutter/material.dart';
import 'package:flutter_ui_components/Route/Screens.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';
import 'Route/Routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder:(context, orientation, deviceType) {
          return GetMaterialApp(
            title: 'Flutter UI Components',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColorDark:Colors.white,
              primaryColor: Color(0x85E98929),
            ),
            getPages:Screens.routes,
            initialRoute: Routes.homeScreen,
          );
        },
    );
  }
}