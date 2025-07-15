import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';

class ExpensesHeaderIcon extends StatelessWidget {
  const ExpensesHeaderIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Mounthly', style: AppStyles.styleMedium16(context)),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xff064061),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
