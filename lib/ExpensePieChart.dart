import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:expensetracker/Model/Expense.dart';

class ExpensePieChart extends StatelessWidget{

  final List<Expense> expenses;

  ExpensePieChart({required this.expenses});

   Map<Category, double> getCategoryTotals() {
    Map<Category, double> totals = {
      Category.Food: 0,
      Category.Leisure: 0,
      Category.Travel: 0,
      Category.Work: 0,
    };

    for (var expense in expenses) {
      totals[expense.category] = totals[expense.category]! + expense.amount;
    }

    return totals;
  }


  @override
  Widget build(BuildContext context) {

    final categoryTotals = getCategoryTotals();
    double sum = categoryTotals[Category.Work]! + categoryTotals[Category.Food]! + categoryTotals[Category.Leisure]! + categoryTotals[Category.Travel]!;
    print((categoryTotals[Category.Work]!/sum)*100);

      return(Container(
              child: PieChart(
                PieChartData(
                  sectionsSpace: 2,
                  // centerSpaceRadius: 40,
                  sections: [
                      PieChartSectionData(
                      color: Colors.blue,
                      value: (categoryTotals[Category.Work]!/sum)*100,
                      title: ((categoryTotals[Category.Work]!/sum)*100).toStringAsFixed(2)+"%",
                      radius: 60,
                      titleStyle: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                    ),                  
                      PieChartSectionData(
                      color: Colors.red,
                      value: (categoryTotals[Category.Travel]!/sum)*100,
                      title: ((categoryTotals[Category.Travel]!/sum)*100).toStringAsFixed(2)+"%",
                      radius: 60,
                      titleStyle: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                    ),                  
                      PieChartSectionData(
                      color: Colors.green,
                      value: (categoryTotals[Category.Leisure]!/sum)*100,
                      title: ((categoryTotals[Category.Leisure]!/sum)*100).toStringAsFixed(2)+"%",
                      radius: 60,
                      titleStyle: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                    ),                  
                      PieChartSectionData(
                      color: Colors.yellow,
                      value: (categoryTotals[Category.Food]!/sum)*100,
                      title: ((categoryTotals[Category.Food]!/sum)*100).toStringAsFixed(2)+"%",
                      radius: 60,
                      titleStyle: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                    ),                  
                  ],
                ),
              ),
            ));
  }
}