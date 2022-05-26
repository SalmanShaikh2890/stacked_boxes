import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Fix'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello Everyone',
            ),
            const SizedBox(height: 20,),
            Container(
              height: 190,
              width: 190,
              color: Colors.grey[300],
              child: Stack(
                clipBehavior: Clip.hardEdge, children: [
                  const Positioned(
                    top: 20,
                    right: 20,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.green,
                    ),
                  ),
                  const Positioned(
                    bottom: 20,
                    left: 20,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.green,
                    ),
                  ), ...List.generate(8, (index) => Positioned(
                  top: index*20,
                  left: index*20,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: index%2==0?Colors.red:Colors.blue,
                  ),
                )),
                ],
              ),
            )
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
