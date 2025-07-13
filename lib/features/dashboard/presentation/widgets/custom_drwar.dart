import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/app_images.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/drwar_item_model.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/drwar_items_list_view.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/user_info_list_tile.dart';

class CustomDrwar extends StatelessWidget {
  const CustomDrwar({super.key});
  static final List<DrwarItemModel> drwarItems = [
    DrwarItemModel(image: AppImages.imagesCategory2, title: 'Dashboard'),
    DrwarItemModel(image: AppImages.imagesConvertCard, title: 'Statistics'),
    DrwarItemModel(image: AppImages.imagesGraph, title: 'Wallet Account'),
    DrwarItemModel(image: AppImages.imagesChart2, title: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            imageUrl: AppImages.imagesFrame,
            subtitle: 'demo@gmail.com',
            title: 'Lekan Okeowo',
          ),
          SizedBox(height: 8),
          DrwarItemsListView(drwarItems: drwarItems),
        ],
      ),
    );
  }
}
