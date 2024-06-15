import 'package:books_projects/model/bookResponse.dart';
import 'package:books_projects/pages/book_page.dart';
import 'package:books_projects/pages/profilga_kirish.dart';
import 'package:books_projects/pages/video_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../service/book_servoce.dart';

class KitobBoblari extends StatefulWidget {
  static const String id = "kitob_boblari";

  const KitobBoblari({super.key});

  @override
  State<KitobBoblari> createState() => _KitobBoblariState();
}

class _KitobBoblariState extends State<KitobBoblari> {
  List<ResultItem> lst = [];

  Future<void> getData() async {
    String? response = await BookService.GET(
        BookService.API_GET_BOOK, BookService.paramsGET());
    Result result = BookService.parseResponse(response!);
    setState(() {
      lst = result.results!;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Kitob Boblari".tr(),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, VideoPage.id);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView.builder(
        itemCount: lst.length,

          itemBuilder: (context,index){
        return item(lst[index],index);
      }),
    );
  }
  Widget item(ResultItem resultItem,int index){
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BookPage(resultItem: resultItem),
          ),
        );
      },
      child: Container(
        height: 54,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.orange,
                ),
                child:  Center(child: Text((index+1).toString())),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(resultItem.translate!.uz!.title!),
            ],
          ),
        ),
      ),
    );
  }
}
