import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landing Page',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: GirisSayfasi(),
    );
  }
}

class GirisSayfasi extends StatelessWidget {
  const GirisSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 45.0),
              Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/logo.png"))),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Muszk",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 35.0,
              ),
              Material(
                borderRadius: BorderRadius.circular(20.0),
                elevation: 7.0,
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Mail ile giriş",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        width: double.infinity,
                        height: 52.0,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Twitter ile giriş",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                height: 52.0,
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Gmail ile giriş",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                height: 52.0,
                                decoration: BoxDecoration(
                                    color: Colors.red.shade400,
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.amber.shade300,
                            Colors.black,
                          ]),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 70.0,
                  height: 180.0,
                ),
              )
            ],
          ),
        ));
  }
}
