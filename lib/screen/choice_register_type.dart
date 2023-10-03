import 'package:digital_dive/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ChoiceRegisterType extends StatefulWidget {
  static const routeNamed = 'ChoiceRegisterType';

  final int activePage;

  const ChoiceRegisterType({super.key, required this.activePage});

  @override
  State<ChoiceRegisterType> createState() => _ChoiceRegisterTypeState();
}

class _ChoiceRegisterTypeState extends State<ChoiceRegisterType> {
  bool isAnimate = false;

  Future animations() async {
    setState(() => isAnimate = true);
    await Future.delayed(
      const Duration(milliseconds: 700),
    );
    setState(() => isAnimate = false);
  }

  @override
  void initState() {
    animations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            top: 40,
            left: isAnimate ? 40 : 80,
            duration: const Duration(milliseconds: 700),
            child: Transform.rotate(
              alignment: Alignment.topLeft,
              angle: 45,
              child: Container(
                margin: const EdgeInsets.only(bottom: 50),
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  gradient: LinearGradient(colors: [
                    Colors.blueGrey,
                    Colors.lightBlue,
                  ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 700),
            right: isAnimate ? 40 : 80,
            top: 10,
            child: Transform.rotate(
              alignment: Alignment.bottomRight,
              angle: 45,
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.deepOrange,
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom:isAnimate? -90 :0 ,
            child: AnimatedScale(
              duration: const Duration(milliseconds: 700),
              scale: isAnimate? 0.5: 1,
              child: Container(
                width: 410,
                height: 450,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                  color: Colors.blueAccent,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(microseconds: 700),
                      bottom: isAnimate ? 10 : 170,
                      width: 350,
                      height: 65,
                      child: AnimatedOpacity(
                        opacity: isAnimate ? 0 : 1,
                        duration: const Duration(milliseconds: 700),
                        child: CustomButton(
                          nameBtn: 'التسجيل كمعلم',
                          colors: const [
                            Colors.deepOrange,
                            Colors.deepOrangeAccent,
                          ],
                          onTap: () {},
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 700),
                      bottom: isAnimate ? 10 : 90,
                      width: 350,
                      height: 65,
                      child: AnimatedOpacity(
                        opacity: isAnimate ? 0 : 1,
                        duration: const Duration(milliseconds: 700),
                        child: CustomButton(
                          nameBtn: 'التسجيل كمستخدم',
                          colors: const [
                            Colors.white,
                            Colors.white54,
                          ],
                          onTap: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
