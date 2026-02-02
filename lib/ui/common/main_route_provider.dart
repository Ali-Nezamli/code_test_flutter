import 'package:code_test_flutter/core/navigation/route_provider.dart';
import 'package:code_test_flutter/core/routes.dart';
import 'package:code_test_flutter/data/api/entities/photo_api_model.dart';
import 'package:code_test_flutter/ui/details/page/photo_details_screen.dart';
import 'package:code_test_flutter/ui/home/home_screen.dart';

class MainRouteProvider extends RouteProvider {
  @override
  Iterable<(String, RouteBuilder)> routes() {
    return [
      (Routes.home, (context, params) => HomeScreen()),
      (Routes.photoDetailScreen,
        (context, routerState) { 
          final photo = routerState.data<PhotoApiModel>();
          return PhotoDetailScreen(photo: photo);
        }
      ),
    ];
  }
}
