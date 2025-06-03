import 'package:expensetracker/Model/Expense.dart';
import 'package:flutter/material.dart';

class ExpenseItemCard extends StatelessWidget {

  final Expense expense;

  ExpenseItemCard({required this.expense});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(expense.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, letterSpacing: 2),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Amount : " + expense.amount.toString()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(expense.category.toString()),
                    Text(expense.date.toString()),
                  ],
                ),

              ],
            ),
            
          ],
        ),
      )
    );
  }

}