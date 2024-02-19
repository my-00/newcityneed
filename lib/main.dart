import 'package:flutter/material.dart';
// import 'package:cityneed/widgets/header.dart';
// import 'package:cityneed/widgets/custom_scaffold.dart';
import 'package:cityneed/models/premierpage.dart';
import 'package:cityneed/models/dexiemepage.dart';
import 'package:cityneed/models/troisiemepage.dart';
import 'package:cityneed/models/quatriémepage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  int _currentPageIndex = 0;
  final List<Widget> _pages = [
    MyCustomForm(), 
    Myquestion(), 
    Mylogo(), 
    Myreseux(), 
  ];

  void _saveData() {
    // Mettez ici le code pour enregistrer tous les éléments entrés
    // Cette méthode sera appelée lorsque l'utilisateur appuie sur "OK"
    // Vous pouvez accéder aux éléments entrés dans chaque page en fonction de vos besoins
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomHeader(),
      body: _pages[_currentPageIndex],
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        height: 25.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 20), // Espace avant les cercles
            for (int i = 0; i < _pages.length; i++)
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentPageIndex = i;
                  });
                },
                child: Container(
                  width: _currentPageIndex == i ? 20.0 : 10.0,
                  height: _currentPageIndex == i ? 20.0 : 10.0,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPageIndex == i ? Color.fromARGB(255, 249, 33, 242) : Color.fromARGB(255, 201, 201, 201),
                  ),
                ),
              ),

            Spacer(), // Pour pousser le titre "Suivant" à droite
            
            if (_currentPageIndex < _pages.length - 1) // Vérifie si ce n'est pas la dernière page
              Padding(
                padding: EdgeInsets.only(right: 22.0), // Décalage vers la gauche
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (_currentPageIndex < _pages.length - 1) {
                        _currentPageIndex++;
                      }
                    });
                  },
                  child: Text(
                    'Suivant',
                    style: TextStyle(
                      color: Color.fromARGB(255, 242, 20, 235),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
            if (_currentPageIndex == _pages.length - 1) // Vérifie si c'est la dernière page
              TextButton(
                onPressed: _saveData,
                child: Text(
                  'OK',
                  style: TextStyle(
                    color: Color.fromARGB(255, 242, 20, 235),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}


//   } Color.fromARGB(255, 242, 20, 235) 