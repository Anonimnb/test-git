import 'package:books_projects/pages/kitob_boblari.dart';
import 'package:books_projects/pages/sing_up_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoPage extends StatefulWidget {
  static const String id = "videos_page";

  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  Future<void> openBrowzer(String uri) async {
    if (!await launchUrl(Uri.parse(uri), mode: LaunchMode.inAppWebView)) {
      throw Exception("Could not launch $uri");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 131),
                child: Container(
                  width: 593,
                  height: 590,
                  child: const Image(
                    image: AssetImage("assets/images/img_4.png"),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 47),
                  child: Container(
                    height: 56,
                    width: 393,
                    child: Center(
                      child: Text(
                        "Video qo'llanma".tr(),
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 186),
                  child: Center(
                    child: GestureDetector(
                      onTap: () async {
                        await openBrowzer("https://youtu.be/q2Efa8Z0Eok");
                      },
                      child: Container(
                        width: 353,
                        height: 274,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Container(
                                width: 321,
                                height: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Image(
                                  image: AssetImage("assets/images/img_5.png"),
                                ),
                              ),
                            ),
                            Text(
                              "Foydali nuqtalar ilovasi va to'lovi\namalga oshirish haqida qo'llanma".tr(),
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 128),
                  child: Container(
                    width: 353,
                    height: 120,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, SingUpPage.id);
                          },
                          child: Container(
                            height: 56,
                            width: 353,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(
                                "Profilga Kirish".tr(),
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, KitobBoblari.id);
                          },
                          child: Container(
                            height: 56,
                            width: 353,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.orange,
                            ),
                            child: Center(
                              child: Text(
                                "Kitobni O'qish".tr(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
