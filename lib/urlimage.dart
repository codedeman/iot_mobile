import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
// import 'package:transparent_image/transparent_image.dart';


class LoadUrlTransaction extends StatelessWidget{
 @override
    Widget build(BuildContext context) {
      return new MaterialApp(

        title: 'Login',
        theme: new ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: new LoadImageUrl(),
      );

      }

  
}



class LoadImageUrl extends StatefulWidget{
  @override

    LoadImageState createState() => new LoadImageState();



}

class LoadImageState extends State<LoadImageUrl>{
  @override
  Widget build(BuildContext context) {

  var imageURLs = [
    'https://cdn.vox-cdn.com/thumbor/Hp_x_aBKXTCGrnL1vOngafcvZ0E=/0x0:1280x800/1200x800/filters:focal(538x298:742x502)/cdn.vox-cdn.com/uploads/chorus_image/image/65164145/Untitled.0.png',
    'https://icdn2.digitaltrends.com/image/digitaltrends/apple-september-2019-event-keynote-apple-iphone-11-pro-pro-max-display-1-500x500.jpg',
    'https://cdn.vox-cdn.com/thumbor/8C7Q9-7_yL6Ycx_dHXkaQd4si30=/0x0:2000x1333/1200x0/filters:focal(0x0:2000x1333):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/19186926/lcimg_72773c8b_be6c_4e91_905a_9e56f331a38d.jpg',
    'https://amp.businessinsider.com/images/5d77ed272e22af132e2f6942-750-350.jpg',
    'https://icdn2.digitaltrends.com/image/digitaltrends/iphone-11-pro-max-news-10-500x500.jpg'
  ];
  var selectedImageIndex = 0;
   
    final cachedNetworkImage = new CachedNetworkImage(
//       placeholder: const CircularProgressIndicator(),
      imageUrl: imageURLs[selectedImageIndex],
      height: 300.0,
    );
   
    return new Scaffold(
        appBar: new AppBar( 
          title:  new Text("Load image from url"),

        ),
        body:  Container(

          child: new Column(

            children: <Widget>[

              new Stack(

                children: <Widget>[

                    // cachedNetworkImage,
                  new Center(
                    child: cachedNetworkImage,
                    
                  )
                ],
              ),
              new Row(children: <Widget>[
                new Expanded(
                  child: new RaisedButton(
                    child: new Text("Back"),
                    onPressed: (){
                      setState(() {
                        // cachedNetworkImage
                        selectedImageIndex=selectedImageIndex<=0?
                                                selectedImageIndex:selectedImageIndex-1;
                        // selectedImageIndex = selectedImageIndex<=0? selectedImageIndex: -1;
                      });
                      
                    },
                  ),
                ),

                  new Expanded(
                  child: new RaisedButton(
                    child: new Text("Next"),
                    onPressed: (){

                      setState(() {
                         selectedImageIndex = (selectedImageIndex >= imageURLs.length - 1) ?
                                    selectedImageIndex : selectedImageIndex + 1;
                        // selectedImageIndex =(selectedImageIndex >= imageURLs.length -1 )?selectedImageIndex:selectedImageIndex + 1;
                        // selectedImageIndex: selectedImageIndex+1;
                      });
                      
                    },
                  ),
                )
              ],),
              
            ],
          ),
        
        ),

    );
  }

  
}