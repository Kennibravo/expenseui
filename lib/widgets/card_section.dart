import 'package:complex_ui/data.dart';
import 'package:complex_ui/widgets/card_details.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
          child: const Text(
            'Selected Card',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, i) => Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              decoration: BoxDecoration(
                color: primaryColor,
                boxShadow: customShadow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(children: [
                Positioned.fill(
                  top: 150,
                  bottom: -200,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: customShadow,
                      shape: BoxShape.circle,
                      color: Colors.white12,
                    ),
                  ),
                ),
                Positioned.fill(
                  left: -300,
                  top: -100,
                  bottom: -100,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: customShadow,
                      shape: BoxShape.circle,
                      color: Colors.white12,
                    ),
                  ),
                ),
                const CardDetails(),
              ]),
            ),
          ),
        )
      ],
    );
  }
}
