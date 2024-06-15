import 'package:books_projects/pages/book_page.dart';
import 'package:books_projects/pages/parolni_tiklash_page.dart';
import 'package:books_projects/pages/sing_up_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:books_projects/model/login.dart';

import '../service/book_servoce.dart';

class ProfilPage extends StatefulWidget {
  static const String id = "profil_page";

  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    Login loginData = Login(email: email, password: password);

    String? response = await BookService.loginUser(loginData);

    if (response != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Login successful!")),
      );
      setState(() {
        Navigator.pushReplacementNamed(context, BookPage.id);
      });
      // Navigate to another page if needed
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Login failed!")),
      );
    }
  }

  bool visblityEys = true;

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
                child: Center(
                  child: Text(
                    "Profilga Kirish".tr(),
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
                        ),
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
                            Text(
                              "Google orqali kirish".tr(),
                              style: TextStyle(fontSize: 16),
                            ),
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
                        ),
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
                            Text(
                              "Apple orqali kirish".tr(),
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Yoki".tr(),
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
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, left: 15),
                          child: TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Elektron Pochta".tr(),
                            ),
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
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, left: 15),
                          child: TextField(
                            obscureText: visblityEys,
                            controller: _passwordController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Parol".tr(),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        visblityEys=!visblityEys;
                                      });
                                    },
                                    icon: visblityEys
                                        ? const Icon(Icons.visibility_off)
                                        : const Icon(Icons.visibility))),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        onTap: _login,
                        child: Container(
                            height: 56,
                            width: 353,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.orange),
                            child: Center(
                              child: Text(
                                "Kirish".tr(),
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            )),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            ParolniTiklashPage.id,
                          );
                        },
                        child: Text(
                          "Parolni unutdingizmi?".tr(),
                          style: TextStyle(color: Colors.orange, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 251, left: 80),
              child: Row(
                children: [
                  Text(
                    "Profilingiz yo'qmi?".tr(),
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        SingUpPage.id,
                      );
                    },
                    child: Text(
                      "Ro'yxatdan o'tish".tr(),
                      style: TextStyle(fontSize: 16, color: Colors.orange),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
