import 'package:books_projects/pages/kitob_boblari.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class DasturRejimi extends StatefulWidget {
  static const String id = "dastur_rejimi";

  const DasturRejimi({super.key});

  @override
  State<DasturRejimi> createState() => _DasturRejimiState();
}

class _DasturRejimiState extends State<DasturRejimi> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Dastur Rejimi".tr(),
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, KitobBoblari.id);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
          ),
          SingleChildScrollView(
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
                          child: const Icon(
                            Icons.ac_unit,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "Tungi Rejim",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 180,
                        ),
                        Container(
                          height: 24,
                          width: 40,
                          child: Switch(
                            value: themeProvider.isDarkTheme,
                            activeColor: Colors.red,
                            onChanged: (bool value) {
                              themeProvider.toggleTheme();
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 3,
                    width: 380,
                    color: themeProvider.isDarkTheme ? Colors.blueGrey : Colors.grey.shade200,
                  ),
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
                          child: const Icon(
                            Icons.account_balance_wallet,
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          "Avto(qurilmadagidek)",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 110,
                        ),
                        Container(
                          height: 24,
                          width: 40,
                          child: Switch(
                            value: themeProvider.isDarkTheme,
                            activeColor: Colors.red,
                            onChanged: (bool value) {
                              themeProvider.toggleTheme();
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
