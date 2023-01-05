import 'package:flutter/material.dart';
import 'package:soedating/screens/createaccount.dart';
import 'package:soedating/screens/loginpage.dart';

class Policies extends StatelessWidget {
  const Policies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body:  Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(15.0),
       child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Soedating est une application de rencontre amoureuse dans le respect et la sincerité",
            textAlign: TextAlign.center,
             style: TextStyle(fontSize:20.0, fontWeight: FontWeight.bold, 
            )),
          SizedBox(height: 40.0,),
          Text("Pour utiliser cette application voici quelques regles que vous devez respecter ou alors nous nous verrons obliger de bloquer votre compte."),
          SizedBox(height: 20.0,),
          ListTile(
          title:  Text('Remplissez les informations requises lors de l inscription'),
          leading: Radio<String>(
            value: "",
            groupValue: "Ces informations sont utilisées pour vous proposer des utilisateurs qui correspondent a votre critere de crecherches",
            onChanged: null,
          ),
        ),
        ListTile(
          title:  Text('Ajoutez au moins une photo de vous sur laquelle votre visage est visible'),
          leading: Radio<String>(
            value: "",
            groupValue: "L experience a montre que les utilisateurs avec de plus belles photos ont plus de chances de faire de belles rencontres",
            onChanged: null,
          ),
        ),
        ListTile(
          title:  Text('Comportez vous de facon respectueuse envers les autres utilisateurs de la plateforme'),
          leading: Radio<String>(
            value: "",
            groupValue: "Le respect et la sincerite sont les qualités requises pour trouver rapidement l'amesoeur.",
            onChanged: null,
          ),
        ),
        
        ],
       //child: Text("Soedating est une application de rencontre amoureuse dans le respect et la sincerité"),
     ),
    ),
    floatingActionButton:  FloatingActionButton(
        onPressed: (){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
        },
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 121, 5, 105),
        child: const Icon(Icons.check),
      ),
    );
  }
}