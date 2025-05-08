import 'package:flutter/material.dart';

void main() {
  runApp(Adiffstore());
}

class Adiffstore extends StatelessWidget {
  const Adiffstore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adiffstore',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(
                  255,
                  216,
                  223,
                  224,
                ), // Warna teal/cyan di bagian atas
                Color.fromARGB(255, 42, 36, 43), // Warna ungu di bagian bawah
              ],
            ),
          ),
          child: Center(
            child: Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  // Username field
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Type your username",
                      prefixIcon: Icon(Icons.person_outline),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 103, 101, 101),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Password field
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText:
                          "Type your username", // Dalam gambar sebenarnya perlu diubah ke "Type your password"
                      prefixIcon: Icon(Icons.lock_outline),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Forgot password
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Login button
                  Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 15, 15, 15), // Teal/cyan
                          Color.fromARGB(255, 24, 23, 24), // Ungu
                        ],
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Or sign up text
                  Text(
                    "Or Sign Up using",
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                  SizedBox(height: 15),
                  // Social icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Facebook
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF3B5998), // Warna Facebook
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.facebook,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 15),
                      // Twitter
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF1DA1F2), // Warna Twitter
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 20,
                          ), // Ganti dengan Icons.flutter_dash atau lainnya
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 15),
                      // Google
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFDB4437), // Warna Google
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.g_mobiledata,
                            color: Colors.white,
                            size: 20,
                          ), // Sebaiknya gunakan icon google
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 15),
                      // Instagram
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF8A3AB9), // Warna Instagram
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.camera,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
