import 'package:flutter/material.dart';

import 'index.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "... اهداء الي روح المرحوم ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "الحاج / احمد عبدالواحد احمد سليمان ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 250,
              width: 250,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  'assets/nn.png',
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                        color: Color.fromARGB(255, 56, 115, 59), width: 3)),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 200,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(
                      255, 56, 115, 59), // background (button) color
                  foregroundColor: Colors.white, // foreground (text) color
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => IndexPage()));
                  });
                },
                child: const Text('Continue'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
