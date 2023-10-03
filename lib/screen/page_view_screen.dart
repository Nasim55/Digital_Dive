import 'package:digital_dive/screen/choice_register_type.dart';
import 'package:digital_dive/widgets/page_view.dart';
import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

int pageView = activePage;

class _PageViewScreenState extends State<PageViewScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Offset> animation;

  @override
  void initState() {
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    animation = Tween<Offset>(
            begin: const Offset(0.0, 0.1), end: const Offset(0.0, 0.5))
        .animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    super.initState();
  }

  final PageController _controllerPV = PageController(initialPage: 0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: PageView(
          allowImplicitScrolling: true,
          controller: _controllerPV,
          children: [
            NewPageView(
              image: Hero(tag: 'LOGO', child: Image.asset('images/logo.png')),
              title: 'Diving and swim',
              description:
                  'This App for people Greatly interested in technologies and digital matters',
              activePageView: 0,
            ),
            NewPageView(
              image: Image.asset('images/books2.gif'),
              title: 'Books',
              description:
                  'This App for people Greatly interested in technologies and digital matters',
              activePageView: 1,
            ),
            NewPageView(
              image: Image.asset('images/digital1.gif'),
              title: 'Digital',
              description:
                  'This App for people Greatly interested in technologies and digital matters',
              activePageView: 2,
            ),
            NewPageView(
              image: Image.asset('images/technical1.gif'),
              title: 'Technical',
              description:
                  'This App for people Greatly interested in technologies and digital matters',
              activePageView: 3,
            ),
          ],
        ),
      ),
    );
  }
}
