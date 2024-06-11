import 'package:books_projects/pages/parolni_tiklash_page.dart';
import 'package:books_projects/pages/sing_up_page.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  static const String id = "profil_page";

  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 47),
            child: Container(
              height: 56,
              width: 393,
              child: const Center(
                child: Text(
                  "Profilga Kirish",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Center(
              child: Container(
                height: 435,
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
                        child: const Image(
                          image: AssetImage("assets/images/img_9.png"),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, ParolniTiklashPage.id);
                        },
                        child: const Text(
                          "Parolni unutdingizmi?",
                          style: TextStyle(color: Colors.orange, fontSize: 16),
                        ))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 251, left: 80),
            child: Row(
              children: [
                const Text(
                  "Profilingiz yo'qmi?",
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, SingUpPage.id);
                    },
                    child: const Text(
                      "Ro'yxatdan o'tish",
                      style: TextStyle(fontSize: 16, color: Colors.orange),
                    ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
