import 'package:conch/page/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning

  final String title = 'hello';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        centerTitle: false,
        title: SvgPicture.asset("assets/images/icon_left.svg"),
        actions: [
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
          ), //Icon
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Post(
            avar:
                " Ridin' in a getaway car\n There were sirens in the beat of your heart",
            image: 'assets/images/sunset.png',
          ),
          Post2(
            avar: 'assets/images/head.JPG',
            image: 'assets/images/skeleton.png',
          ),
          Post(
              avar: 'assets/images/head.JPG',
              image: 'assets/images/sunset.png'),
          Text("End of the page"),
        ],
      )),
    );
  }
}
