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
    

      var contanner1  = new Container(

        child: Column(children: <Widget>[
              _buildButtonColumn(color, Icons.call, 'CALL'),


        ],)

      );
      var card =  new Card(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: <Widget>[
            contanner1,

            contanner1,
            

            
          ],

        ),


      );


       var card1 =  new Card(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: <Widget>[
            contanner1,


            
          ],

        ),


      );

     final sizeBox = new Container(

       margin: new EdgeInsets.only(left: 10.0,right: 10.0),
        child: new SizedBox(

          height: 80.0,
          width: 350.0,


          child:  card,
        ),
      );



      var text = new Container(

        child: Align(

          alignment: Alignment.centerRight,
          child: Text("All Devie",style: TextStyle(color: Colors.white),),
          
        ),


      );


    var image = new DecoratedBox(

      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('/images/home.png')
      )),
    );

      var image1 = new Container(

        child: Align(

          alignment: Alignment.centerLeft,
          child: image,
          
        ),


      );



      var content = new  Container(

               margin: new EdgeInsets.only(left: 30.0,right: 30.0),


               child: Row(

                 children: <Widget>[

                   image1,
                   text,


                 ],
               ),

        // color: Colors.white,
        // child: Align(

        //   alignment: Alignment.centerRight,
        //   child: Text("All Devie",style: TextStyle(color: Colors.white),),
          
          

        // ),
      
      
      );

      final sizeBox1 = new Container(

       margin: new EdgeInsets.only(left: 10.0,right: 10.0),
        color: color,
        child: new SizedBox(

          height: 100.0,
          width: 350.0,
          child:  content,
        ),
      );


    final  center  = new Center(

      child: sizeBox,

    );
    // TODO: implement build
    return new MaterialApp(

      home:  new Scaffold(

        appBar: new AppBar(

          title: new Text("Smart City"),

        ),
        body: Container(

          child: Column(

            children: <Widget>[

              sizeBox1,
              sizeBox,
              sizeBox,

              sizeBox,


            ],
          ),

        ),
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


      var card =  SizedBox(
        height: 100,
        width: 100,
        child: Icon(icon,color: color),
      
        
        
      );

        

    
    return Column(
      
      children: [
        Icon(icon, color: color),
        container,
      ],


    );
  }





}