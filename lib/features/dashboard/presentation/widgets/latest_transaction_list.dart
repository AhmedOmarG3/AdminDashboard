import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/app_images.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/user_info_model.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/user_info_list_tile.dart';

class LatestTransactionList extends StatelessWidget {
  const LatestTransactionList({super.key});
  static final List<UserInfoModel> items = [
    UserInfoModel(
      imageUrl: AppImages.imagesFrame,
      subtitle: 'demo@gmail.com',
      title: 'Lekan Okeowo',
    ),
    UserInfoModel(
      imageUrl: AppImages.imagesFrame2,
      subtitle: 'Josh Nunito@gmail.com',
      title: 'Josua Nunito',
    ),
    UserInfoModel(
      imageUrl: AppImages.imagesFrame,
      subtitle: 'demo@gmail.com',
      title: 'Lekan Okeowo',
    ),
    UserInfoModel(
      imageUrl: AppImages.imagesFrame2,
      subtitle: 'Josh Nunito@gmail.com',
      title: 'Josua Nunito',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
            )
            .toList(),
      ),
    );
  }
}
