import 'package:flutter/material.dart';
import 'home.dart';
import 'user.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {

    User? userx = ModalRoute.of(context)?.settings.arguments as User?;

    return Scaffold(
      appBar: AppBar(title: Text("Test's Details"),),
      body: Center(
        child: Container(
          width: 380,
          height: 750,
          decoration: BoxDecoration(
            color: Color(0xFFFAE2E2),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(userx?.toString() ?? 'Take the health test first!', style: TextStyle(fontSize: 22),),
              SizedBox(height: 10,),
              Container(
                width: 355,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(children: [
                Text( userx?.announce() ?? '', style: TextStyle(fontSize: 20,)),
              Text( userx?.result() ?? '', style: TextStyle(fontSize: 30, color: userx?.resultColor(), fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
              SizedBox(height: 20,),
              Container(
                width: 340,
                child: Text(userx?.tip() ?? '', style: TextStyle(fontSize: 20),),
              ),
              ],),),

              SizedBox(height: 30,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFE18C8C),
                  ),
                  onPressed: (){Navigator.of(context).pop();},
                  child: Icon(Icons.arrow_left, size: 50, color: Colors.white,))
            ],
          ),
        ),
      ),
    );
  }
}
