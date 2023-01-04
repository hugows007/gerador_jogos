import 'package:flutter/material.dart';

class ResultComponent extends StatelessWidget {
  final String number;

  const ResultComponent({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.green),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          number,
          style: const TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
