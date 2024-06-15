import 'package:books_projects/pages/kod_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:books_projects/pages/profil_page.dart';

import '../model/user_register.dart';
import '../service/book_servoce.dart';

class SingUpPage extends StatefulWidget {
  static const String id = "sing_up-page";

  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool visblityEys = true;

  Future<void> _registerUser() async {
    final String fullName = _fullNameController.text;
    final String email = _emailController.text;
    final String password = _passwordController.text;

    Register register = Register(
      full_name: fullName,
      email: email,
      password: password,
    );

    String? response = await BookService.registerUser(register);

    if (response != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Ro\'yxatdan muvaffaqiyatli o\'tdingiz!')),
      );
      Navigator.pushReplacementNamed(context, KodPage.id);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Ro\'yxatdan o\'tishda xatolik yuz berdi!')),
      );
    }
  }

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
                  child: Center(
                      child: Text(
                    "Ro'yxatdan o'tish".tr(),
                    style: const TextStyle(fontSize: 20),
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
                            style: const TextStyle(fontSize: 16),
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
                            style: const TextStyle(fontSize: 16),
                          )
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
                          controller: _fullNameController,
                          // Full name controller
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Ismingiz".tr(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
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
                    const SizedBox(height: 16),
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
                          // Password controller
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
                                    : const Icon(Icons.visibility),
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: _registerUser, // Call register user function
                      child: Container(
                        height: 56,
                        width: 353,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.orange,
                        ),
                        child: Center(
                          child: Text(
                            "Yuborish".tr(),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 75),
                      child: Row(
                        children: [
                          Text(
                            "Parofilingiz bormi?".tr(),
                            style: TextStyle(fontSize: 16),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, ProfilPage.id);
                              },
                              child: Text(
                                maxLines: 2,
                                "Kirish".tr(),
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.orange,
                                    overflow: TextOverflow.ellipsis),
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
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Ro'yxatdan o'tayotganda shaxsiy malumotlarni qayta ishlash"
                            .tr(),
                        maxLines: 1,
                        style: const TextStyle(
                            fontSize: 14, overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    Center(
                      child: Text(
                        "va ilovadan foydalanish shartlarini qabul qilasiz"
                            .tr(),
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
