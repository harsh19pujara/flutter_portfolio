import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileView;
  final Widget tabletView;
  final Widget webView;

  const ResponsiveLayout({
    super.key,
    required this.mobileView,
    required this.tabletView,
    required this.webView,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Mobile view
          return mobileView;
        } else if (constraints.maxWidth < 1100) {
          // Tablet view
          return tabletView;
        } else {
          // Web view
          return webView;
        }
      },
    );
  }
}
