import 'package:flutter/material.dart';

class navBar extends StatefulWidget {
  
  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  final navs=<String>['Home','About','Resource','Reports','Events','Blog'];
      var selected=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index)=>GestureDetector(
          onTap: (){
            setState((){
              selected=index;
            });
          },
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: selected ==index 
              ?Colors.white
              :Colors.black.withOpacity(0.6),
              borderRadius:BorderRadius.circular(12),
              border: Border.all(
                  color: selected ==index 
                ?Colors.black
                :Colors.white,
              )
            ),
            child: Text(navs[index],
              style: TextStyle(
                fontSize: 14,
                color: selected ==index 
                    ?Colors.black
                    :Colors.white
              ),
              
            ),
          ),
        ), 
        separatorBuilder: (_ , index)=>SizedBox(width: 5), 
        itemCount: navs.length),
    );
  }
}