import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String nameBtn;
  final List<Color> colors;
  final Function() onTap;

  const CustomButton(
      {super.key, required this.nameBtn, required this.colors, required this.onTap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        alignment: Alignment.center,
        width: double.infinity,
        height: 80,
        padding: const EdgeInsets.symmetric(
            vertical: 10, horizontal: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        duration: const Duration(microseconds: 350),
        child: Text(
          nameBtn,
          style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
