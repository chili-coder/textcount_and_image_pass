import 'package:counterapp/home.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
   DetailsPage({Key? key,this.img}) : super(key: key);

   String ?img;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Expanded(child: Hero(
              tag: "mmm",

              child: Image.network("${widget.img}",width: double.infinity,height: double.infinity,fit: BoxFit.cover,)))
        ],
      )


    );
  }
}
