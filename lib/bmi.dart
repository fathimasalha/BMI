import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override

  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  final TextEditingController _height=TextEditingController();
  final TextEditingController _weight=TextEditingController();
  double result=0;
  void bmicalculate(){
    double height=double.parse(_height.text)/100;
    double weight=double.parse(_weight.text);
    double heightsquare=height*height;
    result=weight/heightsquare;
    setState(() {
      result=result;
    });
    print(result);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator"),
      backgroundColor: Colors.pink,),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        TextField(
          controller: _height ,
          decoration: InputDecoration(
           labelText: "height in cm",
            labelStyle:TextStyle(color: Colors.pink),
            icon: Icon(Icons.trending_up,color: Colors.pink),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.pink)
            )
        ),),
        TextField(
          controller: _weight,
          decoration: InputDecoration(
            labelText: "weight in kg",
              labelStyle:TextStyle(color: Colors.pink),
                icon: Icon(Icons.menu,color: Colors.pink),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink)
              )
          ),
        ),
        SizedBox(
          height: 20.00,
        ),

        ElevatedButton(onPressed: (){bmicalculate();},
          style: ElevatedButton.styleFrom(
          primary: Colors.pink, // Background color
        ), child: Text("Calculate"),),

        SizedBox(
          height: 10.00,
        ),

        Text(
              result.toStringAsFixed(2)
        )

      ],),
    );
  }
}
