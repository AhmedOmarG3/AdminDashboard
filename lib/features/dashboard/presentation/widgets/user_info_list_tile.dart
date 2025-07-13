import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });
  final String title, subtitle, imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(imageUrl),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16(
            context,
          ).copyWith(color: const Color(0xFF064061)),
        ),
        subtitle: Text(
          subtitle,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: const Color(0xFFAAAAAA)),
        ),
      ),
    );
  }
}
