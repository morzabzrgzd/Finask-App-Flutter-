import 'package:finast_intro/constants/app_color.dart';
import 'package:finast_intro/controller/intro_ctrl.dart';
import 'package:finast_intro/start/start_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    var introCtrl = Get.put(IntroController());
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: Stack(
        alignment: Alignment.centerRight,
        children: [
          PageView.builder(
            controller: introCtrl.pageCtrl,
            onPageChanged: (value) {
              introCtrl.changePage(value);
            },
            itemCount: introCtrl.introImages.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    introCtrl.introImages[index],
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'SET YOUR\nFINANCIAL GOALS',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: AppColor.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Your goals will help us to formulate\nthe right recommendations for\nsuccess',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: AppColor.textColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            right: 15,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                introCtrl.introImages.length,
                (index) => Obx(
                  () => dot(
                    height: introCtrl.currentIndex.value == index ? 50 : 12,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 15,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.circleBtnShadowColor,
              ),
              child: ElevatedButton(
                onPressed: () {
                  if (introCtrl.currentIndex.value == 2) {
                    Get.to(() => const StartPage());
                  } else {
                    introCtrl.nextPage();
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  backgroundColor: AppColor.circleBtnColor,
                  shape: const CircleBorder(),
                  elevation: 0,
                  shadowColor: Colors.transparent,
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer dot({double? height}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(bottom: 5),
      height: height,
      width: 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColor.unSelectedDotColor,
      ),
    );
  }
}
