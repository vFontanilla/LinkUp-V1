import 'package:flutter/material.dart';
import 'package:link_up_v1/screens/onboarding_screens.dart';
import 'package:link_up_v1/core/supabase_config.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SupabaseConfig.initialize();  // Call initialization here
  runApp(const LinkUpApp ());
}

class LinkUpApp  extends StatelessWidget {
  const LinkUpApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LinkUp',
      theme: ThemeData(
        fontFamily: 'Arial',
        scaffoldBackgroundColor: const Color(0xFF4C8D85), // Greenish background
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}
