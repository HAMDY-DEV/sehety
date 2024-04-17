import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sehety/core/util/colors.dart';
import 'package:sehety/core/util/text_style.dart';
import 'package:sehety/core/widget/custom_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            width: double.infinity,
            'assets/images/welcome-bg.png',
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 60,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'اهلا بيك',
                  style: getTextStyle(context,
                      fontSize: 30, color: AppColors.primaryColor),
                ),
                const Text('سجل واحجز عند دكتورك وانت فالبيت'),
              ],
            ),
          ),
          Positioned(
              bottom: 60,
              left: 15,
              right: 15,
              child: Container(
                // height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [AppColors.primaryColor, AppColors.greyColor],
                        end: Alignment.topCenter,
                        begin: Alignment.bottomCenter),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    const Gap(20),
                    Text(
                      'سجل دلوقتي كـ',
                      style: getBodyStyle(context, color: AppColors.whiteColor),
                    ),
                    const Gap(50),
                    CustomButton(
                      height: 70,
                      width: 330,
                      text: 'دكتور',
                      onPressed: () {},
                    ),
                    const Gap(15),
                    CustomButton(
                      height: 70,
                      width: 330,
                      text: 'مريض',
                      onPressed: () {},
                    ),
                    const Gap(15),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
