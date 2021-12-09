import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ftc_admindashboard/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: seconadaryColor,
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),
                ],
              ),
            ),
            DrawerListTile(
              title: 'Dashboard',
              svgSrc: 'assets/icons/menu_dashbord.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Lanuages',
              svgSrc: 'assets/icons/menu_tran.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Categories',
              svgSrc: 'assets/icons/menu_doc.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Difficulties',
              svgSrc: 'assets/icons/Documents.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Recipes',
              svgSrc: 'assets/icons/menu_task.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Users',
              svgSrc: 'assets/icons/menu_profile.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Notifications',
              svgSrc: 'assets/icons/menu_notification.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Settings',
              svgSrc: 'assets/icons/menu_setting.svg',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);
  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
