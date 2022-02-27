import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'router.dart';

void main() {
  runApp(
    RobotDetector(
      child: MaterialApp.router(
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
      ),
    ),
  );
}
