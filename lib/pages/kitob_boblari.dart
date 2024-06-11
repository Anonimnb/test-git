import 'package:books_projects/pages/book_page.dart';
import 'package:books_projects/pages/video_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KitobBoblari extends StatefulWidget {
  static const String id = "kitob_boblari";

  const KitobBoblari({super.key});

  @override
  State<KitobBoblari> createState() => _KitobBoblariState();
}

class _KitobBoblariState extends State<KitobBoblari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Kitob Boblari",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          onPressed: () {Navigator.pushReplacementNamed(context, VideoPage.id);},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Container(
              height: 844,
              width: 393,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){Navigator.pushReplacementNamed(context, BookPage.id);},
                    child: Container(
                      height: 54,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.orange.shade100,
                              ),
                              child: const Center(child: Text("1")),
                            ),
                            const SizedBox(width: 20,),
                            const Text("Foydali Apk nuqtalar kitobi haqida")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(height: 4,color: Colors.grey.shade200,),
                  GestureDetector(
                    child: Container(
                      height: 54,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.orange.shade100,
                              ),
                              child: const Center(child: Text("1")),
                            ),
                            const SizedBox(width: 20,),
                            const Text("Foydali Apk nuqtalar kitobi haqida")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(height: 4,color: Colors.grey.shade200,),
                  GestureDetector(
                    child: Container(
                      height: 54,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.orange.shade100,
                              ),
                              child: const Center(child: Text("1")),
                            ),
                            const SizedBox(width: 20,),
                            const Text("Foydali Apk nuqtalar kitobi haqida")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(height: 4,color: Colors.grey.shade200,),
                  GestureDetector(
                    child: Container(
                      height: 54,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.orange.shade100,
                              ),
                              child: const Center(child: Text("1")),
                            ),
                            const SizedBox(width: 20,),
                            const Text("Foydali Apk nuqtalar kitobi haqida")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(height: 4,color: Colors.grey.shade200,),
                  GestureDetector(
                    child: Container(
                      height: 54,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.orange.shade100,
                              ),
                              child: const Center(child: Text("1")),
                            ),
                            const SizedBox(width: 20,),
                            const Text("Foydali Apk nuqtalar kitobi haqida")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(height: 4,color: Colors.grey.shade200,),
                  GestureDetector(
                    child: Container(
                      height: 54,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.orange.shade100,
                              ),
                              child: const Center(child: Text("1")),
                            ),
                            const SizedBox(width: 20,),
                            const Text("Foydali Apk nuqtalar kitobi haqida")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(height: 4,color: Colors.grey.shade200,),
                  GestureDetector(
                    child: Container(
                      height: 54,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.orange.shade100,
                              ),
                              child: const Center(child: Text("1")),
                            ),
                            const SizedBox(width: 20,),
                            const Text("Foydali Apk nuqtalar kitobi haqida")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(height: 4,color: Colors.grey.shade200,),



                ],
              ),
            ),
          )),
    );
  }
}
