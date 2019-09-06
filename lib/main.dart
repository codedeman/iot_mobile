import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(


//        primarySwatch: Colors.white,
      ),
      home: MyHomePage(title: 'Flutter Demo H'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final color = const Color(0xffb74093);


  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return new  Scaffold(

      appBar: new AppBar(
//        title: "Hello",

      ),

      body: new Column(

       children: <Widget>[

         Center(

           child: Container(

             padding: EdgeInsets.symmetric(vertical: 30.0),
             width: 130.0,
             height: 100.0,
             color: color,

             
            //  child: new Text("All devices")



           ),
         ),


          Column(

            children: <Widget>[


              Row(


                children: <Widget>[

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: <Widget>[

                         _buildButtonColumn(color, Icons.call, 'CALL'),

                        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),

                      ],


                    )
                  
                  
                  ,)
                ],

              )

              
            
            ],

          )


       ],
      ),


    );
  }


   Column _buildButtonColumn(Color color, IconData icon, String label) {

    var container = Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        );
    return Column(
      // mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,

      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        container,
      ],
    );
  }





}