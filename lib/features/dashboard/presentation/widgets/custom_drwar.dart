import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/app_images.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/drwar_item_model.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/drwar_item.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/drwar_items_list_view.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/user_info_list_tile.dart';

class CustomDrwar extends StatelessWidget {
  const CustomDrwar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              imageUrl: AppImages.imagesFrame,
              subtitle: 'demo@gmail.com',
              title: 'Lekan Okeowo',
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrwarItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                DrwarItem(
                  drwarItemModel: DrwarItemModel(
                    image: AppImages.imagesSetting2,
                    title: 'Settings',
                  ),
                  isActive: false,
                ),
                DrwarItem(
                  drwarItemModel: DrwarItemModel(
                    image: AppImages.imagesLogout,
                    title: 'Logout',
                  ),
                  isActive: false,
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
