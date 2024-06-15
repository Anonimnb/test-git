import 'dart:ui';

import 'package:books_projects/pages/kitob_xarid_qilish.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../service/book_servoce.dart';

class XaridniTekshirish extends StatefulWidget {
  static const String id = "xaridni_tekshirish";

  const XaridniTekshirish({super.key});

  @override
  State<XaridniTekshirish> createState() => _XaridniTekshirishState();
}

class _XaridniTekshirishState extends State<XaridniTekshirish> {
  void getData(){
    BookService.GET(BookService.API_GET_CARD_INFO, BookService.paramsGET()).then((response)=>Logger().i(response));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "To'lov usulini tanlang",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, KitobXaridQilish.id);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [IconButton(onPressed: (){getData();}, icon: const Icon(Icons.add))],
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: 353,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 23, top: 20),
                      child: Container(
                        width: 58,
                        height: 70,
                        child: const Image(
                          image: AssetImage("assets/images/img_15.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          "Kitob narxi",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18),
                          child: Text(
                            "100 000 so'm",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 170),
                  child: Text(
                    "Pul o'tqazmasi orqali",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 72,
                  width: 353,
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 16, left: 16, right: 170),
                        child: Text(
                          "8600 1234 5678 9101",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16, right: 240),
                        child: Text(
                          "Shuxrat Xo'ja",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Skrinshot jo'natish",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold),
                    )),
                Row(
                  children: [
                    Container(
                      height: 2,
                      width: 141,
                      color: Colors.grey.shade300,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      "Yoki",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 2,
                      width: 141,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 89,
                  width: 353,
                  child: const Image(
                    image: AssetImage("assets/images/img_17.png"),
                  ),
                ),
                const SizedBox(
                  height: 230,
                ),
                Container(
                  height: 56,
                  width: 353,
                  child: const Image(
                    image: AssetImage("assets/images/img_18.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      const Text(
                        "Yordam kerakmi?",
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Adminga murojat qilish",
                            style: TextStyle(fontSize: 16, color: Colors.orange),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
