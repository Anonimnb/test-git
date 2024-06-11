import 'package:books_projects/pages/profil_page.dart';
import 'package:flutter/material.dart';

class SingUpPage extends StatefulWidget {
  static const String id = "sing_up-page";

  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 47),
            child: Center(
              child: Container(
                height: 56,
                width: 393,
                child: const Center(
                    child: Text(
                  "Ro'yxatdan o'tish",
                  style: TextStyle(fontSize: 20),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Container(
              height: 503,
              width: 353,
              child: Column(
                children: [
                  Container(
                    height: 56,
                    width: 353,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1),
                        color: Colors.white),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 90,
                        ),
                        Center(
                          child: Container(
                            height: 24,
                            width: 24,
                            child: const Image(
                              image: AssetImage("assets/images/google.png"),
                            ),
                          ),
                        ),
                        const Text(
                          "Google orqali kirish",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 56,
                    width: 353,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1),
                        color: Colors.white),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 90,
                        ),
                        Center(
                          child: Container(
                            height: 24,
                            width: 24,
                            child: const Image(
                              image: AssetImage("assets/images/apple.png"),
                            ),
                          ),
                        ),
                        const Text(
                          "Apple orqali kirish",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "Yoki",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 56,
                    width: 353,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 8, left: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Ismingiz"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 56,
                    width: 353,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 8, left: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Elektron Pochta"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 56,
                    width: 353,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 8, left: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Parol"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                      height: 56,
                      width: 353,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.orange),
                      child: const Image(image: AssetImage("assets/images/img_8.png"),)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 75),
                    child: Row(
                      children: [
                        const Text(
                          "Parofilingiz bormi?",
                          style: TextStyle(fontSize: 16),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, ProfilPage.id);
                            },
                            child: const Text(
                              "Kirish",
                              style: TextStyle(fontSize: 16,color: Colors.orange),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 162),
            child: Container(
                child: const Column(
              children: [
                Center(
                  child: Text(
                    "Ro'yxatdan o'tayotganda shaxsiy malumotlarni qayta ishlash",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Center(
                  child: Text(
                    "va ilovadan foydalanish shartlarini qabul qilasiz",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            )),
          )
        ],
      ),
    ));
  }
}
