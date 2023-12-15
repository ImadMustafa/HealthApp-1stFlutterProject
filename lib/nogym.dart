import 'package:flutter/material.dart';
import 'exercise.dart';
import 'instruction.dart';

class NoGym extends StatefulWidget {
  const NoGym({super.key});

  @override
  State<NoGym> createState() => _NoGymState();
}

class _NoGymState extends State<NoGym> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Calisthenics", style: TextStyle(color: Color(0xFFE89191), fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)),backgroundColor: Colors.white,),
      body: ListView.builder(
        itemCount: nogym.length,
          itemBuilder: (context, index){
            return Column(
              children: [
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){

                  Exercise nogymx = nogym[index];
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Instruction(),
                      settings: RouteSettings(arguments: nogymx),
                    ),
                  );
                },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                    child: Container(
                      color: Color(0xFFFAE2E2),
                      width: 500,
                      child: Row(
                        children: [
                          SizedBox(height: 10,),
                          Image.asset(nogym[index].image,width: 180,),
                          SizedBox(width: 20,),
                          Text(nogym[index].name, style: TextStyle(color: Color(0xFFA65757), fontSize: 17, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),),
                SizedBox(height: 10,),
              ],
            );
          }),
    );
  }
}
