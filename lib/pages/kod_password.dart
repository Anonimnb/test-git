import 'package:books_projects/model/activate.dart';
import 'package:books_projects/pages/parolni_tiklash_page.dart';
import 'package:books_projects/pages/yangi_parol_page.dart';
import 'package:books_projects/service/hive_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../service/book_servoce.dart';
class KodPassword extends StatefulWidget {
  static const String id = "kod_password_page";

  const KodPassword({super.key});

  @override
  State<KodPassword> createState() => _KodPasswordState();
}

class _KodPasswordState extends State<KodPassword> {
  final List<TextEditingController> _controllers = List.generate(6, (index) => TextEditingController());
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

    if (activationCode.length != 6 || int.tryParse(activationCode) == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter a valid 6-digit activation code.")),
      );
      return;
    }

    Activate activate = Activate(
      email: email,
      activate_code: int.parse(activationCode),
    );

    try {
      String? response = await BookService.activateUser(activate);

      if (response != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Activation successful!")),
        );
        Navigator.pushReplacementNamed(context, YangiParolPage.id);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Activation code or email is incorrect.")),
        );
        Logger().i("Activation response: $response");
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("An error occurred: $e")),
      );
      Logger().e("Error during activation");
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
                              Navigator.pushReplacementNamed(context, ParolniTiklashPage.id);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 28,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 75),
                       Center(
                        child: Text(
                          "Kodni Kiriting".tr(),
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
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
              ),
            ),
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
            const SizedBox(height: 528),
            GestureDetector(
              onTap: _submitActivateCode,
              child: Container(
                height: 56,
                width: 353,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Image(
                  image: AssetImage("assets/images/img_10.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
