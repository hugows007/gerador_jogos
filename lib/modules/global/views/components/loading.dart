import 'package:flutter/material.dart';

class LoadingComponent extends StatelessWidget {
  const LoadingComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Color(0xff058ce1),
        backgroundColor: Colors.white,
      ),
    );
  }
}
