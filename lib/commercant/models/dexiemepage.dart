import 'package:flutter/material.dart';
import 'package:cityneed/commercant/widgets/custom_scaffold.dart'; // Importation du widget de Scaffold personnalisé
import 'package:cityneed/commercant/widgets/header.dart'; // Importation du widget d'en-tête

class Myquestion extends StatefulWidget { // Définition d'un StatefulWidget pour une page de questions personnalisée
  @override
  _MyquestionState createState() => _MyquestionState(); // Crée l'état pour la page de questions
}

class _MyquestionState extends State<Myquestion> { // Définition de l'état pour la page de questions
  String selectedActivity = 'Faire défiler'; // Initialise une variable pour stocker l'activité sélectionnée

  @override
  Widget build(BuildContext context) { // Méthode pour construire l'interface utilisateur de la page de questions
    return CustomScaffold( // Utilise un widget de type CustomScaffold pour la mise en page
      child: Stack( // Utilise un Stack pour empiler des widgets les uns sur les autres
        children: <Widget>[ // Liste des widgets à empiler
          Column( // Utilise un widget de type Column pour aligner les enfants verticalement
            children: <Widget>[ // Liste des enfants de la colonne
              CustomHeader(), // Utilise un widget de type CustomHeader pour afficher un en-tête personnalisé
              SizedBox(height: 35), // Ajoute un espace vertical de 35 pixels
              Row( // Utilise un widget de type Row pour aligner les enfants horizontalement
                mainAxisAlignment: MainAxisAlignment.start, // Alignement des enfants à gauche
                children: <Widget>[ // Liste des enfants de la ligne
                  SizedBox(width: 5), // Ajoute un espace horizontal de 5 pixels
                  Column( // Utilise un widget de type Column pour aligner les enfants verticalement
                    crossAxisAlignment: CrossAxisAlignment.start, // Alignement des enfants à gauche
                    children: [ // Liste des enfants de la colonne
                      Padding( // Ajoute un padding avec un texte
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text( // Affiche un texte
                          'Encore quelque question pour que\ntout soit aussi parfait que la\npremière gorgée de café le lundi\nmatin -', // Contenu du texte
                          style: TextStyle( // Style du texte
                            fontSize: 24.0,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 1), // Ajoute un espace vertical de 1 pixel
                      Padding( // Ajoute un padding avec un texte
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Text( // Affiche un texte
                          'Oui, on veut que ça soit génial ! 😉', // Contenu du texte
                          style: TextStyle( // Style du texte
                            fontSize: 24.0,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
                            SizedBox(height: 13.0), // Ajoute un espace vertical de 13 pixels
              Container( // Utilise un conteneur pour dessiner une ligne horizontale
                height: 4.5, // Hauteur de la ligne
                width: MediaQuery.of(context).size.width * 0.7, // Largeur de la ligne en fonction de la largeur de l'écran
                color: Color(0xFFFF40FF), // Couleur de la ligne
              ),
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
                        ),
                      ),
                    ),

                    SizedBox(height: 8),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
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
                            ),
                          ),
                        ),
                      ),
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
                        ),
                      ),
                        SizedBox(width: 16),
                        Text(
                          'Ville :',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
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
            ),
          ),
        ],
      ),
    );
  }
}