import 'package:flutter/material.dart';
import 'package:ass_todo_app/home_view.dart';

// class MyCustomForm extends StatefulWidget {  
//   @override  
//   MyCustomFormState createState() {  
//     return MyCustomFormState();  
//   }  
// }  
// class MyCustomFormState extends State<MyCustomForm> {  

//   final _formKey = GlobalKey<FormState>(); 

class TasksView extends StatefulWidget {
  const TasksView({ Key? key }) : super(key: key);

  @override
  State<TasksView> createState() => TasksViewState();
}

class TasksViewState extends State<TasksView> {
// final taskskey = GlobalKey<TasksState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pop(
            context, MaterialPageRoute(builder: (context)=> const HomeView()));},
             icon: const Icon(Icons.chevron_left, color: Colors.grey,size: 30,)),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
         title: const Text('Add New',
         style: TextStyle( color: Colors.black, fontSize: 30, fontWeight: FontWeight.w200), 
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,  
            children: <Widget>[  
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: TextFormField(  
                  decoration: const InputDecoration(  
                    icon:  Icon(Icons.account_tree, color: Colors.green,),  
                    hintText: 'Category',    
                  ),  
                ),
              ),
                
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: TextFormField(  
                  decoration: const InputDecoration(  
                    icon:  Icon(Icons.add_reaction, color: Colors.green,),  
                    hintText: 'Task',  
     
                  ),  
                ),
              ),  
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: TextFormField(  
                  decoration: const InputDecoration(  
                  icon: Icon(Icons.home_work, color: Colors.green,),  
                  hintText: 'Place',  
                  ),  
                 ),
              ),  
               Padding(
                 padding: const EdgeInsets.only(top:20.0),
                 child: TextFormField(  
                  decoration: const InputDecoration(  
                  icon: Icon(Icons.alarm, color: Colors.green,),  
                  hintText: 'Time',  
                  ),  
                 ),
               ),  
              
              Container(  
                  padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
                  child: const ElevatedButton(  
                    child: Text('Submit'),  
                      onPressed: null,  
                  )),  
            ],  
          ),
        ),
      ),
      );
  }
}