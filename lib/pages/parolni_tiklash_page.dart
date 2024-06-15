import 'package:books_projects/pages/profil_page.dart';
import 'package:books_projects/service/hive_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../model/ressets_password.dart';
import '../service/book_servoce.dart';
import 'kod_page.dart';

class ParolniTiklashPage extends StatefulWidget {
  static const String id = "parolni_tiklash";

  const ParolniTiklashPage({super.key});

  @override
  State<ParolniTiklashPage> createState() => _ParolniTiklashPageState();
}

class _ParolniTiklashPageState extends State<ParolniTiklashPage> {
  final TextEditingController _emailController = TextEditingController();
  void saveInfo(){
    String email=_emailController.text.trim();
    HiveService.storeInfo(email: email);
  }
  void getInfo(){
    HiveService.getInfo(emailKey: "email");
  }

  Future<void> _sendResetPasswordRequest() async {
    final String email = _emailController.text;

    if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Elektron pochtani kiriting.")),
      );
      return;
    }

    final resPassword = ResPaswords(email: email);

    try {
      final response = await BookService.resetPassword(resPassword);

      if (response != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Parolni tiklash uchun kod yuborildi.")),
        );
        Navigator.pushReplacementNamed(context, KodPage.id);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Xato: Parolni tiklash uchun so'rov muvaffaqiyatsiz.")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Xatolik yuz berdi: $e")),
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
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 4, left: 8),
                          child: Container(
                              height: 48,
                              width: 48,
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, ProfilPage.id);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    size: 28,
                                  ))),
                        ),
                        const SizedBox(
                          width: 57,
                        ),
                         Center(
                          child: Text(
                            "Parolni Tiklash".tr(),
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold,),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                  child:  Column(
                    children: [
                      Text(
                        "Elektron pochtangizni kiriting va biz unga parolni".tr(),
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        "Tiklash uchun kod yuboramiz".tr(),
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  )),
              const SizedBox(height: 41,),
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
                        hintText: "Elektron Pochta".tr()),
                  ),
                ),
              ),
              const SizedBox(height: 528,),
              GestureDetector(
                onTap: (){
                  _sendResetPasswordRequest();
                  saveInfo();
                  getInfo();

                },
                child: Container(
                    height: 56,
                    width: 353,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.orange
                    ),
                    child: Center(
                      child: Text(
                        maxLines: 1,
                        "Davom etish".tr(),style: const TextStyle(fontSize: 16,color: Colors.white,overflow: TextOverflow.ellipsis),
                      ),
                    )),
              ),
            ],
          ),
        )
    );
  }
}
