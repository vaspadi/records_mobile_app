import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/views/home_screen.dart';
// import 'package:kf_ui/constants/colors.dart';
// import 'package:koenig_finance/app/modules/auth/views/auth_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      // theme: ThemeData(
      //   primaryColor: KFColors.Primary,
      // ),
      home: HomeScreen(),
    );
  }
}
