import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:screen_one_ui/reusable/profile_info.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  // List
  List titles = [
    "Small stuff adds up!",
    "You're doing well\n paying ogg your loans\n",
    "Small stuff adds up!",
    "Small stuff adds up!"

  ];
  List message=[
    "Last month,you made 42 transactions less than 5, spending a total of \$147.Want to cut down on frivilous spending?",
    "Since this time last year, you're contributed \$5,678 toward your Sailie Mae Student Loan.Great work!",
    "last month,you made 42 transactions less than 5, spending a total of 147.Want to cut down on frivilous spending?",
    "Since this time last year, you're contributed 5,678 toward your Sailie Mae Student Loan.Great work!",

  ];
   static List colors=[
     const Color(0xFF1976d2),
     const Color(0xFF18ffff),
     const Color(0xff5b42e8),
     const Color(0xFFD764E7),

   ];
   static Color buttonPrimaryColor=Colors.white;
   static String buttonText="SETUP A GOAL";

   static var iconInTheCard=Icons.favorite_border;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const ProfileInfo(),
              Padding(
                padding: const EdgeInsets.only(left: 12.0,right: 18.0,top: 10),
                child: FAProgressBar(
                  size: 10,
                  currentValue: 60,
                  maxValue: 100,
                  backgroundColor: Colors.grey,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text("Beginner Level ",
                      style: TextStyle(
                          fontFamily: 'SFiraSansRegular',
                        fontSize: 12.0,
                        color: Color(0x8E4F4F4F)
                      ),
                      ),

                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Text("XP 380/500",
                        style: TextStyle(
                            fontFamily: 'SFiraSansRegular',
                            fontSize: 12.0,
                            color: Color(0xFF4F4F4F)
                        ),


                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: ContainedTabBarView(
                  tabs: const [
                    Text('Today', style: TextStyle(color: Colors.black)),
                    Text('Monthly', style: TextStyle(color: Colors.black)),
                    Text('Yearly', style: TextStyle(color: Colors.black)),
                    Text('Future', style: TextStyle(color: Colors.black)),
                  ],
                  views: [
                    Container(
                      child: ListView.builder(

                        itemCount: 4,
                        itemBuilder: (context,index){
                          buttonChanger(index);
                          return Container(
                            height: 170.0,


                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0))
                              ),
                              color: colors[index],
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 12.0,left: 13),
                                        child: CircleAvatar(
                                          radius: 18,
                                          backgroundColor: Color(0x6c607d8b),

                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 5.0),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 8.0),
                                                    child: CircleAvatar(
                                                      radius: 7.5,
                                                      backgroundColor: const Color(
                                                          0xfff1e28e),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: CircleAvatar(
                                                    radius: 7.5,
                                                    backgroundColor: const Color(0xFFf44336),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left:14,bottom: 5.0,top: 7.0),
                                          child: Text(titles[index],
                                            style: TextStyle(
                                              color: Color(0xe2f8f0f0),
                                              fontFamily: 'FiraSans-Bold',


                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Padding(
                                          padding: const EdgeInsets.only(bottom: 5.0),
                                          child: Text("09-06-2018",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xe2f8f0f0),
                                                fontFamily: 'SFiraSansRegular',

                                            ),

                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 65,
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 26.0),
                                          child: Text(message[index],
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 3,
                                            style: TextStyle(
                                              color: Color(0xe2f8f0f0),
                                              // fontFamily: 'FiraSansRegular',
                                              fontFamily: 'SourceSansPro',
                                              // fontStyle: ,
                                                fontWeight: FontWeight.w100,
                                              fontSize: 13

                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 65,
                                        ),
                                         Expanded(
                                           flex:0,
                                           child: GestureDetector(
                                             onTap: (){},
                                             child: Container(
                                               width: 110,
                                               height: 25,

                                               decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.all(Radius.circular(25)),
                                                 color: buttonPrimaryColor,
                                               ),

                                               child: Padding(
                                                 padding: const EdgeInsets.only(top: 5.5),
                                                 child: Text(buttonText,
                                                   textAlign: TextAlign.center,
                                                   style: TextStyle(
                                                       color: Color(0xe2424242),
                                                     fontFamily: 'FiraSans-Bold',
                                                     fontSize: 12.5
                                                   ),

                                                 ),
                                               ),

                                             ),
                                           ),
                                         ),
                                        SizedBox(
                                          width: 20,
                                        ),

                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 60.0),
                                            child: Container(
                                              child: Icon(iconInTheCard,
                                                color: Colors.white,

                                              ),
                                            ),
                                          ),
                                        )
                                      ],


                                    ),
                                  )
                                ],
                              ),
                            ),
                          );


                        },

                      ),
                    ),
                    Container(),
                    Container(),
                    Container(),
                  ],
                  // onChange: (index) => print(index),
                ),
              )


            ],
          ),
        ),

      ),
    );
  }
}
void buttonChanger(int index){
  if(index%2!=0){
    MyApp.buttonPrimaryColor=MyApp.colors[index];
    MyApp.buttonText="     ";
    MyApp.iconInTheCard=Icons.favorite;

  }else{
    MyApp.buttonPrimaryColor=Colors.white;
    MyApp.iconInTheCard=Icons.favorite_border;
    MyApp.buttonText="SETUP A GOAL";
  }



}


