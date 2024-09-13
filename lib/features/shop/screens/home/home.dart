import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import '../../../../common/image_text_carosel/vertical_img_text.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///AppBar
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Searchbar
                  const TSearchContainer(text: 'Search in store'),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace, right: TSizes.spaceBtwItems),
                    child: Column(
                      children: [
                        const TSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false, textColor: TColors.white),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        /// Categories
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 8,
                            itemBuilder: (_, index) {
                              return TVerticalImageWithText(image: TImages.shoeIcon, title: 'Shoes', onTap: (){});
                            },
                            scrollDirection: Axis.horizontal,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


