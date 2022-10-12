import 'package:flutter/material.dart';
import 'package:flutter_application_1/bars/LeftBar.dart';
import 'package:flutter_application_1/bars/rightbar.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  MainPage(),
      
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController _weightController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  String _testResult = '';
  double _bmiresult = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
        title: Text('BMI Calculator', style: TextStyle(color: Colors.yellow,),
        ),centerTitle: true,
        backgroundColor: Colors.grey.shade800,
      ),
      backgroundColor: Colors.grey.shade800,
      body: ListView(
        
        children: [
          SizedBox(height: 20,),
        Row( mainAxisAlignment:MainAxisAlignment.spaceAround,
          children: [
          Container(
            margin: EdgeInsets.all(2),
            width: 150,
            height: 50,
            child: TextFormField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Height (m)',
                hintStyle: TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                  
                ),
                border: InputBorder.none,
              
              ),
              style:TextStyle(
                color:Colors.yellow,
                fontSize: 30,
              ),
              cursorColor: Colors.yellow,

              
              
            ),
          ),
          Container(
            margin: EdgeInsets.all(2),
            width: 150,
            height: 50,
            child: TextFormField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Weight (kg)',
                hintStyle: TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                  
                ),
                border: InputBorder.none,
              
              ),
              style:TextStyle(
                color:Colors.yellow,
                fontSize: 30,
              ),
              cursorColor: Colors.yellow,

              
              
            ),
          ),
        ],),
        SizedBox(height: 20,),
        
        
        Center(child:GestureDetector(onTap: (){
          setState(() {
           double _h = double.parse(_heightController.text);
            double _w = double.parse(_weightController.text);
            _bmiresult = _w/(_h*_h);
          if(_bmiresult > 25){
            _testResult = 'you are over weight';}
             else if(_bmiresult>=18.5 && _bmiresult<=25 ) {
               _testResult = 'you have normal weight';
            
            }else{_testResult = 'you are under weight';}
          

            
          
          });
        },
          child: Text('Calculator',style: TextStyle(color: Colors.yellow, fontSize: 30),))),
         SizedBox(height: 20,),
        Center(child: Text('$_bmiresult',style: TextStyle(color: Colors.yellow, fontSize: 30),)),
         SizedBox(height: 20,),
         Center(child: Text(_testResult,style: TextStyle(color: Colors.yellow, fontSize: 30),)),
         SizedBox(height: 20,),
      RightBar(widthBar: 30),
      SizedBox(height: 10,),

RightBar(widthBar: 60),
 SizedBox(height: 10,),
 RightBar(widthBar: 30),
      SizedBox(height: 10,),
      LeftBar(widthBar: 70),
      SizedBox(height: 20,),
      LeftBar(widthBar: 70),



      ],),
      
    );
  }
}