import 'package:e_commerce/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.offAll(()=>const LoginScreen()), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
            
                //Animation
                  Image(
                    image: const AssetImage(
                      TImages.deliveredEmailIllustration,
                    ),
                    width: THelperFunctions.screenWidth()*0.6,
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
            
                // Title & subtitle
                Text(TTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                const SizedBox(height: TSizes.spaceBtwSections),
                Text('sample@gmail.com',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwSections),  
                Text(TTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
                const SizedBox(height: TSizes.spaceBtwSections),  

                //Buttons 
                SizedBox(
                  width: double.infinity, child: ElevatedButton(onPressed: ()=>Get.to(()=> SuccessScreen(image: TImages.staticSuccessIllustration, title: TTexts.yourAccountCreatedTitle, subtitle: TTexts.yourAccountCreatedSubTitle, onPressed: ()=> Get.to( ()=>const LoginScreen()))), child: const Text(TTexts.tContinue)),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),  
                SizedBox(
                  width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail)),
                ),


              ],
            ),
          ),
        ),
      )
    );
  }
}