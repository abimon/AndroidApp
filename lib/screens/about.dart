import 'package:flutter/material.dart';
import 'package:JKUSDA/Reusables/reusable.dart';
import 'package:JKUSDA/screens/navigation.dart';

class aboutus extends StatefulWidget {
  const aboutus({Key? key}) : super(key: key);

  @override
  State<aboutus> createState() => _aboutusState();
}

class _aboutusState extends State<aboutus> {
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
              20, 5,20,0),
            child:Column(
              children: [
                logoWidget('assets/imgs/logo.png'),
                Text('JKUSDA CHURCH',
                  style: const TextStyle(
                    color: Colors.white, fontWeight:FontWeight.bold, fontSize:18
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('About Us',
                  style: const TextStyle(
                    color: Colors.black, fontWeight:FontWeight.bold, fontSize:18
                  ),
                ),
                Divider(color: Colors.black,),
                Text('The JKUAT Seventh-day Adventist students existed as a group fellowshipping together for a period of time until the concept of formalizing the group to a church was introduced by the Central Kenya Conference for the members to discuss the benefits of this in the church system. In the process of this formalization, certain specialties were noted to exist in relation to the way the formal SDA churches are constituted. These were: the group was majorly constituted of students who were mostly unmarried, some were baptized in their home churches while some members were un-baptized. The group also had some activities, events, and programs that were mostly applicable in an education institution setting. Other specialties noted was in the leadership structure that accommodated some departments that were not exactly the way they are described in the church manual, but borrow their concepts from the already existing departments in the church manual.',
                  style: const TextStyle(
                    color: Colors.white, fontSize:14,
                  ),
                ),
                Divider(color:Colors.black),
                Column(
                  children: [
                    Text("Our Mission", style: TextStyle(fontWeight:FontWeight.bold),),
                    Text("Make disciples of Jesus Christ who live as His loving witnesses and proclaim to all people the everlasting gospel of the Three Angels’ Messages in preparation for His soon return (Matt 28:18-20, Acts 1:8, Rev 14:6-12).",
                    style: const TextStyle(
                      color: Colors.white, fontSize:14,
                    ),
                  ),
                    SizedBox(height:5),
                    Divider(color: Colors.black,),
                    Text("Our Method", style: TextStyle(fontWeight:FontWeight.bold),),
                    Text("Guided by the Bible and the Holy Spirit, we pursue this mission through Christ-like living, communicating, discipling, teaching, healing, and serving.",
                    style: const TextStyle(
                      color: Colors.white, fontSize:14,
                    ),
                  ),
                    Divider(color: Colors.black,),
                    Text("Our Vision", style: TextStyle(fontWeight:FontWeight.bold),),
                    Text("In harmony with Bible revelation, we see as the climax of God’s plan the restoration of all His creation to full harmony with His perfect will and righteousness.",
                    style: const TextStyle(
                      color: Colors.white, fontSize:14,
                    ),
                  )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}