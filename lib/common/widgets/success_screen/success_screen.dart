import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight*2,
          child:  Column(
            children: [
              //image
              Image(
                    image:  AssetImage(
                     image,
                    ),
                    width: THelperFunctions.screenWidth()*0.6,
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
            
                // Title & subtitle
                Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                const SizedBox(height: TSizes.spaceBtwSections),
                 
                Text(subtitle,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
                const SizedBox(height: TSizes.spaceBtwSections), 

                //button
                SizedBox(
                  width: double.infinity, child: ElevatedButton(onPressed: ()=>Get.to(()=> const LoginScreen()), child: const Text(TTexts.tContinue)),
                ), 

            ],
          ),
        ),
      )

    );
  }
}