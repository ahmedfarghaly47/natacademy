import 'package:natacademy/globals.dart';
import 'package:natacademy/pages/registration_page.dart';
import 'package:natacademy/widgets/my_buton.dart';
import 'package:natacademy/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  static String id = 'LoginPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset(
              'assets/images/logo.jpg',
              height: 120,
            ),
            // const Text(
            //   'Natatif Academy',
            //   style: TextStyle(
            //     fontFamily: 'calibri',
            //     fontSize: cardTitleSize,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            const Spacer(
              flex: 1,
            ),
            const Text(
              'Login',
              style: TextStyle(
                fontFamily: 'calibri',
                fontSize: cardTitleSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              hintText: 'Mobile',
            ),
            const SizedBox(
              height: 5,
            ),
            MyTextField(
              hintText: 'Password',
            ),
            const SizedBox(
              height: 10,
            ),
            MyButon(
              btnText: 'Login',
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  ' do`t have an account ',
                  style: TextStyle(color: Colors.black87),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, RegistrationPage.id);
                  },
                  child: const Text(
                    'Restrater here',
                    style: TextStyle(color: Color.fromARGB(255, 160, 15, 5)),
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 6,
            ),
          ],
        ),
      ),
    );
  }
}
