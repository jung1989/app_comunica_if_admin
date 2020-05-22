import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  List<String> mensagens = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        centerTitle: true,
        title: Text("Principal"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.sort),
          ),
          IconButton(
            icon: Icon(Icons.markunread),
          ),
          IconButton(
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: listaMensagens()
    );
  }



  Widget listaMensagens() {

    mensagens.add("Mensagem 1");
    mensagens.add("Mensagem 2");
    mensagens.add("Mensagem 3");
    return ListView.builder(
        padding: EdgeInsets.all(15.0),
        itemCount: mensagens.length,
        itemBuilder: (context, index) {
          return _mensagemCard(context, index);
        });
  }

  Widget _mensagemCard(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {

      },
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Icon(Icons.email),
              SizedBox(
                width: 10,
              ),
              Column(
                children: <Widget>[
                  Text(mensagens[index],
                    style: TextStyle(fontSize: 25),),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
