import 'package:e_commerce02/common/widgets/textfields/primary_search_bar.dart';
import 'package:e_commerce02/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:e_commerce02/features/shop/screens/home/widgets/home_categorys.dart';
import 'package:e_commerce02/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:e_commerce02/core/constants/all_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class HomeScreens extends ConsumerWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        //This is for the header container and the body container
        children: [
          SizedBox(height: AllSizes.primaryHeaderCircularContainerSize + 10),
          //This Is The Header Container
          PrimaryHeaderContainer(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //This is custom app bar
                  HomeAppBar(),
                  SizedBox(height: AllSizes.spaceBtwSections),
                  //This is Home Categories Section
                  HomeCategorys(),
                ],
              ),
            ),
          ),
          //This is primary header search bar section
          PrimarySearchBar(),
        ],
      ),
    );
  }
}