import 'package:go_router/go_router.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'home_page.dart';
import 'other_page.dart';

final router = routerGenerator();

GoRouter routerGenerator({String? initialLocation}) => GoRouter(
      observers: [seoRouteObserver],
      initialLocation: initialLocation ?? Routes.root,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          name: HomePage.routeName,
          path: Routes.root,
          builder: (_, __) => const HomePage(),
          routes: [
            GoRoute(
              name: OtherPage.routeName,
              path: Routes.other,
              builder: (_, __) => const OtherPage(),
            ),
          ],
        ),
      ],
    );

abstract class Routes {
  static const root = '/';
  static const other = 'other';
}
