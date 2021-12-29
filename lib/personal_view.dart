import 'package:ass_todo_app/home_view.dart';
import 'package:flutter/material.dart';

class PersonalView extends StatelessWidget {
  const PersonalView({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:const Color.fromRGBO(31, 208, 176, 0.6),
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pop(
            context, MaterialPageRoute(builder: (context)=> const HomeView()));},
             icon: const Icon(Icons.chevron_left, color: Colors.grey,size: 30,)),
        elevation: 0,
        // backgroundColor: const Color.fromRGBO(31, 208, 176, 0.6),
        centerTitle: true,
         title: const Text('Personal',
         style: TextStyle( color: Colors.black, fontSize: 30, fontWeight: FontWeight.w200), 
        ),
      ), 
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12),
        children: [
          Center(
            child: Text("2 Tasks", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 33),),
          ),
          Card(
            color: Colors.green.shade50,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.7)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
              leading: Icon(Icons.check_circle_outline_outlined, color: Colors.grey,),  
              title: Text('Morning', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17
              ),),
              subtitle: Text('Do some bible studies  Wash clothes'),
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
              leading: Icon(Icons.check_circle_outline_outlined, color: Colors.grey,),  
              title: Text('Morning', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17
              ),),
              subtitle: Text('Hit the gym'),
              // trailing: Text('5:30am'), 
              ),
            ),
          ),
        ],
      ),
    );
  }
}