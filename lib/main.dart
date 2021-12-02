import 'package:complex_ui/data.dart';
import 'package:complex_ui/widgets/card_section.dart';
import 'package:complex_ui/widgets/expenses.dart';
import 'package:complex_ui/widgets/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            height: 120,
            child: const WalletHeader(),
          ),
          const Expanded(
            child: CardSection(),
          ),
          const Expanded(
            child: ExpensesSection(),
          ),
        ],
      ),
    );
  }
}
