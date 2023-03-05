import 'package:flutter/material.dart';
import 'package:rawad/share/comp.dart';

class Registerscreen extends StatelessWidget {
  const Registerscreen({super.key});

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
                    "Register",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height / 40,
            ),
            MyTextFormField(
                TextInputType: TextInputType.text,
                lableText: 'name',
                prefixIcon: Icons.person,
                padding: 15),
            MyTextFormField(
                TextInputType: TextInputType.number,
                lableText: 'phone number',
                prefixIcon: Icons.phone,
                padding: 15),
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
            MyTextFormField(
                TextInputType: TextInputType.visiblePassword,
                lableText: 'confirm Password',
                prefixIcon: Icons.lock,
                padding: 15,
                obscureText: true),
            SizedBox(
              height: size.height / 35,
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
