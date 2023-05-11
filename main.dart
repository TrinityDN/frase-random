import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';




void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: _HomeStateful(),
    ),
  );
 
}




class _HomeStateful extends StatefulWidget {


  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}


class _HomeStatefulState extends State<_HomeStateful> {




  List<String> frases = ["Do nosso amor a gente é que sabe, pequena", "Tua flor me deu alguém pra amar", "E nem uma vassoura tu passa no chão", "Temos nosso próprio tempo", "Mas eu não ficaria bem na sua estante", "Mulher bonita mexe com meu coração"];
  var i = 0;


  @override
  Widget build(BuildContext context) {
    print("Build chamado");
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases de Música'),
        backgroundColor: Colors.teal[600],
      ),
   
   


      body: Center(
        child: Container(
          color: Color(0xFFFEF0E4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Image.asset("../images/logo.png"),
            //FRASE RANDÔMICA
            Text(frases[i],
            style: TextStyle(fontSize: 22,
            fontFamily: f),
            textAlign: TextAlign.justify,
            ),
             ElevatedButton(
              onPressed: () {
                setState(() {
                  if(i < frases.length - 1){
                    i++;
                  }else{
                    i = 0;
                  }
                });
              },
              child: Text("Gerar frase",
              style: TextStyle(
                fontSize: 18,
                backgroundColor: Colors.red[700]
              ),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.red[700],),
            )
            ],
            ),
        ),
          ),




      bottomNavigationBar: BottomAppBar(
        color: Colors.teal[600],
        child: Padding(padding: EdgeInsets.all(16),
        child: Row(children: [
        ],),
        ),
      ),
    );
  }
}











