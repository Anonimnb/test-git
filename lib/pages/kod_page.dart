import 'package:books_projects/model/activate.dart';
import 'package:books_projects/pages/sing_up_page.dart';
import 'package:books_projects/pages/yangi_parol_page.dart';
import 'package:books_projects/service/hive_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../service/book_servoce.dart';

class KodPage extends StatefulWidget {
  static const String id = "kod_page";

  const KodPage({super.key});

  @override
  State<KodPage> createState() => _KodPageState();
}

class _KodPageState extends State<KodPage> {
  final List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController());
  String? email;

  void initState() {
    super.initState();
    email = HiveService.getInfo(emailKey: "email");
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  Future<void> _submitActivateCode() async {
    String? email = this.email;

    String activationCode = _controllers.map((e) => e.text).join();
    Logger().e(activationCode);

    Activate activate = Activate(
      email: email,
      activate_code: int.parse(activationCode),
    );

    String? response = await BookService.activateUser(activate);

    if (response != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Activation successful!")),
      );
      Navigator.pushReplacementNamed(context, YangiParolPage.id);
    } else {
      Logger().i(response);
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
                                      context, SingUpPage.id);
                                },
                                icon: const Icon(
                                  Icons.arrow_back,
                                  size: 28,
                                ))),
                      ),
                      const SizedBox(
                        width: 75,
                      ),
                      Center(
                        child: Text(
                          "Kodni Kiriting".tr(),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
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
                child: Column(
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
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Container(
                height: 56,
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(6, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SizedBox(
                        width: 40,
                        child: TextField(
                          controller: _controllers[index],
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          decoration: InputDecoration(
                            counterText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                color: index == 0 ? Colors.orange : Colors.grey,
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.length == 1 && index < 5) {
                              FocusScope.of(context).nextFocus();
                            } else if (value.isEmpty && index > 0) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            const SizedBox(
              height: 528,
            ),
            GestureDetector(
              onTap: _submitActivateCode,
              child: Container(
                  height: 56,
                  width: 353,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.orange),
                  child: Center(
                    child: Text(
                      "Davom etish".tr(),
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
