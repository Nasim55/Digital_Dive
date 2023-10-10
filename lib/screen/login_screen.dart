import 'package:flutter/material.dart';

import '../widgets/preferred_size.dart';

class LoginScreen extends StatefulWidget {
  static const routeNamed = 'LoginScreen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 230),
        child: PreferredSizeBar(),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20, top: 80, right: 20),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isLogin ? 'SignUp' : 'Login',
                style: const TextStyle(color: Colors.blueAccent, fontSize: 30),
                textAlign: TextAlign.start,
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'yourEmail@Example.com',
                  label: Text("Email"),
                ),
                validator: (value) {},
              ),
              const SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                controller: _passController,
                decoration: const InputDecoration(
                  hintText: '*******',
                  label: Text("Password"),
                ),
                validator: (value) {
                  return null;
                },
              ),
              isLogin
                  ? AnimatedContainer(
                      duration: const Duration(
                        milliseconds: 200,
                      ),
                      child: TextFormField(
                        obscureText: true,
                        controller: _passController,
                        decoration: const InputDecoration(
                          hintText: '*******',
                          label: Text("Confirm Password"),
                        ),
                        validator: (value) {
                          return null;
                        },
                      ),
                    )
                  : const SizedBox(
                      width: 0,
                      height: 0,
                    ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: isLogin
                        ? Container()
                        : Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                          ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLogin ? isLogin = false : isLogin = true;
                  });
                },
                child: Text(isLogin ? 'I have an account' : 'Create Once'),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        isLogin ? 'Create Acc' : 'Start',
                        style:
                            const TextStyle(fontSize: 26, color: Colors.white),
                      ),
                      const SizedBox(width: 15),
                      Icon(
                        isLogin
                            ? Icons.create_new_folder_outlined
                            : Icons.next_week_outlined,
                        size: 26,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
