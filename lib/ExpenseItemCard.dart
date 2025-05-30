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
            Text(expense.title),
            Text("Amount : " + expense.amount.toString()),
            Text(expense.category.toString()),
            Text(expense.date.toString()),
          ],
        ),
      )
    );
  }

}