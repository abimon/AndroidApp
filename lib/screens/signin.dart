import 'package:flutter/material.dart';
import 'package:jkusda/Reusables/reusable.dart';
import 'package:jkusda/screens/navigation.dart';
import 'package:jkusda/screens/signup.dart';
class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
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
      body:Container(
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
                child: Column(
                  children: <Widget>[
                    logoWidget('assets/imgs/logo.png'),
                    Text('JKUSDA CHURCH',
                      style: const TextStyle(
                      color: Colors.black, fontWeight:FontWeight.bold, fontSize:16
                    ),),

                    SizedBox(
                      height: 20,
                    ),
                    textField("Enter Username", Icons.person_outline, false, _emailTextController
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    textField("Enter Password", Icons.lock_outline, true, _passwordTextController
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    signButton(context, true, (){}),
                    SizedBox(
                      height: 20,
                    ),
                    signupOption()
                  ],
                )
              ),
            ),
            
          )
    );
  }

  Row signupOption(){
    return Row(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
        style: TextStyle(color:Colors.white70)),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
          },
          child: const Text("Sign Up", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
