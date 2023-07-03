import 'package:flutter/material.dart';
import 'package:mine/colors/colors.dart';
import 'package:mine/colors/constants.dart';
import 'package:mine/side_menu.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.children});
  final List<Widget> children;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
        body: Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: maxWidth),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 2,
              child: SideMenu(),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Column(
                  children:  [
                    ...widget.children,

                  ],
                ),
              )
            ),
          ],
        ),
      ),
    ));
  }
}


