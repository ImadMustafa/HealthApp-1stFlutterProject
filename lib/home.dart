import 'package:flutter/material.dart';
import 'test.dart';
import 'user.dart';
import 'userinfo.dart';
import 'articles.dart';
import 'sports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    User? userx = ModalRoute.of(context)?.settings.arguments as User?;

    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Better Me", style: TextStyle(color: Color(0xFFE18C8C), fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)), backgroundColor: Colors.white, automaticallyImplyLeading: false,),
      backgroundColor: Color(0xFFE89191),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                width: 600,
                child: Column(children: [
                  SizedBox(height: 40,),
                  Text("Press here for health test", style: TextStyle(color: Color(
                      0xFFF1B2B2), fontSize: 17, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFE18C8C),
                      ),
                      onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Test(),
                            )
                        );
                      },
                      child: Icon(Icons.fingerprint, size: 140,color: Colors.white,)),
                  SizedBox(height: 30,),
                ],),
              ),
              Container(color: Color(0xEAFFFFFF),height: 15,width: 600,),
              Container(color: Color(0xD8FFFFFF),height: 15,width: 600,),
              Container(color: Color(0xBEFFFFFF),height: 20,width: 600,),
              Container(color: Color(0x93FFFFFF),height: 20,width: 600,),
              Container(color: Color(0x3CFFFFFF),height: 30,width: 600,),
              Container(
                color: Color(0xFFE89191),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("You are: ", style: TextStyle(fontSize: 25),),
                        Text(userx?.result() ?? 'Uknown', style: TextStyle(fontSize: 50, color: userx?.resultColor() ?? Colors.white, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => UserInfo(),
                            settings: RouteSettings(arguments: userx),
                          )
                      );
                    },child: Text("More Information", style: TextStyle(fontSize: 20,color: Color(0xFFE18C8C), fontWeight: FontWeight.bold)),),
                    SizedBox(height: 35,),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Page(pageLink: Sports(), imagepath: "images/sports.png",),
                  SizedBox(width: 30,),
                  Page(pageLink: Articles(), imagepath: "images/articles.png",),
                ],
              ),
              SizedBox(height: 20,),

            ],
          ),
        ),


    );
  }
}

class Page extends StatelessWidget {

  final Widget pageLink;
  final String imagepath;

  const Page({
    required this.pageLink,
    required this.imagepath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => pageLink,
          )
      );
    },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Image.asset(imagepath, width: 170,));
  }
}

