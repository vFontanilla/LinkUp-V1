import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _bioController = TextEditingController();
  final _intentController = TextEditingController();
  String _selectedSkillLevel = 'Beginner';
  String _selectedSport = '';

  final List<String> _skillLevels = ['Beginner', 'Intermediate', 'Advanced'];
  final List<String> _sports = ['Basketball', 'Football', 'Tennis', 'Running'];

  @override
  void dispose() {
    _bioController.dispose();
    _intentController.dispose();
    super.dispose();
  }

  Future<void> _signOut() async {
    await Supabase.instance.client.auth.signOut();
    // Navigate to login or onboarding screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/deflogo.jpg'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: IconButton(
                        icon: const Icon(Icons.edit, color: Colors.teal),
                        onPressed: () {
                          // Upload photo logic here
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text('Shuvo Ahamed', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: () {},
                  child: const Text('See personal info', style: TextStyle(color: Colors.teal)),
                ),
              ],
            ),
          ),
          const Divider(),
          const Text('General', style: TextStyle(fontWeight: FontWeight.bold)),
          _buildListTile(Icons.sports, 'Sports', trailing: DropdownButton<String>(
            value: _selectedSport.isEmpty ? null : _selectedSport,
            hint: const Text('Select'),
            items: _sports.map((sport) => DropdownMenuItem(
              value: sport,
              child: Text(sport),
            )).toList(),
            onChanged: (value) => setState(() => _selectedSport = value!),
          )),
          _buildListTile(Icons.bar_chart, 'Skill Level', trailing: DropdownButton<String>(
            value: _selectedSkillLevel,
            items: _skillLevels.map((level) => DropdownMenuItem(
              value: level,
              child: Text(level),
            )).toList(),
            onChanged: (value) => setState(() => _selectedSkillLevel = value!),
          )),
          _buildListTile(Icons.info_outline, 'Bio', trailing: SizedBox(
            width: 200,
            child: TextField(
              controller: _bioController,
              decoration: const InputDecoration(hintText: 'Enter bio'),
            ),
          )),
          _buildListTile(Icons.flag, 'Intent', trailing: SizedBox(
            width: 200,
            child: TextField(
              controller: _intentController,
              decoration: const InputDecoration(hintText: 'Enter intent'),
            ),
          )),
          const Divider(),
          const Text('Others', style: TextStyle(fontWeight: FontWeight.bold)),
          _buildListTile(Icons.settings, 'Setting'),
          _buildListTile(Icons.help_outline, 'Help center'),
          _buildListTile(Icons.star_border, 'Rate our app'),
          _buildListTile(Icons.description, 'Term of service'),
          _buildListTile(Icons.privacy_tip_outlined, 'Privacy policy'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _signOut,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            child: const Text('Sign Out', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(IconData icon, String title, {Widget? trailing}) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(title),
      trailing: trailing ?? const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
