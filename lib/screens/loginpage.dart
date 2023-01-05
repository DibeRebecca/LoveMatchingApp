// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:soedating/screens/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() {
    return LoginPageState();
  }
}
class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
      height: MediaQuery.of(context).size.height,
      //height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          colorFilter:  ColorFilter.mode(
              Colors.black.withOpacity(0.04), BlendMode.dstATop),
          image: const AssetImage('assets/images/loves.png'),
          fit: BoxFit.cover,
        ),
      ),
      child:  Column(
        children: <Widget>[
          
          Container(
            padding: const  EdgeInsets.all(70.0),
            child: const Center(
              
              child: Image(
                image: AssetImage('assets/images/amour.png'),
              ),
              /*child:  Icon(
                Icons.heart_broken,
                color: Color.fromARGB(255, 204, 3, 144),
                size: 50.0,
              ),*/
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
             children: const [
                Text(
            "Soedating",
            textAlign: TextAlign.center,
             style: TextStyle(fontSize:20.0, fontWeight: FontWeight.bold, 
            )),
             ],
          ),
          const SizedBox(height: 40.0),
           Row(
            children: const <Widget>[
             
               Expanded(
                child:  Padding(
                  padding:  EdgeInsets.only(left: 40.0),
                  child:  Text(
                    "Telephone",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 204, 3, 144),
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
           Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Color.fromARGB(255, 204, 3, 144),
                    width: 0.5,
                    style: BorderStyle.solid),
              ),
            ),
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child:  Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                 Expanded(
                  child: TextField(
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '+22897864437',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 24.0,
          ),
           Row(
            children: const <Widget>[
               Expanded(
                child:  Padding(
                  padding:  EdgeInsets.only(left: 40.0),
                  child:  Text(
                    "mot de passe",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 204, 3, 144),
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
           Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Color.fromARGB(255, 204, 3, 144),
                    width: 0.5,
                    style: BorderStyle.solid),
              ),
            ),
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child:  Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                 Expanded(
                  child: TextField(
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '*********',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 24.0,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding:  const EdgeInsets.only(right: 20.0),
                child:  TextButton(
                  onPressed: (){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  SignupPage()),
        );
        },
                  child:  const  Text(
                    "Mot de passe oublié ?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 204, 3, 144),
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ],
          ),
           Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            alignment: Alignment.center,
            child:  Row(
              children: <Widget>[
                 Expanded(
                  child:  TextButton(
                   /* shape:  RoundedRectangleBorder(
                      borderRadius:  BorderRadius.circular(30.0),
                    ),*/
                   /*color:  const Color.fromARGB(255, 204, 3, 144),*/
                    onPressed: () => {},
                    child:  Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                           Expanded(
                            child: Text(
                              "Connexion",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
           Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            alignment: Alignment.center,
            child: Row(
             /* children: <Widget>[
                 Expanded(
                  child:  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(border: Border.all(width: 0.25)),
                  ),
                ),
                const Text(
                  "ou se connecter avec",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 Expanded(
                  child:  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(border: Border.all(width: 0.25)),
                  ),
                ),
              ],
            */),
          ),
           Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            child:  Row(
              children: <Widget>[
                 Expanded(
                  child:  Container(
                    margin: const EdgeInsets.only(right: 8.0),
                    alignment: Alignment.center,
                    child:  Row(
                      children:const <Widget>[
                         /*Expanded(
                          child:  FlatButton(
                            shape:  RoundedRectangleBorder(
                              borderRadius:  BorderRadius.circular(30.0),
                            ),
                            color: const Color(0Xff3B5998),
                            onPressed: () => {},
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                 Expanded(
                                  child:  TextButton(
                                    onPressed: null,
                                  
                                    child:  Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: const <Widget>[
                                        Icon(
                                          IconData(0xea90,
                                              fontFamily: 'icomoon'),
                                          color: Colors.white,
                                          size: 15.0,
                                        ),
                                        Text(
                                          "Facebook",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      */],
                    ),
                  ),
                ),
                 Expanded(
                  child:  Container(
                    margin: const EdgeInsets.only(left: 8.0),
                    alignment: Alignment.center,
                    child:  Row(
                      children: const <Widget>[
                        /* Expanded(
                          child:  FlatButton(
                            shape:  RoundedRectangleBorder(
                              borderRadius:  BorderRadius.circular(30.0),
                            ),
                            color: const Color.fromARGB(255, 204, 3, 144),
                            onPressed: () => {},
                            child:   Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                 Expanded(
                                  child:  TextButton(
                                    onPressed: null,
                                   
                                    child:  Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: const <Widget>[
                                        Icon(
                                           IconData(0xea88,
                                              fontFamily: 'icomoon'),
                                          color: Colors.white,
                                          size: 15.0,
                                        ),
                                        Text(
                                          "Google",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      */],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
  }

