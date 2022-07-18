import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ft3/helper/images.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int selectedIndex = 0;
  //counting the pages via the image
  final List<String> images = [
    KImages.img1,
    KImages.img2,
    KImages.img3,
  ];
  //the images imported from assets / pubspec yaml

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //safearea so image isn't on the top part of the phone, -
        // where the notifications and battery and time is.
        child: Column(
          children: [
            Container(
              height: 600,
              color: Colors.white,
              child: PageView.builder(
                itemCount: images.length,
                itemBuilder: (
                  context,
                  index,
                ) =>
                    Image.asset(
                  images[index],

                  //the top portion, being the image is what is coded above
                ),
                onPageChanged: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                  //counts value via image again.
                },
              ),
            ),
            SizedBox(
              height: 20.0,
              // container for the dots, page indicators
            ),
            Container(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: images
                    .asMap()
                    .entries
                    .map(
                      (MapEntry) => _buildDots(MapEntry.key),
                      // aligning the dots horizontaly
                    )
                    .toList(),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              height: 60,
              width: 120,
              alignment: Alignment.center,
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: selectedIndex == images.length - 1
                      ? Colors.white
                      : Colors.white,
                  //customising the button to be hidden until the end
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  letterSpacing: 1.2,
                  // get started button, alignment and customisation
                ),
              ),
              decoration: BoxDecoration(
                color: selectedIndex == images.length - 1
                    ? Colors.black
                    : Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDots(int index) {
    // int index states the current selected page
    return CircleAvatar(
      backgroundColor: selectedIndex == index
          ? Colors.black
          : Color.fromARGB(179, 36, 36, 36),
      //specifies the selected page's dot colour as purple, the rest are grey
      radius: 8.0,
      // the dots it self, behold my creation.
    );
  }
}
