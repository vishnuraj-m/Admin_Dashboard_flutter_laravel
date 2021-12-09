import 'package:flutter/material.dart';
import 'package:ftc_admindashboard/constants.dart';

import 'components/heder.dart';

class ScreenDashboard extends StatelessWidget {
  const ScreenDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              Header(),
              const SizedBox(
                height: defaultPadding * 1,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 500,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: defaultPadding * 1,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 500,
                      decoration: const BoxDecoration(
                        color: seconadaryColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
