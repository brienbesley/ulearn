import 'package:flutter/material.dart';
import 'package:education_app/screens/base_screen.dart'; // Import the base screen or any other screen you want to navigate to after login

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/ulearn.png', // Adjust the path to your logo
              width: 100, // Adjust the width as needed
              height: 100, // Adjust the height as needed
            ),
            const SizedBox(height: 20),
            Text(
              'Sign In',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement your sign-in logic here

                // For now, let's just navigate to BaseScreen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => BaseScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Background color
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}