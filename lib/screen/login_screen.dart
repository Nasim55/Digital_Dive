import 'package:flutter/material.dart';

import '../widgets/preferred_size.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(double.infinity, 100), child: PreferredSizeBar(),

      ),
      body: Container(

      ),
    );
  }
}
