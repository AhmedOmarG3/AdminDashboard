import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/app_images.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/user_info_model.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/all_expenses.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_background_container.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_drwar.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/quick_invoice_header.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/user_info_list_tile.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrwar()),

        Expanded(
          flex: 3,
          child: Column(children: [AllExpenses(), OuickInvoice()]),
        ),

        Expanded(flex: 2, child: Container(color: Colors.red)),
      ],
    );
  }
}

class OuickInvoice extends StatelessWidget {
  const OuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 20),
          LatestTransactionSection(),
        ],
      ),
    );
  }
}

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transactions', style: AppStyles.styleMedium16(context)),
        SizedBox(height: 12),
        LatestTransactionListView(),
      ],
    );
  }
}

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
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
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            IntrinsicWidth(child: UserInfoListTile(userInfoModel: items[index])),
        itemCount: items.length,
      ),
    );
  }
}
