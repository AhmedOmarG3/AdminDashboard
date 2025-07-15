import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});

  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.imageUrl),
        title: Text(
          userInfoModel.title,
          style: AppStyles.styleSemiBold16(
            context,
          ).copyWith(color: const Color(0xFF064061)),
        ),
        subtitle: Text(
          userInfoModel.subtitle,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: const Color(0xFFAAAAAA)),
        ),
      ),
    );
  }
}
