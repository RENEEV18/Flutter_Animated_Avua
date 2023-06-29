import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors/colors.dart';
import 'package:flutter_application_1/utils/const/const.dart';
import 'package:flutter_application_1/view/home_screen/widgets/conatiner_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.baseColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: AppColors.kWhite,
          ),
        ),
        title: Text(
          "shoexpress".toUpperCase(),
          style: const TextStyle(
            color: AppColors.kWhite,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: AppColors.kWhite,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.baseColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FadeInUp(
                        duration: const Duration(seconds: 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "sprots shoes".toUpperCase(),
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: AppColors.kWhite,
                              ),
                            ),
                            const Text(
                              "Men's collection",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: AppColors.kWhite,
                              ),
                            ),
                            const Text(
                              "Find your true style with shoexpress\nand explore the variety of playful,\ncolourful designs!",
                              style: TextStyle(
                                fontSize: 11,
                                color: AppColors.kWhite,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: AppColors.kBlack.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Row(
                                children: [
                                  SizedBox(
                                    width: 2,
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: AppColors.kWhite,
                                    child: Icon(
                                      Icons.play_arrow_outlined,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Shop now",
                                    style: TextStyle(
                                      color: AppColors.kWhite,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Container(
                          height: 300,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: const BoxDecoration(
                            color: AppColors.baseColor,
                          ),
                          child: CarouselSlider.builder(
                            itemCount: 10,
                            itemBuilder: (context, index, realIndex) {
                              return Container(
                                height: 220,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/photo-1626947346165-4c2288dadc2a-removebg-preview.png"),
                                  ),
                                ),
                              );
                            },
                            options: CarouselOptions(
                              autoPlay: true,
                              scrollDirection: Axis.vertical,
                              aspectRatio: 3 / 4,
                            ),
                          ),
                        ),
                        const Positioned(
                          right: -100,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: CircleAvatar(
                              radius: 80,
                              backgroundColor: AppColors.kWhite,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            FadeInLeftBig(
              duration: const Duration(seconds: 2),
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(
                  color: AppColors.kWhite,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/Screenshot from 2023-06-29 12-46-04.png",
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 400,
              decoration: const BoxDecoration(
                color: AppColors.kWhite,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  FadeInUp(
                    duration: const Duration(seconds: 2),
                    child: Text(
                      "Popular right now".toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FadeInUp(
                    duration: const Duration(seconds: 2),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ContainerWidget(text: "Sneakers"),
                        ContainerWidget(text: "Sport Shoes"),
                        ContainerWidget(text: "Oxford"),
                        ContainerWidget(text: "Sale"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: FadeInLeft(
                      child: const Row(
                        children: [
                          Text(
                            "New Arrival",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: SizedBox(
                      height: 180,
                      child: ListView.separated(
                        itemCount: images.length,
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return FadeIn(
                            duration: Duration(seconds: 2),
                            child: Container(
                              width: 180,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    images[index],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 10,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /////
            Container(
              height: 350,
              width: double.infinity,
              color: AppColors.kWhite,
              child: Column(
                children: [
                  FadeIn(
                    duration: Duration(seconds: 2),
                    child: Text(
                      "our weekly pick".toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: FadeInUp(
                          duration: Duration(seconds: 2),
                          child: Container(
                            height: 235,
                            width: 180,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/images/Screenshot from 2023-06-29 14-19-21.png",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: FadeInRightBig(
                            duration: Duration(seconds: 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Nike- The Joyride",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "\$390",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: AppColors.kBlue,
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "Colour",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 10,
                                                  backgroundColor:
                                                      AppColors.kBlack,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                CircleAvatar(
                                                  radius: 10,
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 241, 80, 68),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    //

                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "Size",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 10,
                                                  backgroundColor:
                                                      AppColors.kBlue,
                                                  child: Text(
                                                    "41",
                                                    style: TextStyle(
                                                      color: AppColors.kWhite,
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                CircleAvatar(
                                                  radius: 10,
                                                  child: Text(
                                                    "42",
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "Reviews",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.favorite,
                                                  color: Colors.red,
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.favorite,
                                                  color: Colors.red,
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 80,
                                  width: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/images/Screenshot from 2023-06-29 14-45-47.png"),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 200,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.kBlue,
                                    ),
                                    child: const Text(
                                      "Buy now",
                                      style: TextStyle(
                                        color: AppColors.kWhite,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            ////
            FadeInLeftBig(
              duration: Duration(seconds: 2),
              child: Container(
                height: 200,
                width: double.infinity,
                color: AppColors.kBlue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "become a member and get 20% off".toUpperCase(),
                      style: const TextStyle(
                        color: AppColors.kWhite,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.kWhite,
                        ),
                        child: Text(
                          "start up for free now ->".toUpperCase(),
                          style: const TextStyle(
                            color: AppColors.kBlue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
