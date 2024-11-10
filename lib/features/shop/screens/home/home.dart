//import


import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/common/widgets/custom_shape/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgets/custom_shape/containers/search_container.dart';
import 'package:e_commerce/common/widgets/images/t_rounded_images.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return   Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ThomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  TSearchContainer(text: 'Search in store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(title: 'Popular Categories',showActionButton: false, textColor: Colors.white),
                        SizedBox(height: TSizes.spaceBtwItems),

                        //categories
                        THomeCategories(),
                      ],
                    ),
                  )

                ],
              ),
            ),

            //Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 0.8
                ),
                items: [
                  TRoundedImage(imageUrl: TImages.promoBanner3),
                ],)
            )
          ],
        ),
      ),
    );
  }
}


