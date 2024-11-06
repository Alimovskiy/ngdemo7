import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ngdemo7/main.dart';

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
                child: Text('flutter'.tr(),style: TextStyle(fontSize: 20),),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    height: 45,
                    color: Colors.green,
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
                    color: Colors.red,
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
                    color: Colors.orange,
                    onPressed: () {
                      context.setLocale(Locale('uz', 'UZ'));
                    },
                    child: Text("Uzbek",style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: MaterialButton(
                    height: 45,
                    color: Colors.yellow,
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
                    color: Colors.blue,
                    onPressed: () {
                      context.setLocale(Locale('ar', 'DZ'));
                    },
                    child: Text("Arabic",style: TextStyle(color: Colors.white),),
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