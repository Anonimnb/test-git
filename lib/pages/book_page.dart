import 'package:books_projects/pages/dastur_haqida.dart';
import 'package:books_projects/pages/dastur_rejimi.dart';
import 'package:books_projects/pages/kitob_boblari.dart';
import 'package:books_projects/pages/language_page.dart';
import 'package:books_projects/pages/video_page.dart';
import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  static const String id = "book_page";

  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            height: 40,
            width: 138,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.orange.shade100,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 6),
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(100)),
                    child: const Center(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "Profilga kirish",
                  style: TextStyle(fontSize: 14, color: Colors.orange),
                )
              ],
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Colors.black,
                  size: 30,
                ))
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 680,
                  width: 353,
                  child: const SingleChildScrollView(
                    child: Text(
                      "The Drawer widget has a child property where you can place all the content for the drawer. In this example, we used a ListView widget as the child widget. The ListView enables us to easily add widgets in a column layout. Furthermore, the ListView will scroll if the list is too long to fit on the screen. The header comes first in the ListView, followed by all the navigation links. For the header, we use the UserAccountsDrawerHeader widget that provides a simple layout for user profile information. We use the ListTile widget, which provides a layout that includes an icon and some text, for the navigation links. And for each ListTile, we can set the onTap property to respond to the user’s selection of a navigation link.The Drawer widget has a child property where you can place all the content for the drawer. In this example, we used a ListView widget as the child widget. The ListView enables us to easily add widgets in a column layout. Furthermore, the ListView will scroll if the list is too long to fit on the screen. The header comes first in the ListView, followed by all the navigation links. For the header, we use the UserAccountsDrawerHeader widget that provides a simple layout for user profile information. We use the ListTile widget, which provides a layout that includes an icon and some text, for the navigation links. And for each ListTile, we can set the onTap property to respond to the user’s selection of a navigation link.",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 82,
                  width: 393,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.orange,
                            size: 30,
                          )),
                      const Text(
                        "Foydali Apk nuqtalar kitobi haqida\n1-bob / 24",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, KitobBoblari.id);
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black,
                            size: 30,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                    height: 150,
                    width: 320,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 30, right: 20, bottom: 20),
                          child: Row(
                            children: [
                              const Text(
                                "Foydali",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Container(
                                height: 55,
                                width: 55,
                                child: const Image(
                                    image:
                                        AssetImage("assets/images/img_3.png")),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              const Text(
                                "Nuqtalar",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 48,
                          width: 280,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.orange,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 2, left: 60),
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Profilga kirish",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){Navigator.pushReplacementNamed(context, DasturRejimi.id);},
                child: Container(
                  height: 54,
                  width: 320,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(110),
                            child: const Image(
                              image: AssetImage("assets/images/img.png"),
                              fit: BoxFit.cover,
                            ),
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Dastur rejimi",
                        style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 2,
                  color: Colors.grey.shade200,
                ),
              ),
              GestureDetector(
                onTap: (){Navigator.pushReplacementNamed(context, LanguagePage.id);},
                child: Container(
                  height: 54,
                  width: 320,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(110),
                            child: const Image(
                              image: AssetImage("assets/images/Uzbekistan.png"),
                              fit: BoxFit.cover,
                            ),
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Dastur tili",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 2,
                color: Colors.grey.shade200,
              ),
              GestureDetector(
                onTap: (){Navigator.pushReplacementNamed(context, DasturHaqida.id);},
                child: Container(
                  height: 54,
                  width: 320,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(110),
                            child: const Image(
                              image: AssetImage("assets/images/img_1.png"),
                              fit: BoxFit.cover,
                            ),
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Dastur haqida",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 2,
                color: Colors.grey.shade200,
              ),
              GestureDetector(
                onTap: (){Navigator.pushReplacementNamed(context, VideoPage.id);},
                child: Container(
                  height: 54,
                  width: 320,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(110),
                            child: const Image(
                              image: AssetImage("assets/images/img_2.png"),
                              fit: BoxFit.cover,
                            ),
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Video qo'llanma",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
