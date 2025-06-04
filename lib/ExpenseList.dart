import 'package:expensetracker/ExpenseItemCard.dart';
import 'package:expensetracker/Model/Expense.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  List<Expense> expenses;

  final void Function(Expense) onRemoveExpense;

  ExpenseList({required this.expenses, required this.onRemoveExpense});

  @override
  Widget build(BuildContext context) {
    if (expenses.length == 0) {
      return (Text("NO Expenses", style: TextStyle(color: Colors.red)));
    } else {
      return (Expanded(
        child: (ListView.builder(
          itemCount: expenses.length,
          itemBuilder:
              (context, index) => Dismissible(
                key: ValueKey(expenses[index]),
                background: Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  color: Theme.of(context).colorScheme.error,
                ),
                child: ExpenseItemCard(expense: expenses[index]),
                onDismissed: (direction) {
                  onRemoveExpense(expenses[index]);
                },
              ),
        )),
      ));
    }
  }
}
