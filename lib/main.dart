import 'package:flutter/material.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 21, 158, 106),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('Profile-vannarith.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              "Hi I'm ",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              "Nay Sovannarith",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "Developer",
              style: TextStyle(fontSize: 22, color: Colors.white70),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Collaborating with highly skilled individuals, our agency delivers top-quality services.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Action for Hire Me
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 160, 164, 175),
                foregroundColor: const Color.fromARGB(255, 28, 31, 173),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text("Hire Me!"),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                // Action for Download CV
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.white),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Download CV"),
                  SizedBox(width: 5),
                  Icon(Icons.download, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
