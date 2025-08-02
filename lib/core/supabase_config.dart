// lib/core/supabase_config.dart
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseConfig {
  static Future<void> initialize() async {
    await Supabase.initialize(
      url: 'https://nntvydcfcmvoxmsuzwno.supabase.co',  
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5udHZ5ZGNmY212b3htc3V6d25vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTAzNjM0ODksImV4cCI6MjA2NTkzOTQ4OX0.ZxHcOPYOmr6rG334Krf1zNm6LDjY_f2J3e0qZnNT4F4',             
    );
  }

  static SupabaseClient get client => Supabase.instance.client;
}
