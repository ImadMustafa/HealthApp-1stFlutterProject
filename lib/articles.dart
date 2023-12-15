import 'package:flutter/material.dart';
import 'topic.dart';
import 'paragraph.dart';

class Articles extends StatefulWidget {
  const Articles({super.key});

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Articles", style: TextStyle(color: Color(0xFFE89191), fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)),backgroundColor: Colors.white,),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: topics.length,
          itemBuilder: (context, index){
          return Column(
            children: [
              SizedBox(height: 10,),
            Container(
            color: Color(0xFFFAE2E2),
            width: 500,
            child: Column(
              children: [
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
                  Topic topicx = topics[index];
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => Paragraph(),
                        settings: RouteSettings(arguments: topicx),
                    ),
                  );
                },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: Image.asset(topics[index].image,width: 320),
                ),
                SizedBox(height: 10,),
                Text(topics[index].name, style: TextStyle(color: Color(0xFFA65757), fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
              ],
            ),
          ),
              SizedBox(height: 10,),
            ],
          );
          }
      ),
    );
  }
}
