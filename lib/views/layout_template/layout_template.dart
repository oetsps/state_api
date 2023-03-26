import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:state_api/locator.dart';
import 'package:state_api/routing/route_names.dart';
import 'package:state_api/routing/router.dart';
import 'package:state_api/services/navigation_service.dart';
import 'package:state_api/widgets/centered_view/centered_view.dart';
import 'package:state_api/widgets/navigation_bar/navigation_bar.dart';
import 'package:state_api/widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawerWeb()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              const NavigationBarWeb(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
