import 'package:flutter/material.dart';

import '../../../../../common/image_text_carosel/vertical_img_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (_, index) {
          return TVerticalImageWithText(image: TImages.shoeIcon, title: 'Shoes', onTap: (){});
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
