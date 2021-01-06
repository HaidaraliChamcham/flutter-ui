import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Protto task',
      theme: ThemeData(
        fontFamily: 'Montserrat-Regular',
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool smallCard = false;
  bool smallCard1 = false;

  bool pageTwoCard = false;
  bool pageTwoCard1 = false;

  bool pageThreeCard = false;
  bool pageThreeCard1 = false;

  bool selectService = false;
  bool thirdPageLink = false;
  bool fourth = false;


  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  pageOne() {
    return new Center(
      child: new ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Color(hexColor('#EAC956')),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    new Text(
                      'Select bike',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    new Container(
                      height: 90.0,
                      child: new ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Card(
                              shape: smallCard
                                  ? RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Color(
                                        hexColor('#F15d24')),
                                    width: 5.0),
                                borderRadius:
                                BorderRadius.circular(5),
                              )
                                  : null,
                              elevation: 5,
                              child: InkWell(
                                splashColor:
                                Colors.blue.withAlpha(30),
                                onTap: () => setState(() =>
                                smallCard = !smallCard),
                                child: Container(
                                  width: 300,
                                  padding: EdgeInsets.all(6),
                                  child: Text(
                                    'Royal Enfield               Classic Gunmetal Grey',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              shape: smallCard1
                                  ? RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Color(
                                        hexColor('#F15d24')),
                                    width: 5.0),
                                borderRadius:
                                BorderRadius.circular(5),
                              )
                                  : null,
                              elevation: 5,
                              child: InkWell(
                                splashColor:
                                Colors.blue.withAlpha(30),
                                onTap: () => setState(() =>
                                smallCard1 = !smallCard1),
                                child: Container(
                                  padding: EdgeInsets.all(6),
                                  width: 300,
                                  child: Text(
                                    'Royal Enfield               Classic Gunmetal Grey',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          color: Color(hexColor('#403A35')),
                          child: Text(
                            'Continue',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () => smallCard || smallCard1 ? setState(
                                  () => selectService = !selectService) : '',
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        RaisedButton(
                          child: Text(
                            'Add new',
                            style: TextStyle(
                                color: Color(hexColor('#F15d24'))),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          onPressed: () =>
                          smallCard1 && smallCard
                              ? ''
                              : null,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              color: Color(hexColor('#EAC956')).withOpacity(0.2),
              padding: const EdgeInsets.all(15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Select Your Service',
                style: TextStyle(color: Colors.black45, fontSize: 20),
              ),
              onPressed: () {
                //todolist
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              padding: const EdgeInsets.all(15.0),
              color: Color(hexColor('#EAC956')).withOpacity(0.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Select Your Service',
                style: TextStyle(color: Colors.black45, fontSize: 20),
              ),
              onPressed: () {
                //todolist
              },
            ),
          ),
        ],
      ),
    );
  }

  pageTwo()
  {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new ListView(
          children: <Widget>[
            new Container(
              height: 100.0,
              child: new Column(
                children: [
                  Card(
                    color: Color(hexColor('#EAC956')),
                    child: Container(
                      width: 330,
                      height: 45,
                      child: Column(
                        children: [
                          Text('Royal Enfiel'),
                          Text('Classic Gun Metal Grey', style: TextStyle(fontSize: 20),)
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            new Container(
              height: 600.0,
              child: new Column(
                children: [
                  Card(
                    color: Color(hexColor('#EAC956')),
                    child: Container(
                      width: 330,
                      height: 530,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [

                          Text('Select Your Service', style: TextStyle(fontSize: 20),),
                          new Container(
                            height: 400.0,
                            child: new ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Card(
                                    shape: pageTwoCard
                                        ? RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Color(
                                              hexColor('#F15d24')),
                                          width: 5.0),
                                      borderRadius:
                                      BorderRadius.circular(5),
                                    )
                                        : null,
                                    elevation: 5,
                                    child: InkWell(
                                      splashColor:
                                      Colors.blue.withAlpha(30),
                                      onTap: () => setState(() =>
                                      pageTwoCard  = !pageTwoCard ),
                                      child: Container(
                                        width: 250,
                                        padding: EdgeInsets.all(6),
                                        child: Text(
                                          '    Service Type 1',
                                          style: TextStyle(fontSize: 25),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Card(
                                    shape: pageTwoCard1
                                        ? RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Color(
                                              hexColor('#F15d24')),
                                          width: 5.0),
                                      borderRadius:
                                      BorderRadius.circular(5),
                                    )
                                        : null,
                                    elevation: 5,
                                    child: InkWell(
                                      splashColor:
                                      Colors.blue.withAlpha(30),
                                      onTap: () => setState(() =>
                                      pageTwoCard1 = !pageTwoCard1),
                                      child: Container(
                                        padding: EdgeInsets.all(6),
                                        width: 250,
                                        child: Text(
                                          '     Service Type 2',
                                          style: TextStyle(fontSize: 25),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                          RaisedButton(
                            color: Color(hexColor('#403A35')),
                            child: Text(
                              'Continue',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () => pageTwoCard || pageTwoCard1 ? setState(
                                    () => thirdPageLink = !thirdPageLink) : '',
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  checkCirle(){
    return new Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.check_circle,
          color: Colors.blue,
        ),
      ),
    );
  }

  pageThree() {
    return Container(
      child: new Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Center(
          child: new ListView(
            children: <Widget>[
              new Container(
                height: 130.0,
                child: new Column(
                  children: [
                    Card(
                      color: Color(hexColor('#EAC956')),
                      child: Container(
                        width: 330,
                        height: 45,
                        child: Column(
                          children: [
                            Text('Royal Enfiel'),
                            Text('Classic Gun Metal Grey', style: TextStyle(fontSize: 20),)
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Color(hexColor('#EAC956')),
                      child: Container(
                        width: 330,
                        height: 55,
                        child: Column(
                          children: [
                            Text(''),
                            Center(child: Text('Service Type 1', style: TextStyle(fontSize: 20),))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                height: 550.0,
                child: new Column(
                  children: [
                    Card(
                      color: Color(hexColor('#EAC956')),
                      child: Container(
                        width: 330,
                        height: 530,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [

                            Text('Select Your Service', style: TextStyle(fontSize: 20),),
                            new Container(
                              height: 400.0,
                              child: new ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Card(
                                      shape: pageThreeCard
                                          ? RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(
                                                hexColor('#F15d24')),
                                            width: 5.0),
                                        borderRadius:
                                        BorderRadius.circular(5),
                                      )
                                          : null,
                                      elevation: 5,
                                      child: InkWell(
                                        splashColor:
                                        Colors.blue.withAlpha(30),
                                        onTap: () => setState(() =>
                                        pageThreeCard = !pageThreeCard),
                                        child: Container(
                                          width: 250,
                                          padding: EdgeInsets.all(6),
                                          child: Column(
                                            children: [
                                              Text(
                                                '3 Services a Year',
                                                style: TextStyle(fontSize: 25, color: Color(hexColor("#F15d24"))),
                                              ),


                                              Column(
                                                children: [
                                                  checkCirle(),
                                                  checkCirle(),
                                                  checkCirle(),
                                                  checkCirle(),
                                                  checkCirle(),
                                                  checkCirle(),
                                                  checkCirle(),
                                                  Center(child: Text('₹100/mo', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),

                                                ],
                                              )
                                            ],
                                          ),

                                        ),
                                      ),
                                    ),
                                    Card(
                                      shape: pageThreeCard1
                                          ? RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(
                                                hexColor('#F15d24')),
                                            width: 5.0),
                                        borderRadius:
                                        BorderRadius.circular(5),
                                      )
                                          : null,
                                      elevation: 5,
                                      child: InkWell(
                                        splashColor:
                                        Colors.blue.withAlpha(30),
                                        onTap: () => setState(() =>
                                        pageThreeCard1 = !pageThreeCard1),
                                        child: Container(
                                          padding: EdgeInsets.all(6),
                                          width: 250,
                                          child: Column(
                                            children: [
                                              Text(
                                                '4 Services a Year',
                                                style: TextStyle(fontSize: 25, color: Color(hexColor("#F15d24"))),
                                              ),
                                              pageThreeCard1
                                                  ? Column(
                                                children: [
                                                  checkCirle(),
                                                  checkCirle(),
                                                  checkCirle(),
                                                  checkCirle(),
                                                  checkCirle(),
                                                  checkCirle(),
                                                  checkCirle(),

                                                ],
                                              ): Container(
                                                height: 275,
                                              ),
                                              Center(child: Text('₹249/mo', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            RaisedButton(
                              color: Color(hexColor('#403A35')),
                              child: Text(
                                'Continue',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () =>  pageThreeCard|| pageThreeCard1 ? setState(
                                      () => fourth = !fourth) : '',
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  pageFour() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new ListView(
          children: <Widget>[
            new Container(
              child: Column(
                children: [
                  Card(
                    color: Color(hexColor('#EAC956')),
                    child: Container(
                      width: 330,
                      height: 43,
                      child: Column(
                        children: [
                          Text('Royal Enfiel'),
                          Text('Classic Gun Metal Grey', style: TextStyle(fontSize: 18),)
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(hexColor('#EAC956')),
                    child: Container(
                      width: 330,
                      height: 55,
                      child: Column(
                        children: [
                          Text(''),
                          Text('Service Type1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(hexColor('#EAC956')),
                    child: Container(
                      width: 330,
                      height: 55,
                      child: Column(
                        children: [
                          Text(''),
                          Text('3 Service a Year', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(hexColor('#EAC956')),
                    child: Container(
                      width: 330,
                      height: 380,
                      child: Column(
                        children: [
                          Center( child: Text('Order Summary', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
                          Text(''),
                          Text('3 Service a Year for Royal Enfield                 ', style: TextStyle( color: Color(hexColor('#F15d24')),fontSize :15, fontWeight: FontWeight.bold),),
                          Text(''),
                          Text(''),
                          Text('Amount to be paid every month ......         ₹xxx', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                          Text(''),
                          Text('Amount due now .............................         ₹xxx', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)

                        ],
                      ),
                    ),
                  ),
                  Text(''),
                  Container(
                    width: 330,
                    child: RaisedButton(
                      color: Color(hexColor('#F15d24')),
                      padding: const EdgeInsets.all(15.0),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'Checkout',
                        style: TextStyle( color:Colors.white,fontSize: 18, ),
                      ),
                      onPressed: () {
                        //todolist
                      },
                    ),
                  ),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(hexColor('#05234B')),
      appBar: AppBar(backgroundColor: Color(hexColor('#05234B')),

        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person,
              color: Color(hexColor('#EAC956')),
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: !selectService? pageOne():
      !thirdPageLink
          ? pageTwo(): !fourth ? pageThree()  : pageFour(),


    );
  }
}
