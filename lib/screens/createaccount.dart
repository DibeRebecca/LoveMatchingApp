import "package:flutter/material.dart";

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  CreateAccountState createState() {
    return CreateAccountState() ; 
}
}

class CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15.0),
      height: MediaQuery.of(context).size.height,
      child : Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Creation de Compte",
            textAlign: TextAlign.center,
             style: TextStyle(fontSize:20.0, fontWeight: FontWeight.bold, 
            )),
          const SizedBox(height:40.0)
,        Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'renseignez le champs';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
    // Validate returns true if the form is valid, or false otherwise.
              if (_formKey.currentState!.validate()) {
      // If the form is valid, display a snackbar. In the real world,
      // you'd often call a server or save the information in a database.
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Data')),
              );
    }
  },
  child: const Text('Submit'),
),
        ],
      ),
    )])));
  }
}