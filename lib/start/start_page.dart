import 'package:finast_intro/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Welcome to',
                textAlign: TextAlign.right,
                style: GoogleFonts.poppins(
                  color: AppColor.textColor,
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 0),
                child: Text(
                  'Finask',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.poppins(
                    color: AppColor.primeryColor,
                    fontSize: 30,
                  ),
                ),
              ),
              Text(
                'App thet will help you\nto properly manage\nyout finances',
                textAlign: TextAlign.right,
                style: GoogleFonts.poppins(
                  color: AppColor.textColor,
                  fontSize: 15,
                ),
              ),
              Image.asset('assets/icons/Saly0.png'),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    backgroundColor: AppColor.btnColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Get Started',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.poppins(
                      color: AppColor.btnTextColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
