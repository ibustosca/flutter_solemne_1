import 'package:flutter/material.dart';
import '../screen/screen.dart';

class AppRoutes {
  static final initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => HomeScreen(),
    'VerificationOptions':
        (BuildContext context) => VerificationOptionsScreen(),
    'CodeVerification': (BuildContext context) => CodeVerificationScreen(),
    'InsertMoney': (BuildContext context) => InsertMoneyScreen(),
    'Indicators': (BuildContext context) => IndicatorsScreen()
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ErrorScreen());
  }
}
