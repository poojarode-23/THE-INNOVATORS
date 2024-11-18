
import 'package:flutter/material.dart';
import 'package:healthcare_app/Editscreen.dart';
import 'package:healthcare_app/ReportPage.dart';
import 'package:healthcare_app/SignUpPage.dart';
import 'package:healthcare_app/SignUpPageUI.dart';
import 'package:healthcare_app/book.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildProfileHeader(),
          const SizedBox(height: 20),
          _buildProfileOption(context, 'Edit Profile', EditProfileScreen()),
          _buildProfileOption(context, 'Report',HealthDashboard() ),
          _buildProfileOption(context, 'Settings', null),
          _buildProfileOption(context, 'Orders', null),
          _buildProfileOption(context, 'Payment and HealthCash', null),
          _buildProfileOption(context, 'Read about Health', null),
          _buildProfileOption(context, 'Help Center', null),
          _buildLogoutOption(context,'Logout',const SignUpPage()),
        ],
      ),
    );
  }

  Widget _buildProfileHeader() {
    return const Center(
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/profile.jpg'), // Add image path here
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'johndoe@example.com',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProfileOption(BuildContext context, String title, Widget? screen) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        if (screen != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        } else {
          // Add alternative action or show message if needed
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('$title is not available yet')),
          );
        }
      },
    );
  }
}
 Widget _buildLogoutOption(BuildContext context, String s, SignUpPage signUpPage) {
    return ListTile(
      title: const Text('Logout'),
      trailing: const Icon(Icons.logout),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Logout'),
              content: const Text('Are you sure you want to log out?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: const Text('Logout'),
                ),
              ],
            );
          },
        );
      },
    );
  }
