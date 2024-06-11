import 'package:books_projects/pages/video_page.dart';
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
                        child: const Center(
                          child: Text(
                            "Tilni Tanlang",
                            style: TextStyle(fontSize: 25),
                          ),
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Container(
                  height: 224,
                  width: 393,
                  color: Colors.grey.shade200,
                  child: Column(
                    children: [
                      Container(
                        height: 53,
                        color: Colors.white,
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
                              const Text(
                                "O'zbek Tili",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 53,
                        color: Colors.white,
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
                              const Text(
                                "Русский",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 53,
                        color: Colors.white,
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
                              const Text(
                                "English",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 55,
                        color: Colors.white,
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
                              const Text(
                                "Français",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
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
                    ),
                    height: 56,
                    width: 353,
                    child: const Center(
                        child: Image(image: AssetImage("assets/images/img_6.png"))
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
