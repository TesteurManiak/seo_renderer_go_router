import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'other_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TextRenderer(child: Text('This is the Home Page')),
            ElevatedButton(
              onPressed: () => context.pushNamed(OtherPage.routeName),
              child: const TextRenderer(child: Text('Go to next page')),
            ),
          ],
        ),
      ),
    );
  }
}
