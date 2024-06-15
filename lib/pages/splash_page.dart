import 'package:books_projects/pages/language_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, LanguagePage.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Container(
            height: 500,
            child: Column(
              children: [
                Container(
                  height: 160,
                  width: 160,
                  child: const Image(
                    image: AssetImage("assets/images/img_3.png"),
                  ),
                ),
                const Text(
                  "Foydali",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Nuqtalar",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                const Text(
                  "Shuxrat Xo'ja",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
