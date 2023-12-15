import 'package:flutter/material.dart';
import 'user.dart';
import 'home.dart';
import 'userinfo.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {

  String title = "Health Check";

  TextEditingController controllerWeight = TextEditingController();
  TextEditingController controllerHeight = TextEditingController();

  List<String> ages = ['17 or Below', '18-24', '25-34', '35-50', '51 or Above'];
  String selectedAge = '17 or Below';

  List<int> dayslist = [0,1,2,3,4,5,6,7];
  int days = 0;
  TextEditingController controllerMinutes = TextEditingController();

  int diet = 1;

  bool drawing = true;

  int illness = 0;
  bool ocd = false;
  bool adhd = false;
  bool overthinking = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text(title, style: TextStyle(color: Color(0xFFCE7B7B), fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)), backgroundColor: Color(0xFFFAE2E2),),
      backgroundColor: Color(0xFFFAE2E2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),

            //Age
            Container(
              padding: EdgeInsets.all(5.0),
              width: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Enter your age"),
                  SizedBox(width: 20,),
                  DropdownButton<String>(
                    value: selectedAge,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedAge = newValue!;
                      });
                    },
                    items: ages.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8,),

            //BMI
            Container(
              padding: EdgeInsets.all(5.0),
              width: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
              ),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Enter Height(in cm)"),
                      SizedBox(height: 5,),
                      SizedBox(
                        width: 125,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Your height"),
                          keyboardType: TextInputType.number,
                          controller: controllerHeight,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: <Widget>[
                      Text("Enter Weight(in kg)"),
                      SizedBox(height: 5,),
                      SizedBox(
                        width: 125,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Your weight"),
                          keyboardType: TextInputType.number,
                          controller: controllerWeight,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 8,),

            //Diet
            Container(
              padding: EdgeInsets.all(5.0),
              width: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
              ),
              child: Column(
                children: [
                  Text("Do you eat healthy food?"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [
                        Radio(
                            value: 4,
                            groupValue: diet,
                            onChanged: (val){
                              setState(() {
                                diet = val as int;
                              });
                            }),
                        Text('Never'),
                      ],),
                      SizedBox(width: 20,),
                      Column(children: [
                        Radio(
                            value: 3,
                            groupValue: diet,
                            onChanged: (val){
                              setState(() {
                                diet = val as int;
                              });
                            }),
                        Text('Sometimes'),
                      ],),
                      SizedBox(width: 20,),
                      Column(children: [
                        Radio(
                            value: 2,
                            groupValue: diet,
                            onChanged: (val){
                              setState(() {
                                diet = val as int;
                              });
                            }),
                        Text('Average'),
                      ],),
                      SizedBox(width: 20,),
                      Column(children: [
                        Radio(
                            value: 1,
                            groupValue: diet,
                            onChanged: (val){
                              setState(() {
                                diet = val as int;
                              });
                            }),
                        Text('Alot'),
                      ],),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 8,),

            //Sport
            Container(
              padding: EdgeInsets.all(5.0),
              width: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(children: [
                    Text("""
                  How many days a week
                  do you exercise?
                  """),
                    SizedBox(width: 30,),
                    DropdownButton<int>(
                      value: days,
                      onChanged: (int? newValue) {
                        setState(() {
                          days = newValue!;
                        });
                      },
                      items: dayslist.map<DropdownMenuItem<int>>((int value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Text('$value'),
                        );
                      }).toList(),
                    ),
                  ],),
                  Row(children: [
                    Text("""
                  How much time do you
                  spend time exercising?
                  """),
                    SizedBox(width: 30,),
                    SizedBox(
                      width: 90,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(border: OutlineInputBorder(), hintText: "minutes"),
                        keyboardType: TextInputType.number,
                        controller: controllerMinutes,
                      ),
                    ),
                  ],),

                ],
              ),
            ),

            SizedBox(height: 8,),

            //Mental illness
            Container(
              padding: EdgeInsets.all(5.0),
              width: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(children: [
                Text("Check if you have these cases."),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Column(
                      children: <Widget>[
                        Checkbox(
                            value: ocd,
                            onChanged: (val){
                              setState(() {
                                ocd = val as bool;
                              });
                            }),
                        Text("OCD"),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      children: <Widget>[
                        Checkbox(value: adhd,
                          onChanged: (value) {
                            setState(() {
                              adhd = value as bool;
                            });
                          },),
                        Text("ADHD"),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      children: <Widget>[
                        Checkbox(value: overthinking,
                          onChanged: (value) {
                            setState(() {
                              overthinking = value as bool;
                            });
                          },),
                        Text("Overthinking"),
                      ],
                    ),
                  ],
                ),
              ],),
            ),

            SizedBox(height: 8,),

            //Positivity
            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Text("What did you see first?"),
                      Image.asset('images/lady.jpg'),
                    ],
                  ),
                  SizedBox(width: 40,),
                  Column(
                    children: [
                      Text("Young lady"),
                      Radio(
                        value: true,
                        groupValue: drawing,
                        onChanged: (val) {
                          setState(() {
                            drawing = val as bool;
                          });
                        },
                      ),
                      SizedBox(height: 30,),
                      Text("Old lady"),
                      Radio(
                        value: false,
                        groupValue: drawing,
                        onChanged: (val) {
                          setState(() {
                            drawing = val as bool;
                          });
                        },
                      ),
                    ],
                  ),



                ],
              ),
            ),

            SizedBox(height: 13,),

            //Done
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFE18C8C),
              ),
              onPressed: (){
                setState(() {
                  title = "Don't miss any question!";
                });
                try{
                  double weight = double.parse(controllerWeight.text);
                  double height = double.parse(controllerHeight.text);
                  int minutes = int.parse(controllerMinutes.text);
                  bool positivity = drawing;
                  User userx = User(selectedAge, weight, height,diet, days, minutes, ocd, adhd, overthinking, positivity);

                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Home(),
                        settings: RouteSettings(arguments: userx),
                      )
                  );
                }
                catch(e){
                  print(e);
                }

              },
              child: Text("Done", style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
