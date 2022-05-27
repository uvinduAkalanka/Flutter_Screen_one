import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 0.0,left: 0.0),
      child: Row(

        children: [
          Expanded(
            flex: 0,
            child: CircleAvatar(
              radius: 30.0,
              backgroundColor: Color(0x2d607d8b),
              child: CircleAvatar(
                radius: 26.0,
                backgroundImage: AssetImage('images/myslef.jpg'),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(top: 0.0,left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome back, Marvin",
                    style: TextStyle(
                      fontFamily: 'FiraSans-Bold',
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Text("Your financial situation looking good!",
                  style: TextStyle(
                    fontFamily: 'SFiraSansRegular',
                    fontSize: 10.0,
                    color: Colors.grey
                  ),
                  )
                ],
              ),
            ),
          ),
         const Expanded(

           flex: 0,
              child: Padding(
                padding: EdgeInsets.only(top: 0.0,right: 0.0),
                child: Align(
                  // alignment: Alignment.topLeft,
                  child: Icon(
            Icons.more_vert
          ),
                ),
              ))

        ],
      ),
    );
  }
}
