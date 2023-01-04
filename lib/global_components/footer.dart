import 'package:flutter/material.dart';

class FooterComponent extends StatelessWidget {
  const FooterComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            height: 25,
            color: Colors.grey.withOpacity(0.2),
            child: Text(
              'Desenvolvido por Hugo Pimentel - ${DateTime.now().year}',
              style: const TextStyle(fontSize: 12),
            ),
          ),
        ),
      ],
    );
  }
}
