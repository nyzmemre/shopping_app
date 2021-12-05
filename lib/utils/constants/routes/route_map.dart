import 'package:flutter/material.dart';

import '../routes/route_texts.dart';
import '../../../screens/homepage.dart';
import '../../../screens/olive_oils.dart';
import '../../../screens/best_sales.dart';

class Routes {
  static Route<dynamic>? createRoute(RouteSettings settings) {
    switch (settings.name) {
      case kRouteHomepage:
        return MaterialPageRoute(builder: (_) => HomePage());
      case kRouteOliveOils:
        return MaterialPageRoute(builder: (_) => OliveOils());
      case kRouteBestSales:
        return MaterialPageRoute(builder: (_) => BestSales());
    }
  }
}
