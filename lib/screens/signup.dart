import 'package:flutter/material.dart';
import 'package:jkusda/Reusables/reusable.dart';
import 'package:jkusda/screens/signin.dart';
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    textField("Enter Your Email", Icons.mail_outline, false, _emailTextController),
                    SizedBox(
                      height: 20,
                    ),
                    textField("Enter Password", Icons.lock_outline, true, _passwordTextController
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    signButton(context, false, (){}),
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
  Row  signupOption(){
    return Row(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        const Text("Have an account?",
        style: TextStyle(color:Colors.white70)),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
          },
          child: const Text("Log in", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
