import 'package:flutter/material.dart';
import 'package:state_api/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:state_api/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarWeb extends StatelessWidget {
  // const NavigationBar({Key key}) : super(key: key);
  const NavigationBarWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const NavigationBarMobile(),
      tablet: (context) => const NavigationBarTabletDesktop(),
    );
  }
}
