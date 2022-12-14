import 'package:flutter/material.dart';
import 'package:JKUSDA/Reusables/reusable.dart';
import 'package:JKUSDA/screens/about.dart';
import 'package:JKUSDA/screens/navigation.dart';
import 'package:JKUSDA/screens/signin.dart';
import 'package:JKUSDA/screens/signup.dart';
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
              20, 5,20,0),
            child:Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
                      },
                      child: const Text("Sign Up", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
                      },
                      child: const Text("Sign In", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                logoWidget('assets/imgs/logo.png'),
                Text('JKUSDA CHURCH',
                  style: const TextStyle(
                    color: Colors.white, fontWeight:FontWeight.bold, fontSize:18
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Welcome',
                  style: const TextStyle(
                    color: Colors.black, fontWeight:FontWeight.bold, fontSize:18
                  ),
                ),
                Divider(color: Colors.black,),
                Text('Jomo Kenyatta University Seventh Day Adventist Church is a warm Christian fellowship of professionals and university students who live to glorify God through the power of influence by leading all to behold His wonderful love.',
                  style: const TextStyle(
                    color: Colors.white, fontSize:14,
                  ),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>aboutus()));
                } , child: Text('About Us >')),
                SizedBox(height: 5,),
                /*Container(
                  width:MediaQuery.of(context).size.width,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
                    },
                    child: Text(
                      'Bible',
                      style: const TextStyle(
                        color: Colors.black87, fontWeight:FontWeight.bold, fontSize:16
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states){
                      if(states.contains(MaterialState.pressed)){
                        return Colors.black26;
                      }
                      return Colors.white;
                    }),
                    shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                    )),
                  ),
                ),
                SizedBox(height:5),
                Container(
                  width:MediaQuery.of(context).size.width,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
                    },
                    child: Text(
                      'Hymnal',
                      style: const TextStyle(
                        color: Colors.black87, fontWeight:FontWeight.bold, fontSize:16
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states){
                      if(states.contains(MaterialState.pressed)){
                        return Colors.black26;
                      }
                      return Colors.white;
                    }),
                    shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                    )),
                  ),
                ),
                */
                /*signButton(context, false, (){
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
                    }
                  );
                })*/
                Row(
                  children: [

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
