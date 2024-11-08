import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Localization"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'flutter'.tr(),
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        height: 45,
                        color: Colors.grey[100],
                        onPressed: () {
                          context.setLocale(Locale('en', 'US'));
                        },
                        child: Text("English",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: MaterialButton(
                        height: 45,
                        color: Colors.grey[200],
                        onPressed: () {
                          context.setLocale(Locale('ru', 'RU'));
                        },
                        child: Text("Russian",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: MaterialButton(
                        height: 45,
                        color: Colors.grey[300],
                        onPressed: () {
                          context.setLocale(Locale('uz', 'UZ'));
                        },
                        child: Text("Uzbek",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        height: 45,
                        color: Colors.grey[400],
                        onPressed: () {
                          context.setLocale(Locale('ko', 'KR'));
                        },
                        child: Text("Korean",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: MaterialButton(
                        height: 45,
                        color: Colors.grey[500],
                        onPressed: () {
                          context.setLocale(Locale('es', 'ES'));
                        },
                        child: Text("Spanish",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: MaterialButton(
                        height: 45,
                        color: Colors.grey[600],
                        onPressed: () {
                          context.setLocale(Locale('zh', 'CN'));
                        },
                        child: Text("Chinese",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        height: 45,
                        color: Colors.grey[700],
                        onPressed: () {
                          context.setLocale(Locale('de', 'DE'));
                        },
                        child: Text("Nemis",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: MaterialButton(
                        height: 45,
                        color: Colors.grey[800],
                        onPressed: () {
                          context.setLocale(Locale('ar', 'DZ'));
                        },
                        child: Text("Arabic",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: MaterialButton(
                        height: 45,
                        color: Colors.grey[900],
                        onPressed: () {
                          context.setLocale(Locale('fr', 'FR'));
                        },
                        child: Text("Franch",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}