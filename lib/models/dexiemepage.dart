import 'package:flutter/material.dart';
import 'package:cityneed/widgets/custom_scaffold.dart'; // Importation du widget de Scaffold personnalisé
import 'package:cityneed/widgets/header.dart'; // Importation du widget d'en-tête

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myquestion(),
    );
  }
}

class Myquestion extends StatefulWidget {
  @override
  _MyquestionState createState() => _MyquestionState();
}

class _MyquestionState extends State<Myquestion> {
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
              SizedBox(height: 35), // Ajoute de l'espace entre l'en-tête et le conteneur de recherche
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                              'Encore quelque question pour que\ntout soit aussi parfait que la\npremière gorgée de café le lundi\nmatin -',
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Color.fromARGB(255, 255, 255, 255),
                              // fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      SizedBox(height: 1),
                       Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Text(
                              'Oui, on veut que ça soit génial ! 😉',
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Color.fromARGB(255, 255, 255, 255),
                              // fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 13.0),
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
          height: 570,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 18.0),
                          Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Vos horaires ( n\'oubliez pas de cocher vos jours d\'ouverture ):',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(height: 2), // Réduit l'espacement entre les lignes

                  for (var day in ['Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi', 'Dimanche'])
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                      child: Row(
                        children: [
                          _KeywordCheckbox(label: day, fontSize: 20.0),
                          Spacer(),
                          Container(
                            width: 95,
                            height: 20, // Augmente la hauteur pour laisser de la place au texte
                            decoration: BoxDecoration(
                              color: Color.fromARGB(246, 253, 211, 250), // Couleur gris pour la case
                              borderRadius: BorderRadius.circular(1), // Bords arrondis
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 63, 63, 63).withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: Offset(1, 1), // changes position of shadow
                                ),
                              ],   
                            ),
                            child: TextField(
                                      decoration: InputDecoration(
                                        hintText: '07h00-12h00',
                                        hintStyle: TextStyle(fontSize: 11.0, color: Color.fromARGB(255, 138, 138, 138)),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(13.0),
                                      ),
                                      textAlignVertical: TextAlignVertical.top, // Alignement du texte vers le haut
                                      style: TextStyle(fontSize: 10.0), // Modifie la taille de la police du texte de l'utilisateur
                                      // textAlign: TextAlign.left, // Alignement du texte à gauche
                            ),
                          ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0), // Contrôle de l'espacement horizontal
                          child: Container(
                            height: 4,
                            width: 16,
                            color: Color.fromARGB(255, 253, 17, 253),
                          ),
                        ),

                          SizedBox(width: 0.5),
                          
                          Container(
                            width: 95,
                            height: 20, // Augmente la hauteur pour laisser de la place au texte
                            decoration: BoxDecoration(
                              color: Color.fromARGB(246, 253, 211, 250), // Couleur gris pour la case
                              borderRadius: BorderRadius.circular(1), // Bords arrondis
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 63, 63, 63).withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: Offset(1, 1), // changes position of shadow
                                ),
                              ],   
                            ),
                            child: TextField(
                                      decoration: InputDecoration(
                                        hintText: '14h00-18h00',
                                        hintStyle: TextStyle(fontSize: 11.0, color: Color.fromARGB(255, 138, 138, 138)),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(13.0),
                                      ),
                                      textAlignVertical: TextAlignVertical.top, // Alignement du texte vers le haut
                                      style: TextStyle(fontSize: 10.0), // Modifie la taille de la police du texte de l'utilisateur
                                      // textAlign: TextAlign.left, // Alignement du texte à gauche
                            ),
                          ),
                        ],
                      ),
                    ),

                  SizedBox(height: 10.0),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Adresse : ',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(height: 8),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(

                        // 
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 253, 211, 250),
                          borderRadius: BorderRadius.circular(1.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 63, 63, 63).withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(3, 1), // changes position of shadow
                              ),
                            ],
        // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                        ),
                        child:Container( 
                          height: 40,    
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10.0),
                            ),
                            textAlignVertical: TextAlignVertical.top, // Alignement du texte vers le haut
                            style: TextStyle(fontSize: 14.0), // Modifie la taille de la police du texte de l'utilisateur
                            // textAlign: TextAlign.left, // Alignement du texte à gauche
                          ),
                        ),
                      ),
                    ),


      //             SizedBox(height: 5),

      //             Padding(
      //               padding: const EdgeInsets.symmetric(horizontal: 10.0),
      //               child: Text(
      //                 'Numéro de téléphone : ',
      //                 style: TextStyle(
      //                   fontSize: 18.0,
      //                   color: Colors.black,
      //                   fontStyle: FontStyle.italic,
      //                   // fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //             ),

      //             SizedBox(height: 2),

      //             Padding(
      //               padding: const EdgeInsets.symmetric(horizontal: 15.0),
      //               child: Container(

      //                 width: double.infinity,
      //                 decoration: BoxDecoration(
      //                   color: Color.fromARGB(255, 253, 211, 250),
      //                   borderRadius: BorderRadius.circular(1.0),
      //                     boxShadow: [
      //                       BoxShadow(
      //                         color: Color.fromARGB(255, 63, 63, 63).withOpacity(0.5),
      //                         spreadRadius: 1,
      //                         blurRadius: 3,
      //                         offset: Offset(3, 1), // changes position of shadow
      //                       ),
      //                     ],
      // // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      //                 ),
      //                 child:Container( 
      //                   height: 40,    
      //                   child: TextField(
      //                     decoration: InputDecoration(
      //                       border: InputBorder.none,
      //                       contentPadding: EdgeInsets.all(10.0),
      //                     ),
      //                     textAlignVertical: TextAlignVertical.top, // Alignement du texte vers le haut
      //                     style: TextStyle(fontSize: 14.0), // Modifie la taille de la police du texte de l'utilisateur
      //                     // textAlign: TextAlign.left, // Alignement du texte à gauche
      //                   ),
      //                 ),
      //               ),
      //             ),

                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Text(
                          'CP : ',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 7),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                        color: Color.fromARGB(255, 253, 211, 250),
                            borderRadius: BorderRadius.circular(1.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 63, 63, 63).withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(3, 1), // changes position of shadow
                            ),
                          ],                    
                          ),
                          child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10.0),
                          ),
                          textAlignVertical: TextAlignVertical.top, // Alignement du texte vers le haut
                          style: TextStyle(fontSize: 14.0), // Modifie la taille de la police du texte de l'utilisateur
                          // textAlign: TextAlign.left, // Alignement du texte à gauche
                        ),
                      ),
                        SizedBox(width: 16),
                        Text(
                          'Ville :',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 14),
                        Container(
                          width: 145,
                          height: 40,
                          decoration: BoxDecoration(
                        color: Color.fromARGB(255, 253, 211, 250),
                            borderRadius: BorderRadius.circular(1.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 63, 63, 63).withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(3, 1), // changes position of shadow
                            ),
                          ],                      
                          ),
                      child:Container( 
                        height: 40,    
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10.0),
                          ),
                          textAlignVertical: TextAlignVertical.top, // Alignement du texte vers le haut
                          style: TextStyle(fontSize: 14.0), // Modifie la taille de la police du texte de l'utilisateur
                          // textAlign: TextAlign.left, // Alignement du texte à gauche
                        ),
                      ),
                        ),
                      ],
                    ),
                  ),

                SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Text(
                          'Contact :     ',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 7),

                        Container(
                          height: 40,
                          width: 258,
                          decoration: BoxDecoration(
                        color: Color.fromARGB(255, 253, 211, 250),
                            borderRadius: BorderRadius.circular(1.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 63, 63, 63).withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(3, 1), // changes position of shadow
                            ),
                          ],                    
                          ),
                          child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10.0),
                          ),
                          textAlignVertical: TextAlignVertical.top, // Alignement du texte vers le haut
                          style: TextStyle(fontSize: 14.0), // Modifie la taille de la police du texte de l'utilisateur
                          // textAlign: TextAlign.left, // Alignement du texte à gauche
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10),
                
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Text(
                          'E-mail :   ',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 30),
                        Container(
                          height: 40,
                          width: 258,
                          decoration: BoxDecoration(
                          color: Color.fromARGB(255, 253, 211, 250),
                            borderRadius: BorderRadius.circular(1.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 63, 63, 63).withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(3, 1), // changes position of shadow
                            ),
                          ],                    
                          ),
                          child: TextField(
                          decoration: InputDecoration(
                            hintText: '           ...@...Fr',
                            hintStyle: TextStyle(fontSize: 24.0, color: Color.fromARGB(255, 165, 165, 165)),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10.0),
                          ),
                          textAlignVertical: TextAlignVertical.top, // Alignement du texte vers le haut
                          style: TextStyle(fontSize: 13.0), // Modifie la taille de la police du texte de l'utilisateur
                          // textAlign: TextAlign.left, // Alignement du texte à gauche
                        ),
                      ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class _KeywordCheckbox extends StatefulWidget {
  final String label;
  final double fontSize; // Ajoute une variable pour la taille de la police

  const _KeywordCheckbox({
    Key? key,
    required this.label,
    required this.fontSize, // Utilise la taille de police fournie
  }) : super(key: key);

  @override
  __KeywordCheckboxState createState() => __KeywordCheckboxState();
}

class __KeywordCheckboxState extends State<_KeywordCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
        });
      },
      child: Row(
        children: [
          Container(
            width: 16.0, // Réduit la taille de la case à cocher
            height: 16.0, // Réduit la taille de la case à cocher
            decoration: BoxDecoration(
              color: _isChecked ? Color(0xFFff38fa) : Colors.transparent,
              border: Border.all(
                color: Color(0xFFff38fa),
              ),
              borderRadius: BorderRadius.circular(3.0),
            ),
            child: _isChecked
                ? Icon(
                    Icons.check,
                    color: Colors.black,
                    size: 14.0, // Réduit la taille de l'icône de coche
                  )
                : null,
          ),
          SizedBox(width: 2.0),
          Text(
            widget.label,
            style: TextStyle(
              fontSize: widget.fontSize, // Utilise la taille de police fournie
              color: Colors.black,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}