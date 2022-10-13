import 'package:flutter/material.dart';
import 'package:jkusda/Reusables/reusable.dart';
import 'package:jkusda/screens/navigation.dart';
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                navBar(),
              ],
            ),
          ],
        )
      ),
      body:
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient:LinearGradient(
            colors: [
              Colors.blue, Colors.orange, Colors.purple,Colors.green
            ],
            begin: Alignment.topCenter, end: Alignment.bottomCenter)
        ),
        child:SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height*0.2,20,0),
            child:Column(
              children: [
                logoWidget('assets/imgs/logo.png'),
                Text('JKUSDA CHURCH',
                  style: const TextStyle(
                    color: Colors.black, fontWeight:FontWeight.bold, fontSize:18
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Jomo Kenyatta University Seventh Day Adventist Church is a nwarm Christian fellowship of professionals and university students who live to glorify God through the power of influence by leading all to behold His wonderful love.',
                  style: const TextStyle(
                    color: Colors.white, fontSize:14,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}