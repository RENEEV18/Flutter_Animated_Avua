import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/home_controller/home_controller.dart';
import 'package:flutter_application_1/controller/splash_controller/splash_controller.dart';
import 'package:flutter_application_1/utils/colors/colors.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<SplashController, HomeController>(
      builder: (context, value, home, child) {
        return GestureDetector(
          onTap: () {
            value.changeColor();
          },
          child: AnimatedContainer(
            color: value.scaffoldColor,
            curve: Curves.easeInOut,
            duration: const Duration(seconds: 2),
            child: GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  FadeIn(
                    duration: const Duration(
                      seconds: 2,
                    ),
                    child: Container(
                      height: double.infinity,
                      width: MediaQuery.of(context).size.width / 2,
                      color: AppColors.kBlue.withOpacity(0.3),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 6,
                    left: 120,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: [
                          FadeInRightBig(
                            duration: const Duration(seconds: 2),
                            child:
                                CircleAvatar(backgroundColor: value.boxColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          AnimatedContainer(
                            duration: const Duration(seconds: 2),
                            height: 400,
                            width: 400,
                            decoration: BoxDecoration(
                              color: value.boxColor,
                              shape: BoxShape.circle,
                            ),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top:
                                        MediaQuery.of(context).size.height / 18,
                                    left: 130,
                                    child: const CircleAvatar(
                                      radius: 80,
                                      backgroundColor: AppColors.kWhite,
                                    ),
                                  ),
                                  FadeInDown(
                                    duration: const Duration(seconds: 2),
                                    child: ZoomIn(
                                      child: Spin(
                                        delay: const Duration(seconds: 2),
                                        child: const Image(
                                          image: AssetImage(
                                            "assets/images/photo-1626947346165-4c2288dadc2a-removebg-preview.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              FadeInUpBig(
                                duration: const Duration(seconds: 2),
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundColor: value.boxColor,
                                ),
                              ),
                              const SizedBox(
                                width: 150,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  FadeInLeft(
                    duration: const Duration(seconds: 2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: const AssetImage(
                              "assets/images/Screenshot_from_2023-06-28_15-59-30-removebg-preview.png",
                            ),
                            height: 200,
                            width: 200,
                            color: value.textColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  FadeInUp(
                    duration: const Duration(seconds: 2),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          onPressed: () {
                            home.toHomePage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: value.btnColor,
                          ),
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              color: value.btnTxtColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
