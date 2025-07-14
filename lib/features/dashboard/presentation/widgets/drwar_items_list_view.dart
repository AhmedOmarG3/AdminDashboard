import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/app_images.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/drwar_item_model.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/drwar_item.dart';

class DrwarItemsListView extends StatefulWidget {
  const DrwarItemsListView({super.key});

  @override
  State<DrwarItemsListView> createState() => _DrwarItemsListViewState();
}

class _DrwarItemsListViewState extends State<DrwarItemsListView> {
  int currentIndex = 0;
  final List<DrwarItemModel> drwarItems = [
    DrwarItemModel(image: AppImages.imagesCategory2, title: 'Dashboard'),
    DrwarItemModel(image: AppImages.imagesConvertCard, title: 'Statistics'),
    DrwarItemModel(image: AppImages.imagesGraph, title: 'Wallet Account'),
    DrwarItemModel(image: AppImages.imagesChart2, title: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => DrwarItem(
          drwarItemModel: drwarItems[index],
          isActive: index == currentIndex,
          onTap: () {
            if (index != currentIndex) {
              setState(() => currentIndex = index);
            }
          },
        ),
        itemCount: drwarItems.length,
      ),
    );
  }
}
