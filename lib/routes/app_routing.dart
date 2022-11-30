import 'package:book_apartment/models/apartments_model.dart';
import 'package:book_apartment/screens/apartment_screen/apartment_scree.dart';
import 'package:book_apartment/screens/home_screen/home_scree.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes {
  home,
  apartment,
}

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.home.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/apartment',
      name: AppRoutes.apartment.name,
      builder: (context, state) {
        final data = state.extra as Apartment;
        return ApartmentScreen(apartment: data);
      },
    ),
  ],
);
