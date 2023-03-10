import 'package:flutter/material.dart';

class EmptyHomePlaceHolder extends StatelessWidget {
  const EmptyHomePlaceHolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/idea.png'),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Put your ideas in here',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
