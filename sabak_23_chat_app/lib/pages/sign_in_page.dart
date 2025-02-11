import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sabak_23_chat_app/pages/chat_page.dart';
import 'package:sabak_23_chat_app/pages/sign_up_page.dart';
import 'package:sabak_23_chat_app/theme/text_styles.dart';
import 'package:sabak_23_chat_app/widgets/email_password_card.dart';
import 'package:sabak_23_chat_app/widgets/sign_in_button.dart';
import 'package:sabak_23_chat_app/widgets/with_platform_sign_in_button.dart';

class SignInPAge extends StatefulWidget {
  const SignInPAge({super.key});

  @override
  State<SignInPAge> createState() => _SignInPAgeState();
}

class _SignInPAgeState extends State<SignInPAge> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> signIn() async {
    try {
      await auth.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ChatPage()),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login failed: ${e.toString()}')),
      );
      print('Login failed: ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          spacing: 20,
          children: [
            Text(
              'Welcome Back',
              style: TextStyles.headings,
            ),
            Text(
              'Sign in to continue',
              style: TextStyles.bodyMedium,
            ),
            UserEmailPasswordCard(
              controller: emailController,
              labelText: 'Email',
              hintTextText: 'Enter your email',
            ),
            UserEmailPasswordCard(
              controller: passwordController,
              labelText: 'Password',
              hintTextText: 'Enter your password',
            ),
            SignInButton(text: 'Sign In', onPressed: signIn),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyles.bodySmall,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPAge()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyles.bodySmall.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
            Text('Or continue with'),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WithPlatformSignInButton(
                  text: 'Google',
                  image: 'assets/google.png',
                ),
                WithPlatformSignInButton(
                  text: 'Apple',
                  image: 'assets/apple.png',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
