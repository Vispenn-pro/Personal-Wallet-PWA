import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {

  final String iconPath;
  final String buttonText;

  const ActionButton({Key? key, required this.iconPath, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // icon
        Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 20,
                spreadRadius: 1,
              )
            ]
          ),
          child: Center(
            child: Image.asset(iconPath),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          buttonText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]
          ),
        ),
      ],
    );
  }
}
