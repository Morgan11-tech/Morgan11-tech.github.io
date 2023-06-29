import 'package:flutter/material.dart';
import 'package:mine/colors/colors.dart';
class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Welcome to my world.",
                style: TextStyle(
                    color: AppColors.buttonText,
                  fontSize: 60,
                  fontWeight: FontWeight.bold
                ),),
              const SizedBox(height: 10,),
              const Text("Unleashing Innovation through design and code!",
                style: TextStyle(
                    color: AppColors.paragraph,
                    fontSize: 20,

                ),),
              const SizedBox(height: 20,),
              const Text(
                    "You've come to the right place 🤝\n\n"
                "I pride myself on my attention to detail, creative problem-solving\n"
                "abilities, and commitment to exceeding client expectations 🤩",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.paragraph,
                  fontSize: 15,
                  fontWeight: FontWeight.normal

                ),
              ),
              const SizedBox(height: 10,),
              const Text("Ps: Don't click this button if you don't want to be amazed",
                style: TextStyle(
                    color: AppColors.paragraph,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 30,),
              MaterialButton(
                color: AppColors.button,
                // Navigate from page to page
                onPressed: () =>
                  debugPrint("GJF"),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Developer Portfolio",
                    style: TextStyle(color: AppColors.buttonText),
                  ),
                ),
              ),

            ],



        );
  }
}
