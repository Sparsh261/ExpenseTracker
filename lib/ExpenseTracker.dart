
import 'package:expensetracker/ExpenseList.dart';
import 'package:expensetracker/Model/Expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpenseTracker extends StatelessWidget{

  List<Expense> registeredExpenses = [
    Expense(title : "Meeting", amount : 402 ,date : DateTime.now(), category: Category.Work),
    Expense(title : "Food", amount : 402 ,date : DateTime.now(), category: Category.Food),
  ];

  @override
  Widget build(BuildContext context) {
    
    return(Scaffold(body: Column(
      children: [
        Text("ExpenseTracker"),
        Expanded(child: ExpenseList(expenses : registeredExpenses))
      ],
    )));
  }
}