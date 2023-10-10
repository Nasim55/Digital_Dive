import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class PreferredSizeBar extends StatelessWidget {
  const PreferredSizeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
        gradient: LinearGradient(
          colors: [
            Colors.blueGrey,
            Colors.blueAccent,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),
              style: ButtonStyle(
                iconSize: MaterialStateProperty.all(60),
              ),
            ),
          ),
          const Positioned(
            top: 50,
            right: 10,
            child: Icon(Icons.list, color: Colors.white, size: 40,),

          ),
          Positioned(
            left: 10,
            bottom: 80,
            child: DefaultTextStyle(
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontFamily: 'CroissantOne'),
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('Login'),
                  TyperAnimatedText('signUp'),
                ],
                repeatForever: true,
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 10,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontFamily: 'CroissantOne',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('Login Start using app,'),
                  TyperAnimatedText('Or signUp If you don\'t have account,'),
                ],
                repeatForever: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
