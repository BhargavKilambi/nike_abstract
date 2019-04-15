import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:badges/badges.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nike Shopping',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  static IconData bArr =IconData(
    0x2190, fontPackage: 'CupertinoIconsr', matchTextDirection: true 
  );
  void _incrementCounter() {
    setState(() {
  _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(bArr,color: Colors.black,size: 30.0,),
        backgroundColor: Colors.white10,
        elevation: 0.0,
      ),
      body: ListView(
        children:<Widget>[
        Row(
        children: <Widget>[
      Container(
        height: 150.0,
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Porshe Design',
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.0
                ),
              ),
              SizedBox(
                width: 10.0,
                height: 10.0,
              ),
              Text(
                'Light race slip - on \n design',
                style: TextStyle(
                  fontSize:16.0,
                  fontFamily: 'Joeseph',
                  fontWeight: FontWeight.w200,
                  letterSpacing: 1.0
                ),
                
              ),
            ],
          ),
        ),
        Container(
          height: 150.0,
          width: 120.0,
          padding: EdgeInsets.all(15.0),
          child: 
          FlatButton(
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(15),
                    spreadRadius: 5.0
                  )
                ],
              ),
              child: IconButton(
                icon: Icon(Icons.favorite_border,color:Colors.blue),
                onPressed: (){},
                splashColor: Colors.transparent,
              ),
            ),
            
            onPressed: (){},
            splashColor: Colors.transparent,
            
          ),
        )
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              
                Container(
            width:150.0,
            height: 170.0,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.7),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            margin: EdgeInsets.all(50.0),
          ),
          Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius:2.0,
                      blurRadius: 1.0
                    )
                  ]
                ),
                height: 35.0,
                width: 35.0,
                margin: EdgeInsets.only(top: 45,left:45),
                child: Icon(Icons.add),
              )
              ,
              Container(
            width:200.0,
            height: 200.0,
            margin: EdgeInsets.only(left:60),
          child:Image.asset('assets/images/porshe1.png'
          ,fit: BoxFit.cover),
          )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text(
            '\$84',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 40.0
            ),
          ),
          Text(
            'Review:',
            style: TextStyle(
              fontFamily: 'Joeseph',
              fontSize: 15.0
            ),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.star,size: 10.0,),
              Icon(Icons.star,size: 10.0,),
              Icon(Icons.star,size: 10.0,),
              Icon(Icons.star_half,size: 10.0,),
              Icon(Icons.star_border,size: 10.0,),
            ],
          )
            ],
          )
        ],
      ),
      shoeColumn('assets/images/adidas1.png', 35, 'some'),
      shoeColumn('assets/images/porshe1.png', 35, 'some')
        ],
      )

    );
  }

  Widget shoeColumn(String title,int price,String color) {
    return  Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              
                Container(
            width:150.0,
            height: 170.0,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.7),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            margin: EdgeInsets.all(50.0),
          ),
          Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius:2.0,
                      blurRadius: 1.0
                    )
                  ]
                ),
                height: 35.0,
                width: 35.0,
                margin: EdgeInsets.only(top: 45,left:45),
                child: Icon(Icons.add),
              )
              ,
              Container(
                height: 250.0,
                width: 250.0,
          child:Image.asset(title
          ,fit: BoxFit.contain,),
          )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text(
            '\$'+price.toString(),
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 40.0
            ),
          ),
          Text(
            'Review:',
            style: TextStyle(
              fontFamily: 'Joeseph',
              fontSize: 15.0
            ),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.star,size: 10.0,),
              Icon(Icons.star,size: 10.0,),
              Icon(Icons.star,size: 10.0,),
              Icon(Icons.star_half,size: 10.0,),
              Icon(Icons.star_border,size: 10.0,),
            ],
          )
            ],
          )
        ],
      );
  }
}
