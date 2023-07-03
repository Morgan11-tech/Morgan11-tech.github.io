import 'package:flutter/material.dart';

import 'colors/colors.dart';
import 'colors/constants.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: AppColors.main,
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "data",
                        style: TextStyle(color: AppColors.paragraph),
                      ),
                      Text(
                        "data",
                        style: TextStyle(color: AppColors.paragraph),
                      )
                    ],
                  ),
                  const Divider(),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Skills",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Expanded(
                          child: ProgressField(
                        percentage: 0.8,
                        label: "flutter",
                      )),
                      SizedBox(width: defaultPadding),
                      Expanded(
                          child: ProgressField(
                        percentage: 0.8,
                        label: "flutter",
                      )),
                      SizedBox(width: defaultPadding),
                      Expanded(
                          child: ProgressField(
                        percentage: 0.8,
                        label: "flutter",
                      )),
                    ],
                  ),
                  //
                  const SizedBox(height: defaultPadding),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding),
                        child: Text(
                          "Other",
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ),
                      const AnimatedLinearProgressIndicator(
                        percentage: 0.7,
                        label: "Dart",
                      ),
                      const SizedBox(height: defaultPadding),

                      const AnimatedLinearProgressIndicator(
                        percentage: 0.7,
                        label: "Dart",
                      ),
                      const SizedBox(height: defaultPadding),

                      const AnimatedLinearProgressIndicator(
                        percentage: 0.7,
                        label: "Dart",
                      ),
                      const SizedBox(height: defaultPadding),

                      const AnimatedLinearProgressIndicator(
                        percentage: 0.7,
                        label: "Dart",
                      ),
                    ],
                  ),
                  Divider(),
                  TextButton(onPressed: (){},
                      child: FittedBox(
                        child: Row(
                          children: const [
                            Text("DOWNLOAD CV"),
                          ],
                        //  SOME DOWNLOAD ICON
                        ),
                      ),
                  ),
                  Container(
                   // some social media Icons
                   ),
                ],
              ),
            ))
          ],
        ));
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key, required this.percentage, required this.label,
  }) : super(key: key);
  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(label,style: Theme.of(context).textTheme.subtitle2,),
                Text("${(value * 100).toInt()}%",),
              ],
            ),
            const SizedBox(height: defaultPadding/2,),
            LinearProgressIndicator(
              value: value,
              color: AppColors.stroke,
              backgroundColor: AppColors.main,
            ),
          ],
        ),
      ),
    );
  }
}

class ProgressField extends StatelessWidget {
  const ProgressField({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);
  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: AppColors.stroke,
                  backgroundColor: AppColors.main,
                ),
                Center(
                  child: Text(
                    "${(value * 100).toInt()}%",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
