import 'package:flutter/material.dart';
import 'package:link_up_v1/screens/signup_screen.dart';
import 'package:link_up_v1/screens/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 3),

                RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: 'Link', style: TextStyle(color: Colors.white)),
                      TextSpan(text: '.Up', style: TextStyle(color: Color(0xFFFFD54F))),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                const Text(
                  'Where sports lovers meet, train, and thrive together.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 50),

                ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) => const LoginScreen(),
                  );
                },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Login', style: TextStyle(fontSize: 16)),
                ),

                const SizedBox(height: 16),

                ElevatedButton(
                  onPressed: () {
                    // Navigate to sign-up screen
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) => const SignupScreen(),
                    );                    
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: Colors.white24,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(color: Colors.white),
                    ),
                  ),
                  child: const Text('Create a new account', style: TextStyle(fontSize: 16)),
                ),
                
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
