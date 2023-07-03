import 'package:flutter/material.dart';

import 'colors/colors.dart';
class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        // color: AppColors.main,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Spacer(),
              const CircleAvatar(
                radius: 50,
                // backgroundImage: AssetImage("assets/images/profile.png"),
              ),
              const Spacer(),
              Text(
                "Nana Sarpong Morgan",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const Text(
                "Flutter Developer",
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.2,
                  fontWeight: FontWeight.w100
                ),
              ),
              const Spacer(flex: 2),
            ]),
      ),
    );
  }
}