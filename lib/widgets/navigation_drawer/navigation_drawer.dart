import 'package:flutter/material.dart';
import 'package:state_api/routing/route_names.dart';
import 'package:state_api/widgets/navbar_item/navbar_item.dart';
import 'package:state_api/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawerWeb extends StatelessWidget {
  // const NavigationDrawer({Key key}) : super(key: key);
  const NavigationDrawerWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: const Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          // BONUS: Combine the UI for this widget with the NavBarItem and make it responsive.
          // The UI for the current DrawerItem shows when it's in mobile, else it shows the NavBarItem ui.
          NavBarItem(
            'Episodes',
            EpisodesRoute,
            Icons.videocam,
          ),
          NavBarItem(
            'About',
            AboutRoute,
            Icons.help,
          ),
        ],
      ),
    );
  }
}
