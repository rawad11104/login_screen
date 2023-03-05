// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:rawad/register_screen.dart';
import 'package:rawad/share/comp.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: Myclipper(),
              child: Container(
                color: const Color(0xF40B23FF),
                height: size.height / 3,
                child: const Center(
                  child: Text(
                    "login",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height / 10,
            ),
            MyTextFormField(
                TextInputType: TextInputType.emailAddress,
                lableText: 'Email',
                prefixIcon: Icons.email,
                padding: 15),
            MyTextFormField(
                TextInputType: TextInputType.visiblePassword,
                lableText: 'Password',
                prefixIcon: Icons.lock,
                padding: 15,
                obscureText: true),
            SizedBox(
              height: size.height / 10,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xF40B23FF),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15),
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                child: const Text(
                  "Login",
                )),
            SizedBox(
              height: size.height * 0.02,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Registerscreen();
                  }));
                },
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width / 4.4,
                        vertical: size.height / 60),
                    side: const BorderSide(
                      color: Color(0xF40B23FF),
                      width: 2,
                    ),
                    textStyle: const TextStyle(
                        fontSize: 20,
                        color: Color(0xF40B23FF),
                        fontWeight: FontWeight.bold)),
                child: const Text('Register'))
          ],
        ),
      ),
    );
  }
}
