import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';
import 'package:quran_app/start.dart';

void main() {
  runApp(const MyApp());
}

// List arabic = [];
// List malayalam = [];
// List quran = [];

// Future readJson() async {
//   final String response = await rootBundle.loadString("");
//   final data = json.decode(response);
//   arabic = data["quran"];
//   malayalam = data["malayalam"];
//   return quran = [arabic, malayalam];
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await readJson();
      await getSettings();
    });
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Start(),
    );
  }
}
