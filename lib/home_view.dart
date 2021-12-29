import 'dart:ui';

import 'package:ass_todo_app/business.dart';
import 'package:flutter/material.dart';
import 'package:ass_todo_app/tasks_view.dart';
import 'personal_view.dart';
import 'business_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            elevation: 0,
            child: ListView(children: [
              DrawerHeader(
                child: Column(
                  children: const [
                     CircleAvatar(
                      radius: 55.0,
                      backgroundImage: AssetImage(
                        "assets/img/sankwan.jpg",
                      ),
                    ),
                    Text('Sankwan',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18)),      
                  ],
                ),
              ),
              const ListTile(
                title: Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text('Productivity Curve',style: TextStyle(fontWeight: FontWeight.w300),),
                ),
                subtitle: Image(image: AssetImage("assets/img/graph.png"), height:200, width:50),
              )
            ]
            )
            ),
        appBar: AppBar(
          elevation: 0,
          // backgroundColor: Colors.white,
          // leading: Icon(Icons.accessibility_new_rounded, color: Colors.grey.shade400, size: 30,),
          actions: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Icons.search,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Icons.notifications,
                size: 30,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TasksView()));
          },
          backgroundColor: Colors.green,
          child: const Icon(
            Icons.add_circle, color: Colors.white,
          ),
        ),
        body: ListView(padding: const EdgeInsets.all(20.0), children: [
          const Text(
            'Hello, Friend :)',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w200,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 4.0, top: 30),
            child: Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 170,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const PersonalView()));
                  },
                  child: Container(
                              margin: const EdgeInsets.only(
                    top: 15, left: 0, right: 30, bottom: 15),
                              height: 120.0,
                              width: 170,
                              decoration: const BoxDecoration(
                    color: Color.fromRGBO(31, 208, 176, 0.6),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/img/newnewpersonal.png',
                        )))),
                ),
                
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const BusinessView()));
                  },
                  child: 
                Container(
                            margin: const EdgeInsets.only(
                                top: 15, left: 0, right: 30, bottom: 15),
                            height: 120.0,
                            width: 170,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(31, 28, 176, 0.4),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/img/newnewbusiness.png',
                ))))),
                      Container(
              margin: const EdgeInsets.only(
                  top: 15, left: 0, right: 30, bottom: 15),
              height: 120.0,
              width: 170,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(31, 208, 176, 0.6),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/img/newnewentertain1.png',
                      )))),
                
              ]),
          ),
                      
          const Text("Today's Tasks",
              style: TextStyle(fontWeight: FontWeight.w300)),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.green.shade50,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.7)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
              leading: Icon(Icons.check_circle_outline_outlined, color: Colors.green,),  
              title: Text('Morning', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17
              ),),
              subtitle: Text('Do some bible studies\nWash clothes'),
              // trailing: Text('5:30am'), 
              ),
            ),
          ),
          Card(
            color: Colors.green.shade50,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.7)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
              leading: Icon(Icons.check_circle_outline_outlined, color: Colors.green,),  
              title: Text('Morning', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17
              ),),
              subtitle: Text('Hit the gym'),
              // trailing: Text('5:30am'), 
              ),
            ),
          ),
          Card(
            color: Colors.green.shade50,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.7)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
              leading: Icon(Icons.check_circle_outline_outlined, color: Colors.green,),  
              title: Text('Morning', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17
              ),),
              subtitle: Text('Journaling\nDigital Marketing'),
              // trailing: Text('5:30am'), 
              ),
            ),
          ),
          Card(
            color: Colors.green.shade50,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.7)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
              leading: Icon(Icons.check_circle_outline_outlined, color: Colors.green,),  
              title: Text('Afternoon', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17
              ),),
              subtitle: Text('Market Analysis'),
              // trailing: Text('5:30am'), 
              ),
            ),
          ),
        ]));
  }
}

