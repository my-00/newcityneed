import 'package:flutter/material.dart';
import 'package:cityneed/association/widgets/custom_scaffold.dart'; // Importation du widget de Scaffold personnalisé
import 'package:cityneed/association/widgets/header.dart'; // Importation du widget d'en-tête
// import 'package:icons_plus/icons_plus.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myreseux(),
    );
  }
}

class Myreseux extends StatefulWidget {
  @override
  _MyreseuxState createState() => _MyreseuxState();
}

class _MyreseuxState extends State<Myreseux> {
    String selectedActivity = 'Faire défiler';

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      // Utilisation du widget de Scaffold personnalisé
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              CustomHeader(), // Affichage de l'en-tête personnalisé
              SizedBox(height: 1.5), // Ajoute de l'espace entre l'en-tête et le conteneur de recherche
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 28),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Vous avez déjà conquis les réseaux\nsociaux, ou bien c\'est le moment de\ndevenir la star du web ?',
                            style: TextStyle(
                              fontSize: 23.0,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                      SizedBox(height: 0),                  

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 33.0),
                        child: Text(
                          ' Dans tous les cas, on s\'occupe de\ncréer CE LIEN MAGIQUE avec votre',
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(height: 0),                  

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 75.0),
                        child: Text(
                          'Nouvelle tribu ☀️🚀',
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Miraculous&Christmas', 
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 3),

             Container(
                height: 4.5,
                width: MediaQuery.of(context).size.width * 0.7,
                color: Color(0xFFFF40FF),
              ),
              // SizedBox(height: 20), // Ajoute de l'espace entre l'en-tête et le conteneur de recherche
        ],
      ),

      
          Positioned(
  left: 0,
  right: 0,
  bottom: 0,
  child: Container(
decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0), // Arrondi le coin supérieur gauche
                topRight: Radius.circular(20.0), // Arrondi le coin supérieur droit
              ),
            ),
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
    height: 518,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.0),

Row(
  children: [
    Container(
      width: 29.0,
      height: 28.0,
      child: Image.asset(
        'assets/images/reseaux/facebook_logo.png',
        fit: BoxFit.contain, // Pour s'assurer que l'image s'adapte correctement au conteneur
      ),
    ),
    SizedBox(width: 4.0),
    Text(
      "FACEBOOK",
      style: TextStyle(
        color: Color.fromARGB(255, 73, 73, 73),
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        fontFamily: 'Miraculous',
        fontSize: 20.0,
      ),
    ),
  ],
),

SizedBox(height: 5.0),

Container(
  padding: EdgeInsets.symmetric(horizontal: 12.0),
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 253, 211, 250),
    boxShadow: [
      BoxShadow(
        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 1,
        offset: Offset(3, 2),
      ),
    ],
  ),
  child: Container(
    height: 30,
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Le nom de votre page',
        hintStyle: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 190, 189, 189)),
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(10.0),
      ),
      textAlignVertical: TextAlignVertical.top, // Alignement du texte vers le haut
      style: TextStyle(fontSize: 15.0), // Modifie la taille de la police du texte de l'utilisateur
      textAlign: TextAlign.left, // Alignement du texte à gauche
    ),
  ),
),

    SizedBox(height: 20.0),

Row(
  children: [
    Container(
      width: 29.0,
      height: 28.0,
      child: Image.asset(
        'assets/images/reseaux/instagram_logo.png',
        fit: BoxFit.contain, // Pour s'assurer que l'image s'adapte correctement au conteneur
      ),
    ),
    SizedBox(width: 4.0),
    Text(
      "INSTAGRAM",
      style: TextStyle(
        color: Colors.black,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        fontFamily: 'Miraculous',
        fontSize: 20.0,
      ),
    ),
  ],
),

SizedBox(height: 5.0),

Container(
  padding: EdgeInsets.symmetric(horizontal: 12.0),
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 253, 211, 250),
    boxShadow: [
      BoxShadow(
        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 1,
        offset: Offset(3, 2),
      ),
    ],
  ),
  child: Container(
    height: 30,
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Le nom de votre page',
        hintStyle: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 190, 189, 189)),
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(10.0),
      ),
      textAlignVertical: TextAlignVertical.top, // Alignement du texte vers le haut
      style: TextStyle(fontSize: 15.0), // Modifie la taille de la police du texte de l'utilisateur
      textAlign: TextAlign.left, // Alignement du texte à gauche
    ),
  ),
),

      SizedBox(height: 20.0),

Row(
  children: [
    Container(
      width: 29.0,
      height: 28.0,
      child: Image.asset(
        'assets/images/reseaux/snapchat_logo.png',
        fit: BoxFit.contain, // Pour s'assurer que l'image s'adapte correctement au conteneur
      ),
    ),
    SizedBox(width: 4.0),
    Text(
      "SNAPCHAT",
      style: TextStyle(
        color: Colors.black,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        fontFamily: 'Miraculous',
        fontSize: 20.0,
      ),
    ),
  ],
),

SizedBox(height: 0.5),
Container(
  padding: EdgeInsets.symmetric(horizontal: 12.0),
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 253, 211, 250),
    boxShadow: [
      BoxShadow(
        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 1,
        offset: Offset(3, 2),
      ),
    ],
  ),
  child: Container(
    height: 30,
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Le nom de votre page',
        hintStyle: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 190, 189, 189)),
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(10.0),
      ),
      textAlignVertical: TextAlignVertical.top, // Alignement du texte vers le haut
      style: TextStyle(fontSize: 15.0), // Modifie la taille de la police du texte de l'utilisateur
      textAlign: TextAlign.left, // Alignement du texte à gauche
    ),
  ),
),

        SizedBox(height: 20.0),

Row(
  children: [
    Container(
      width: 29.0,
      height: 28.0,
      child: Image.asset(
        'assets/images/reseaux/linkedin_logo.png',
        fit: BoxFit.contain, // Pour s'assurer que l'image s'adapte correctement au conteneur
      ),
    ),
    SizedBox(width: 4.0),
    Text(
      "LINKEDIN",
      style: TextStyle(
        color: Colors.black,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        fontFamily: 'Miraculous',
        fontSize: 20.0,
      ),
    ),
  ],
),

SizedBox(height: 5.0),

Container(
  padding: EdgeInsets.symmetric(horizontal: 12.0),
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 253, 211, 250),
    boxShadow: [
      BoxShadow(
        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 1,
        offset: Offset(3, 2),
      ),
    ],
  ),
  child: Container(
    height: 30,
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Le nom de votre page',
        hintStyle: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 190, 189, 189)),
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(10.0),
      ),
      textAlignVertical: TextAlignVertical.top, // Alignement du texte vers le haut
      style: TextStyle(fontSize: 15.0), // Modifie la taille de la police du texte de l'utilisateur
      textAlign: TextAlign.left, // Alignement du texte à gauche
    ),
  ),
),

        SizedBox(height: 45.0),

        Container(
                  color: Color.fromARGB(255, 34, 39, 58),
                  // height: 115.0,
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Image.asset(
                            'assets/images/hero.png',
                            width: 110.0,
                            height: 110.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nickel ! mon profil de commerçant est\ndans la place, prêt à faire danser les clients\navec des offres irrésistibles !",
                                  style: TextStyle(
                                    color: Color(0xFFFF40FF),
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 18.0),
                               Text(
                                  "JE LE VALIDE EVIDEMMENT ! 😉 ",
                                  style: TextStyle(
                                    color: Color(0xFFFF40FF),
                                    fontSize: 17.0,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xFFFF40FF), // Couleur du soulignement        
                                    decorationStyle: TextDecorationStyle.solid,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
  )
)
        ],
      ),
    );
  }
}



