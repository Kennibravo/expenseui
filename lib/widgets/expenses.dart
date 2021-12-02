import 'package:complex_ui/data.dart';
import 'package:complex_ui/widgets/pie_chart.dart';
import 'package:flutter/material.dart';

class ExpensesSection extends StatelessWidget {
  const ExpensesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Text(
            'Expenses',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: expenses
                      .map(
                        (expense) => Padding(
                          padding: const EdgeInsets.all(4),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor:
                                    pieColors[expenses.indexOf(expense)],
                              ),
                              const SizedBox(width: 5),
                              Text(
                                expense['name'].toString(),
                                style: const TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            const Expanded(
              flex: 6,
              child: PieChart(),
            ),
          ],
        ),
      ],
    );
  }
}
