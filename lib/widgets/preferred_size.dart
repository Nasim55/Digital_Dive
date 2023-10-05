import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PreferredSizeBar extends StatelessWidget {
  const PreferredSizeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blueGrey,
            Colors.blueAccent,
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back),
              ),
              const Icon(Icons.person_3_sharp),
            ],
          ),
          Positioned(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/logo.png'),
                  scale: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
