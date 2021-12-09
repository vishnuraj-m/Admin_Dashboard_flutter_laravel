import 'package:flutter/material.dart';
import 'package:ftc_admindashboard/screens/dashboard/screen_dashboard.dart';

import 'components/side_menu.dart';

class ScreenMain extends StatelessWidget {
  const ScreenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(
              flex: 1,
              child: SideMenu(),
            ),
            Expanded(
              flex: 5,
              child: ScreenDashboard(),
            ),
          ],
        ),
      ),
    );
  }
}
