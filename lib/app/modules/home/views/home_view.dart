import 'package:flutter/material.dart';
import 'package:flutter_game/app/core/config/app_colors.dart';
import 'package:flutter_game/app/core/constants/app_assets.dart';
import 'package:flutter_game/app/modules/home/widgets/banner_carousel.dart';

import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widgets/circle_icon_button.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
   HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            searchTextField,
            const SizedBox(height: 16.0),
            const BannerCarousel(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: controller.categories.map((category) {
                return GestureDetector(
                  onTap: () => controller.selectCategory(category),
                  child: Obx(() => Text(
                    category,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: controller.selectedCategory.value == category
                          ? Colors.blue
                          : Colors.black,
                    ),
                  )),
                );
              }).toList(),
            ),
            const SizedBox(height: 16.0),
            // Subcategory selection row based on selected main category
            Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: controller.subcategories[controller.selectedCategory.value]!
                  .map((subcategory) {
                return GestureDetector(
                  onTap: () => controller.selectSubcategory(subcategory),
                  child: Text(
                    subcategory,
                    style: TextStyle(
                      fontSize: 14,
                      color: controller.selectedSubcategory.value == subcategory
                          ? Colors.blue
                          : Colors.black,
                    ),
                  ),
                );
              }).toList(),
            )),
            const SizedBox(height: 16.0),
            // Display selected category and subcategory
            Obx(() => Center(
              child: Text(
                'Selected Category: ${controller.selectedCategory.value}, '
                    'Subcategory: ${controller.selectedSubcategory.value}',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
            )),
          ],
        ),
      ),
    );
  }

  TextField get searchTextField {
    return TextField(
            decoration: InputDecoration(
              hintText: 'search',
              filled: true,
              fillColor: AppColors.textFieldOutlineColor,
              prefixIcon: Icon(
                Icons.search_outlined,
                color: AppColors.iconColor,
              ),
              suffixIcon: IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.clear,
                    color: AppColors.iconColor,
                  )),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8)),
            ),
          );
  }

  AppBar get appBar {
    return AppBar(
      title: SvgPicture.asset(AppAssets.logo),
      actions: [
        CircleIconButton(
          onTap: () {},
          iconData: Icons.search_outlined,
        ),
        const SizedBox(width: 8.0),
        CircleIconButton(
          onTap: () {},
          iconData: Icons.person,
        ),
        const SizedBox(width: 8.0),
        CircleIconButton(
          onTap: () {},
          iconData: Icons.notifications_outlined,
        ),
        const SizedBox(width: 8.0),
      ],
      centerTitle: false,
    );
  }
}
