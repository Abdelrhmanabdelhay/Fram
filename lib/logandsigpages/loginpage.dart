import 'package:app10/HomePage/home.dart';
import 'signup.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginScreen extends StatefulWidget {
  final String? username;
  final String? pass;
  final String? ema;

  LoginScreen({this.username, this.pass, this.ema});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Set initial value to the username TextField
    _usernameController.text = widget.username ?? '';
    _passwordController.text = widget.pass ?? '';

    print('Initial username value: ${_usernameController.text}');
  }
  Future<void> _login() async {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Make API call
    var url = Uri.parse('https://elamzraa-farm-backend.vercel.app/api/auth/login');
    var headers = {
      'Content-Type': 'application/json',
      'api-key': '598551f4-f429-4263-a482-7e69fa14bcfa',
    };
    var body = json.encode({
      'username': username,
      'password': password,
      'role': 'user', // Assuming 'user' is a valid role expected by the server
    });

    var response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      // Login successful, navigate to home screen
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      // Handle error, show error message in Snackbar
      String errorMessage = 'Error: ${response.reasonPhrase}';
      print(errorMessage);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _usernameController, // Use controller to set value
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              onChanged: (value) {
                // You can capture the password here
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),

            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                SizedBox(width: 5),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
