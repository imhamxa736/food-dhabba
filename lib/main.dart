import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15,left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  iconSize: 20.0,
                  onPressed: (){}
                ),

                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.restaurant_menu),
                          color: Colors.white,
                          iconSize: 20.0,
                          onPressed: (){}
                      ),

                      IconButton(
                          icon: Icon(Icons.settings),
                          color: Colors.white,
                          iconSize: 20.0,
                          onPressed: (){}
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
       Container(
         child: Padding(
           padding: const EdgeInsets.only(left: 20.0,top: 35.0),
           child: Row(
             children: <Widget>[
               Text('Food',style: TextStyle(
                 color: Colors.red,
                 fontWeight: FontWeight.bold,
                 fontSize: 35.0
               )
               ),

               SizedBox(
                 width: 5.0,
               ),

               Text('Dhabba',style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 25.0
               ),

               )

             ],
           ),
         ) ,
       ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: MediaQuery.of(context).size.height-185.0,
              decoration: BoxDecoration(

                      color: Colors.white,

                borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0),)
              ),
              child: ListView(
                    padding: EdgeInsets.only(left: 25.0,right: 20.0),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: Container(

                      height: MediaQuery.of(context).size.height-290.0,
child: ListView(
  children: <Widget>[

food_dhabba('assets/apic.jpg','Rice','\$10.00'),
    food_dhabba('assets/bpic.jpg','Meat','\$20.00'),
    food_dhabba('assets/cpic.jpg','Mutton','\$15.00'),
    food_dhabba('assets/dpic.jpg','Pasta','\$5.00'),
    food_dhabba('assets/epic.jpg','Sandwich','\$3.00'),

  ],
),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 65.0,
                          height: 55,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Center(
                            child: Icon( Icons.search,color: Colors.black,),
                          ),
                        ),

                        Container(
                          width: 65.0,
                          height: 55,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Center(
                            child: Icon(Icons.account_balance_wallet,color: Colors.black,),

                          ),
                        ),

                        Container(
                          width: 100.0,
                          height: 55,

                          decoration: BoxDecoration(
                            color: Colors.black,
                              border: Border.all(
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Center(
                            child: Text('Checkout',style: TextStyle(
                              color: Colors.white
                            ),),
                          ),
                        ),

                      ],
                    ),
                  )
                ],

              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget food_dhabba (String picpath, String foodname, String price){
  return Padding(
    padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
    child: InkWell(
      onTap: (){

      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[

                Hero(
                  tag: picpath,
                  child: Image(
                    image: AssetImage(picpath),
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
SizedBox(width: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      foodname,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                    ),

                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 14.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold
                    ),
                    ),

                  ],
                )

              ],
            ),
          ),
          IconButton(
            icon: Icon( Icons.add_circle),
            color: Colors.black,
            onPressed: (){},
          )
        ],
      ),
    ),
  );
}