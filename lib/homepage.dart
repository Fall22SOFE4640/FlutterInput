import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController = TextEditingController();
//store user input into a variable
  String userPost = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children:<Widget> [

          //display text
          Expanded(
              child: Container(
                child:Center(
                  child: Text(userPost),
                ),
                color:Colors.white,
              )),


          //text input
          TextField(
            controller: _textController,
            decoration:  InputDecoration(
              hintText: 'What\'s in your mind?',


              border: OutlineInputBorder(),
              suffixIcon: IconButton(icon: Icon(Icons.clear),
               onPressed:() {_textController.clear();},
             ),

            ),

          ),
        MaterialButton(onPressed: () {
          setState(() {
            userPost = _textController.text;
          });
        },
        color:Colors.blue,
        child: const Text('Post',style: TextStyle(
          color: Colors.white,
        ),),)
        ],
      )
    );
  }
}
