import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class OtherPage extends StatelessWidget {
  static const routeName = 'other';

  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: TextRenderer(child: Text('This is the other page'))),
    );
  }
}
