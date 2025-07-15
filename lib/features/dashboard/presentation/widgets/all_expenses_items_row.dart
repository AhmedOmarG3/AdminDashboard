import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/app_images.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/expenses_model.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/expenses_item.dart';

class AllExpensesItemsRow extends StatefulWidget {
  const AllExpensesItemsRow({super.key});

  @override
  State<AllExpensesItemsRow> createState() => _AllExpensesItemsRowState();
}

class _AllExpensesItemsRowState extends State<AllExpensesItemsRow> {
  int currentIndex = 0;
  final List<ExpensesModel> items = [
    ExpensesModel(
      image: AppImages.imagesMoneys,
      title: 'Balance',
      date: 'April 2022',
      amount: '\$20,129',
    ),
    ExpensesModel(
      image: AppImages.imagesCardReceive,
      title: 'Income',
      date: 'April 2022',
      amount: '\$20,129',
    ),
    ExpensesModel(
      image: AppImages.imagesCardSend,
      title: 'Expenses',
      date: 'April 2022',
      amount: '\$20,129',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ExpensesItem(
                expensesModel: item,
                isActive: e.key == currentIndex,
                onTap: () {
                  setState(() => currentIndex = index);
                },
              ),
            ),
          );
        } else {
          return Expanded(
            child: ExpensesItem(
              expensesModel: item,
              isActive: e.key == currentIndex,
              onTap: () {
                setState(() => currentIndex = index);
              },
            ),
          );
        }
      }).toList(),
    );
  }
}