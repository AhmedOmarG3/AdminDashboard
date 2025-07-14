import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/app_images.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/drwar_items_list_view.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/user_info_list_tile.dart';

class CustomDrwar extends StatelessWidget {
  const CustomDrwar({super.key});

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
          DrwarItemsListView(),
        ],
      ),
    );
  }
}
