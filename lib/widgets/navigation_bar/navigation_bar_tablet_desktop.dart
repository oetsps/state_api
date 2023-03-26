import 'package:flutter/material.dart';
import 'package:state_api/routing/route_names.dart';
import 'package:state_api/widgets/navbar_item/navbar_item.dart';

import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  // const NavigationBarTabletDesktop({Key key}) : super(key: key);
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Episodes', EpisodesRoute, Icons.videocam,),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About', AboutRoute, Icons.help),
            ],
          )
        ],
      ),
    );
  }
}
