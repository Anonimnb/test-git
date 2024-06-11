import 'package:books_projects/pages/book_page.dart';
import 'package:flutter/material.dart';

class DasturRejimi extends StatefulWidget {
  static const String id = "dastur_rejimi";

  const DasturRejimi({super.key});

  @override
  State<DasturRejimi> createState() => _DasturRejimiState();
}

class _DasturRejimiState extends State<DasturRejimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dastur Rejimi",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, BookPage.id);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 56,
                width: 393,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 24,
                      width: 24,
                      child: const Image(
                        image: AssetImage("assets/images/img.png"),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Tungi Rejim",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      width: 180,
                    ),
                    Container(
                      height: 24,
                      width: 40,
                      child: const Image(
                        image: AssetImage("assets/images/img_11.png"),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 3,
              color: Colors.grey.shade200,
            ),
            Center(
              child: Container(
                height: 56,
                width: 393,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 24,
                      width: 16,
                      child: const Image(
                        image: AssetImage("assets/images/img_12.png"),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    const Text(
                      "Avto(qurilmadagidek)",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      width: 110,
                    ),
                    Container(
                      height: 24,
                      width: 40,
                      child: const Image(
                        image: AssetImage("assets/images/img_11.png"),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 560),
              child: Container(
                height: 56,
                width: 353,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4)
                ),
                child: const Image(image: AssetImage("assets/images/img_13.png"),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
