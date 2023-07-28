import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  const Bubble({Key? key, required this.number, required this.correct})
      : super(key: key);

  final String number;
  final bool correct;

  @override
  build(BuildContext context) {
    var bubbleColor = correct ? Colors.green : Colors.red;

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
      child: (ClipOval(
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(color: bubbleColor),
          child: Center(
            child: Text(
              number,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      )),
    );
  }
}
