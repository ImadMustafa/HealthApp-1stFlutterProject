import 'package:flutter/material.dart';
import 'exercise.dart';
import 'instruction.dart';

class Gym extends StatefulWidget {
  const Gym({super.key});

  @override
  State<Gym> createState() => _GymState();
}

class _GymState extends State<Gym> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Gym", style: TextStyle(color: Color(0xFFE89191), fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)),backgroundColor: Colors.white,),
      body: ListView.builder(
          itemCount: gym.length,
          itemBuilder: (context, index){
            return Column(
              children: [
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){

                  Exercise gymx = gym[index];
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Instruction(),
                      settings: RouteSettings(arguments: gymx),
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
                        Image.asset(gym[index].image,width: 180,),
                        SizedBox(width: 20,),
                        Text(gym[index].name, style: TextStyle(color: Color(0xFFA65757), fontSize: 17, fontWeight: FontWeight.bold),),
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
