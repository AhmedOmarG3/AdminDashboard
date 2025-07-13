import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive_dashboard/core/utils/app_images.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(AppImages.imagesFrame),
      title: Text(
        'Lekan Okeowo',
        style: AppStyles.styleRegular16(
          context,
        ).copyWith(color: const Color(0xFF064061)),
      ),
      subtitle: Text(
        'demo@gmail.com',
        style: AppStyles.styleRegular16(
          context,
        ).copyWith(color: const Color(0xFFAAAAAA)),
      ),
    );
  }
}
