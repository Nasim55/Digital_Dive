// ignore_for_file: must_be_immutable

import 'package:digital_dive/screen/choice_register_type.dart';
import 'package:flutter/material.dart';

int activePage = 0;

class NewPageView extends StatefulWidget {
  final Widget image;
  final String title;
  final String description;
  int activePageView = activePage;

  NewPageView({
    super.key,
    this.activePageView = 0,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  State<NewPageView> createState() => _NewPageViewState();
}

class _NewPageViewState extends State<NewPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 54.0,
              right: 20,
              left: 20,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blueGrey,
                  Colors.blueAccent,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  widget.image,
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          textBaseline: TextBaseline.alphabetic,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.description,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            right: 30,
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(ChoiceRegisterType.routeNamed);
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.centerLeft,
                width: 130,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    Text(
                      "Get Start",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 170,
            child: Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: widget.activePageView == 0
                        ? Colors.deepOrange
                        : Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: widget.activePageView == 1
                        ? Colors.deepOrange
                        : Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: widget.activePageView == 2
                        ? Colors.deepOrange
                        : Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: widget.activePageView == 3
                        ? Colors.deepOrange
                        : Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
