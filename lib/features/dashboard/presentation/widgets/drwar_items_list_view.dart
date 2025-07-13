import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/drwar_item_model.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/drwar_item.dart';

class DrwarItemsListView extends StatelessWidget {
  const DrwarItemsListView({
    super.key,
    required this.drwarItems,
  });

  final List<DrwarItemModel> drwarItems;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) =>
            DrwarItem(drwarItemModel: drwarItems[index]),
        itemCount: drwarItems.length,
      ),
    );
  }
}
