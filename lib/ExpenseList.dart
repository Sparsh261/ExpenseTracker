
import 'package:expensetracker/ExpenseItemCard.dart';
import 'package:expensetracker/Model/Expense.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {

  List<Expense> expenses;

  final void Function(Expense) onRemoveExpense;

  ExpenseList({required this.expenses,
    required this.onRemoveExpense,
  });

  @override
  Widget build(BuildContext context) {
    return(
      ListView.builder( 
      itemCount: expenses.length, 
      itemBuilder: (context, index) => Dismissible(
            key: ValueKey(expenses[index]),
            child: ExpenseItemCard(expense : expenses[index]),
            onDismissed: (direction) {
              onRemoveExpense(expenses[index]);
            },
          ),
      )
    );
  }
}