import 'package:flutter/material.dart';
import 'package:link_up_v1/screens/onboarding_screens.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://nntvydcfcmvoxmsuzwno.supabase.co', // 🔴 Replace this
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5udHZ5ZGNmY212b3htc3V6d25vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTAzNjM0ODksImV4cCI6MjA2NTkzOTQ4OX0.ZxHcOPYOmr6rG334Krf1zNm6LDjY_f2J3e0qZnNT4F4',               // 🔴 Replace this
  );

  runApp(const StudyDoApp());
}

class StudyDoApp extends StatelessWidget {
  const StudyDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'study.do',
      theme: ThemeData(
        fontFamily: 'Arial',
        scaffoldBackgroundColor: const Color(0xFF4C8D85), // Greenish background
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}
