import 'package:books_projects/pages/video_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  static const String id = "language_page";

  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                            "Tilni Tanlang".tr(),
                            style: const TextStyle(fontSize: 25),
                          ),
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Container(
                  height: 224,
                  width: 393,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          context.setLocale(Locale("uz","UZ"));
                        },
                        child: Container(
                          height: 53,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Row(
                              children: [
                                Container(
                                    height: 24,
                                    width: 24,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(110),
                                      child: const Image(
                                        image:
                                        AssetImage("assets/images/Uzbekistan.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                const SizedBox(
                                  width: 20,
                                ),
                                 Text(
                                  "O'zbek Tili".tr(),
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      GestureDetector(
                        onTap: (){
                          context.setLocale(Locale("ru","RU"));
                        },
                        child: Container(
                          height: 53,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Row(
                              children: [
                                Container(
                                    height: 24,
                                    width: 24,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(110),
                                      child: const Image(
                                        image: AssetImage("assets/images/Russia.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                const SizedBox(
                                  width: 20,
                                ),
                                 Text(
                                  "Rassiya".tr(),
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      GestureDetector(
                        onTap: (){
                          context.setLocale(Locale("en","US"));
                        },
                        child: Container(
                          height: 53,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Row(
                              children: [
                                Container(
                                    height: 24,
                                    width: 24,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(110),
                                      child: const Image(
                                        image: AssetImage("assets/images/USA.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                const SizedBox(
                                  width: 20,
                                ),
                                 Text(
                                  "English".tr(),
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      GestureDetector(
                        onTap: (){
                          context.setLocale(const Locale("fr","FR"));
                        },
                        child: Container(
                          height: 55,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Row(
                              children: [
                                Container(
                                    height: 24,
                                    width: 24,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(110),
                                      child: const Image(
                                        image: AssetImage("assets/images/France.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                const SizedBox(
                                  width: 20,
                                ),
                                 Text(
                                  "Français".tr(),
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, VideoPage.id);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 420),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.orange
                    ),
                    height: 56,
                    width: 353,
                    child:  Center(
                        child: Center(
                          child: Text("Davom etish".tr(),style: const TextStyle(fontSize: 16,color: Colors.white),),
                        ))
                    ),
                  ),
                ),
            ],
          ),
        ));
  }
}
