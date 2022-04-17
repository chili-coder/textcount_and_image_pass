import 'package:counterapp/details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);



  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numr = 1000;

  void _counter() {
    setState(() {

      numr++;
    });
  }


 String img="https://www.w3schools.com/howto/img_forest.jpg";




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Counter App"),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _counter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),

      body: Center(
        child: Column(
          children: [
            Expanded(flex:4,child: InkWell(
                onTap: (){
                  var m = img;
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage(img: m,)));

                },

                child: Hero(
                  tag: "mmm",
                    child: Image.network(img,width: 120,height: 120,)))),
            Expanded(flex:1,child:  Text(
              '$numr',style: TextStyle(fontSize: 60,fontWeight: FontWeight.w100),

            ),),
          ],
        ),
      ),




    );
  }
}
