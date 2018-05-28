import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: new MyHomePage(title: 'NoteApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List data;

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body:ListView.builder(
             itemCount: 10,

           itemBuilder: (BuildContext context, int index){
               return
                 new GestureDetector(
               child: new  Container(
                 color: const Color(0xFF009688),
                 child:
                 new Container(key: null,

                   decoration: new BoxDecoration(
                     gradient: new LinearGradient(
                         colors: [const Color(0xFF009688), const Color(0xFF000000)],
                         begin: new FractionalOffset(0.0, 0.7),
                         end: new FractionalOffset(0.7, 0.0),
                         stops: [0.4,1.0],
                         tileMode: TileMode.clamp),
                     border: const Border(
                         bottom: const BorderSide(width: 2.0, color: Colors.black54)),
                   ),


                   height: 120.0,
                   alignment: Alignment.bottomRight,
                   child:
                   new Text(
                     "Notka "+(index+1).toString(),
                     style: new TextStyle(fontSize: 45.0,
                         color: Colors.white,
                         fontWeight: FontWeight.w500,
                         fontFamily: "Roboto"),
                   ),
                   padding: const EdgeInsets.all(2.0),

                 ),
               ),
                     onTap: () {
                 print("działa");
                 print(index);
                 Navigator.push(
                     context,
                     new MaterialPageRoute(builder: (context) => new SecondScreen()),);
               },
                 );

           },

            )
        );
  }
  }

class SecondScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new TextFormField(initialValue: 'App Name'
            ,
           style: TextStyle(
             fontSize: 25.0,
             fontStyle: FontStyle.normal,
             fontWeight: FontWeight.bold
           ),
          textAlign: TextAlign.center,
        ),
      ),
      drawer: new Drawer(

        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("Adam"),
              accountEmail: new Text("Adam.Ginna.work@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: const Color(0xFF009688),
                child: new Text("A",
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
              ),
            ),
            
          ],


        ),
      ),
      body:
          new Padding(
            padding: new EdgeInsets.only(bottom: 24.0,left: 4.2),

       child: new TextFormField(
         maxLines: 1000000,
         autofocus: true,
         autovalidate: false,
         initialValue: "działa",
       style: new TextStyle(fontSize:20.0,
           color: const Color(0xFF000000),
           fontWeight: FontWeight.w400,
           fontFamily: "Roboto")
      )
          ),
      bottomNavigationBar: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
              icon: const Icon(Icons.share),
              title: new Text('Share'),
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.save),
              title: new Text('Save'),
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              title: new Text('sda'),
            )
          ]

      ),
    );
  }


}
