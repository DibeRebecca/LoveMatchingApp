import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:
        IconButton( onPressed: (){
          Navigator.pop(context);
        },icon:const Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                         const Text ("Creer un compte", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 204, 3, 144),
                        ),),
                       const  SizedBox(height: 20,),
                        Text("Commencez votre aventure amoureuse ici",style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700],
                          
                        ),),
                        const SizedBox(height: 30,)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40
                      ),
                      child: Column(
                        children: [
                          makeInput(label: "Nom"),
                          makeInput(label: "Prenom",),
                          makeInput(label: "Age",),
                          makeInput(label: "Taille"),
                          makeInput(label: "  Morphologie/silhouette"),
                          makeInput(label: "Je vis",obsureText: true),
                          makeInput(label: "Profession"),
                          makeInput(label: "Niveau d etude",),
                          makeInput(label: "Nombre d'enfants",),
                          makeInput(label: "Langues"),
                          makeInput(label: "  Ethnie"),
                          makeInput(label: "Biographie",obsureText: true),
                        ],
                      ),
                    ),
                    Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        padding: const EdgeInsets.only(top: 3,left: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: const Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black)
                            )
                        ),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height:60,
                          onPressed: (){},
                          color: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: const Text("Sign Up",style: TextStyle(
                            fontWeight: FontWeight.w600,fontSize: 16,

                          ),),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:const  [
                        Text("Already have an account? "),
                        Text("Login",style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),),
                      ],
                    )
                  ],

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget makeInput({label,obsureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:  [
       Text(label,style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 204, 3, 144),
      ),),
      const SizedBox(height: 5,),
      TextField(
        obscureText: obsureText,
        decoration: const InputDecoration(
          contentPadding:  EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(10, 10, 10, 10),
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide( color:Color.fromARGB(10, 10, 10, 10),)
          ),
        ),
      ),
      const SizedBox(height: 30,)

    ],
  );
}