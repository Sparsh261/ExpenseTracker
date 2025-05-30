
import 'package:expensetracker/Model/Expense.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {

  List<Expense> expenses;

  ExpenseList({required this.expenses});

  @override
  Widget build(BuildContext context) {
    return(
      ListView.builder( 
      itemCount: expenses.length, 
      itemBuilder: (context,index) => Text(expenses[index].title))
    );
  }
}