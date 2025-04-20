import 'package:flutter/material.dart';
import '../screen/screen.dart';

class AppRoutes {
  static final initialRoute = 'VerificationOptions';

  static Map<String, Widget Function(BuildContext)> routes = {
    'VerificationOptions':
        (BuildContext context) => VerificationOptionsScreen(),
    'CodeVerification': (BuildContext context) => CodeVerificationScreen(),
    'InsertMoney': (BuildContext context) => InsertMoneyScreen(),
    /* 'CheckData': (BuildContext context) => CheckDataScreen(), */
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ErrorScreen());
  }
}
