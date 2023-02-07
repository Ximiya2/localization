import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("title".tr()),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("greeting".tr()),

          ElevatedButton(
              onPressed: (){
                print(context.locale.languageCode);
                print(context.locale.countryCode);
              },
              child: Text('get locale lang')
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: (){
                    context.setLocale(Locale('uz', 'UZ'));
                    setState(() {});
                  },
                  child: Text('Uzbek')
              ),
              ElevatedButton(
                  onPressed: (){
                    context.setLocale(Locale('ru', 'RU'));
                    setState(() {});
                  },
                  child: Text('русский')
              ),
              ElevatedButton(
                  onPressed: (){
                    context.setLocale(Locale('en', 'US'));
                    setState(() {});
                  },
                  child: Text('English')
              ),
              ElevatedButton(
                  onPressed: (){
                    context.setLocale(Locale('zh', 'CHN'));
                    setState(() {});
                  },
                  child: Text('Chinese')
              ),

            ],
          )
        ],
      ),
    );
  }
}
