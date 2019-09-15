import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
//import q'package:firebase_auth/firebase_auth.dart';

class LoginTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LoginPage(title: "Login"),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  LoginPageState createState() => new LoginPageState();
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   return ;
  // }

}

class LoginPageState extends State<LoginPage> {
  // String _email,_password;
  final _email = TextEditingController();
  final _password = TextEditingController();

  final color = const Color(0xffb74093);
  final backcolor = const Color(000000);
  final cachedNetworkImage = new CachedNetworkImage(
//       placeholder: const CircularProgressIndicator(),
      imageUrl: "https://banner2.kisspng.com/20171218/b97/pokemon-png-5a383db395aac1.551086471513635251613.jpg",
      height: 300.0,
    );
  // Color color1 = HexColor("b74093");

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var contanner1 = new Container(
        child: Row(
      children: <Widget>[
        ButtonTheme(
          child: FlatButton(
            child: _buildButtonColumn(color, Icons.face, 'Facebook'),
            onPressed: () {
              print("Hello Facebook");
            },
          ),
        ),
      ],
    ));

    var contanner2 = new Container(
        child: Row(
      children: <Widget>[
        ButtonTheme(
          child: FlatButton(
            child: _buildButtonColumn(color, Icons.face, 'Twitter'),
            onPressed: () {
              print("Hello Twitter");
            },
          ),
        ),
      ],
    ));
    var contanner3 = new Container(
        child: Row(
      children: <Widget>[
        ButtonTheme(
          child: FlatButton(
            child: _buildButtonColumn(color, Icons.face, 'Linkedin '),
            onPressed: () {
              print("Hello Kevin");
            },
          ),
        ),
      ],
    ));

    var containButton = new Container(
      child: Center(
        child: Row(
          children: <Widget>[
            contanner1,
            contanner2,
            contanner3
            // contanner1,
          ],
        ),
      ),
    );
    // var imagelocal =  new AssetImage("images/home.png");
    // TODO: implement build
    // var imagelocal2 = imagelocal;
    var assetsImage = new AssetImage('images/home.png');
    var brand = new Image(image: assetsImage, width: 48.0, height: 48.0);
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Login Page"),
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Center(child: cachedNetworkImage,),
            // decoration: new BoxDecoration(
            //   image: DecorationImage(image: assetsImage)
            // ),
          ),
          new Card(
            // elevation:  5,
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.grey,
              child: Column(
                children: <Widget>[
                  new ListTile(
                    leading: const Icon(Icons.person),
                    title: new TextField(
                      controller: _email,
                      decoration: new InputDecoration(
                        hintText: "Name",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.phone),
                    title: new TextField(
                      controller: _password,
                      decoration: new InputDecoration(
                        hintText: "phone",
                      ),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 300.0,
                    height: 40.0,
                    buttonColor: Colors.red,
                    child: FlatButton(
                      color: Colors.red,
                      child: Text('Login'),
                      textColor: Colors.white,
                      onPressed: () {
                        var email = _email.text;
                        email = "cnttk14c";
                        // var password =  _password.text;

                        //  _email.text = "cnttk14c";
                        if (_email == "cnttk14C" && _password == "1233") {
                          print("success login");
                        } else {
                          print("login fail");
                        }
                        // print(_email);
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      containButton,
                    ],
                  ),
                ],
              ),
            ),
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

    var card = SizedBox(
      height: 100,
      width: 100,
      child: Icon(icon, color: color),
    );

    return Column(
      children: [
        Icon(icon, color: color),
        container,
      ],
    );
  }
}
