import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text ("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, 
        icon: Icon(Icons.arrow_back_ios),),
          actions:[IconButton(onPressed: (){
              debugPrint("Actions");
          },icon: const Icon(
            Icons.info_outline,
          ))],
        ),
        body: SingleChildScrollView(
        child:Column(
          children: [
            Image.asset("images/blunt.jpg"),
            const SizedBox(height:10,),
            const Divider(
              color: Colors.black,
              
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
              child: Text("Blunt", style: TextStyle
              (color: Colors.white,
              )),
              
              )
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.green: Colors.blue,
              ),
              onPressed: (){
              debugPrint("Eleveted button");
            }, child: const Text("Elevated Button"),
            ),

          OutlinedButton(
            onPressed: (){
              debugPrint("Outlined button");
            },

             child: const Text("Outlined Button"),
            ),

            TextButton(onPressed: (){
              debugPrint("Text button");
            }, child: const Text("Elevated Button"),
            ),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap:(){
            debugPrint("Row click");
          },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                 Icon(Icons.local_fire_department,
                      color: Colors.blue,
                  ),
                  Text("Row Widget"),
                   Icon(Icons.local_fire_department,
                  )
            ],
            ),
            ),
            Switch(value: isSwitch, onChanged:(bool newBool){
              setState(() {
                 isSwitch= newBool;
                
              });
            }),
              Checkbox(value: isCheckBox, onChanged: (bool? newBool){
                  setState(() {
                    isCheckBox = newBool;
                  });
              }),
                Image.network("https://images.gamebanana.com/img/ss/posts/5fdb116277a71.jpg")
          ],
        ))
    );
  }
}