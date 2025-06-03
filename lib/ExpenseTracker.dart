import 'package:expensetracker/NewExpense.dart';
import 'package:expensetracker/ExpenseList.dart';
import 'package:expensetracker/Model/Expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpenseTracker extends StatefulWidget {
  @override
  State<ExpenseTracker> createState() {
    return ExpensetrackerState();
  }
}

class ExpensetrackerState extends State<ExpenseTracker> {
  List<Expense> registeredExpenses = [
    Expense(
      title: 'Flutter',
      amount: 5.25,
      date: DateTime.now(),
      category: Category.Work,
    ),
  ];

  void openExpenseAdderOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (context) => NewExpense(onAddExpense: addExpense),
    );
  }

  addExpense(Expense expense) {
    setState(() {
      registeredExpenses.add(expense);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Expense Added"), duration: Duration(seconds: 2)),
    );
  }

  removeExpense(Expense expense) {
    setState(() {
      registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Expense Deleted"),
      duration: Duration(seconds: 2),
      action: SnackBarAction(
        label: "undo", onPressed: (){   
          setState(() {
      registeredExpenses.add(expense);
    });
        }
        ))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EXPENSE TRACKER'),
        actions: [
          IconButton(
            onPressed: openExpenseAdderOverlay,
            icon: Icon(Icons.add)),
        ],
      ),
      body: Column(
        children: [
          Text('EXPENSE'),
          Expanded(
            child: ExpenseList(
              expenses: registeredExpenses,
              onRemoveExpense: removeExpense,
            ),
          ),
        ],
      ),
    );
  }
}
