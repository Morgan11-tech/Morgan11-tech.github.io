// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mine/colors/colors.dart';
import 'package:mine/colors/constants.dart';
import 'package:mine/main_page.dart';
import 'package:mine/responsive.dart';

import 'models/project.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainPage(children: [
      AspectRatio(
        aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/6.jpeg",
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Why don't you take a\nlook around?",
                      style: Responsive.isDesktop(context)
                          ? TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40)
                          : TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),
                  const SizedBox(height: defaultPadding),
                  if (!Responsive.isMobileLarge(context))
                    MaterialButton(
                      color: AppColors.button,
                      // Navigate from page to page
                      onPressed: () {},

                      child: const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Developer Portfolio",
                          style: TextStyle(color: AppColors.buttonText),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: defaultPadding),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(width: defaultPadding),
          Text(
            "My Projects",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: AppColors.paragraph,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
      const SizedBox(height: defaultPadding),
      Padding(
          padding: const EdgeInsets.only(
              right: defaultPadding, left: defaultPadding),

          // grid view list of projects
          child: Responsive(
            mobile: ProjectGridView(
              crossAxisCount: 1,
              childAspectRatio: 2,
            ),
            mobileLarge: ProjectGridView(
              crossAxisCount: 2,
            ),
            tablet: ProjectGridView(
              childAspectRatio: 1.1,
            ),
            desktop: ProjectGridView(),
          )),
    ]);
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: AppColors.stroke,
          borderRadius: BorderRadius.circular(3),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            demo_projects[index].title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(height: defaultPadding),
          Text(
            demo_projects[0].description,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: AppColors.background,
                fontSize: 15,
                fontWeight: FontWeight.w100),
          ),
          const SizedBox(height: defaultPadding/3),
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            onPressed: () {},
            child: Text(
              "Read More >>",
              style: TextStyle(color: AppColors.button),
            ),
          ),
          // const SizedBox(height: defaultPadding/3),
          // Row(
          //   children: [
          //     Container(
          //       padding: EdgeInsets.all(2),
          //       decoration: BoxDecoration(
          //         color: AppColors.background,
          //         borderRadius: BorderRadius.circular(3),
          //       ),
          //       child: Text(
          //         demo_projects[index].tag,
          //         style: TextStyle(
          //             fontSize: 6,
          //             fontWeight: FontWeight.bold,
          //             color: AppColors.buttonText),
          //       ),
          //     ),
          //   ],
          // ),
        ]),
      ),
    );
  }
}
