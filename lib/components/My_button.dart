import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void  Function()? onTap;
  const MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromRGBO(198, 124, 78, 100),
            borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Text(
            text,
            style:
                const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
