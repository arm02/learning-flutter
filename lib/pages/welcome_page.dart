import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning/widgets/app_large_text.dart';
import 'package:learning/widgets/app_text.dart';
import 'package:learning/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "baymax.jpg",
    "baymax-robot.jpg",
    "angkasa.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "img/"+images[index]
                    ),
                    fit: BoxFit.cover
                )
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Baymax"),
                        AppText(text: "Doctor", size: 30),
                        SizedBox(height: 20),
                        Container(
                          width: 250,
                          child: AppText(
                            text: "Mountain hikes give you an incredible sense of freedom along with endurance tests",
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                        SizedBox(height: 40),
                        ResponsiveButton(width: 210)
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots){
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index==indexDots?25:8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index==indexDots?Colors.white : Colors.white70,
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
      }),
    );
  }
}