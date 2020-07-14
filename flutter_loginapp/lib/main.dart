import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(MusicApp());
}



class MusicApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 375,
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/background4.png'),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                ),
                Positioned(
                  height: 380,
                  width: width+10,
                  child: (Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/backgroung2.png'),
                            fit: BoxFit.fill
                        )
                    ),
                  )),
                )
              ],
            ),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Sign In", style: TextStyle(color: Colors.deepOrangeAccent , fontWeight: FontWeight.bold, fontSize: 40),),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 15,
                        offset: Offset(0,10),

                      )
                    ]
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(
                            color: Colors.grey
                          ))
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.black54,
                              ),
                            hintText: "Enter your Mail",
                            hintStyle: TextStyle(color: Colors.black26)
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14.0),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black54,
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.black26)
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Center(child: Text("Forgot Password?" , style: TextStyle(color: Colors.black87),)),
                SizedBox(height: 25,),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.deepOrangeAccent,
                  ),
                  child: Center(
                    child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 20 ,fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(height: 20,),
                Center(child: Text("Create Account !" , style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold),)),
                SizedBox(height: 20),
                Center(child: Text("OR" , style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 15, fontWeight: FontWeight.bold),)),
                SizedBox(height: 10),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 80),
                      Container(
                        height: 60.0,
                        width: 60,
                        //padding:  EdgeInsets.symmetric(vertical: 30.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                blurRadius: 6.0,
                              ),
                            ],
                            image: DecorationImage(
                              image: AssetImage('assets/images/google-logo-9808.png'),
                            )
                        ),
                      ),
                      SizedBox(width: 60),
                      Container(
                        height: 60.0,
                        width: 60,
                        //padding:  EdgeInsets.symmetric(vertical: 30.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                blurRadius: 6.0,
                              ),
                            ],
                            image: DecorationImage(
                              image: AssetImage('assets/images/facebook.png'),
                            )
                        ),
                      ),
                    ],

                  ),
                ),

              ],
            ),
          )
        ],
      ),

    );
  }
}