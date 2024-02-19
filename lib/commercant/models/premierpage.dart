import 'package:flutter/material.dart';
import 'package:cityneed/commercant/widgets/custom_scaffold.dart'; // Importation du widget de Scaffold personnalisé
import 'package:cityneed/commercant/widgets/header.dart'; // Importation du widget d'en-tête

class MyCustomForm extends StatefulWidget { // Définition d'un StatefulWidget pour un formulaire personnalisé
  @override
  _MyCustomFormState createState() => _MyCustomFormState();  // Crée l'état pour le formulaire
}

class _MyCustomFormState extends State<MyCustomForm> {
  String selectedActivity = 'Faire défiler'; // Initialise une variable pour stocker l'activité sélectionnée
 
  @override
  Widget build(BuildContext context) {
    return CustomScaffold( // Utilise un widget de type CustomScaffold pour la mise en page
      child: Stack(  // Utilise un Stack pour empiler des widgets les uns sur les autres
        children: <Widget>[ // Liste des widgets à empiler
          Column( // Utilise un widget de type Column pour aligner les enfants verticalement
            children: <Widget>[ // Liste des enfants de la colonne
              CustomHeader(), // Utilise un widget de type CustomHeader pour afficher un en-tête personnalisé
              SizedBox(height: 25), // Ajoute un espace vertical de 25 pixels
              Row( // Utilise un widget de type Row pour aligner les enfants horizontalement
                mainAxisAlignment: MainAxisAlignment.start, // Alignement des enfants à gauche
                children: <Widget>[ // Liste des enfants de la ligne
                  Image.asset('assets/images/logo-hero-1.png', width: 80), // Affiche une image avec une largeur de 80 pixels
                  SizedBox(width: 20), // Ajoute un espace horizontal de 20 pixels
                  Column( // Utilise un widget de type Column pour aligner les enfants verticalement
                    crossAxisAlignment: CrossAxisAlignment.start, // Alignement des enfants à gauche
                    children: [ // Liste des enfants de la colonne
                      Text( // Affiche un texte
                        '         LES PETITES\nQUESTIONS PRATIQUES', // Contenu du texte
                        style: TextStyle( // Style du texte
                          fontSize: 24.0,
                          color: Color(0xFFFF40FF),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Helvetica',
                        ),
                      ),
                      SizedBox(height: 22), // Ajoute un espace vertical de 22 pixels
                      SizedBox(width: 90), // Ajoute un espace horizontal de 90 pixels
                      Text( // Affiche un texte
                        'Créer votre commerce et le\nrendre accessible directement\ndans la poche de vos futurs\nclients grâce à l\'application !', // Contenu du texte
                        style: TextStyle( // Style du texte
                          fontSize: 20.0,
                          color: const Color.fromARGB(255, 251, 251, 251),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.0), // Ajoute un espace vertical de 10 pixels
              Container( // Utilise un conteneur pour dessiner une ligne horizontale
                height: 4.5, // Hauteur de la ligne
                width: MediaQuery.of(context).size.width * 0.7, // Largeur de la ligne en fonction de la largeur de l'écran
                color: Color(0xFFFF40FF), // Couleur de la ligne
              ),
            ],
          ),
          Positioned( // Positionne un widget de manière absolue
            left: 0, // Position de départ à gauche
            right: 0, // Position de fin à droite
            bottom: 0, // Position en bas de l'écran
            child: Container( // Utilise un conteneur pour définir la partie inférieure de l'interface utilisateur
              decoration: BoxDecoration( // Définit la décoration du conteneur
                color: Colors.white, // Couleur de fond blanche
                borderRadius: BorderRadius.only( // Ajoute des coins arrondis uniquement en haut
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20), // Ajoute un padding interne
              height: 545, // Hauteur du conteneur
              child: SingleChildScrollView( // Utilise un widget SingleChildScrollView pour rendre le contenu défilable
                child: Column( // Utilise un widget de type Column pour aligner les enfants verticalement
                  crossAxisAlignment: CrossAxisAlignment.start, // Alignement des enfants à gauche
                  children: [ // Liste des enfants de la colonne
                    SizedBox(height: 26.0),
                    Text(
                      'Nom de votre entreprise : ',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(246, 253, 211, 250),
                        borderRadius: BorderRadius.circular(1.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 63, 63, 63).withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: Offset(3, 1),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                      SizedBox(height: 20.0),
                      Row(
                        children: [
                          Text(
                            'Type d\'activité : ',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Expanded(
                            child: Container(
                              height: 35.0,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(246, 253, 211, 250),
                                borderRadius: BorderRadius.circular(1.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 63, 63, 63).withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 4,
                                    offset: Offset(3, 1),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '   $selectedActivity',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Color.fromARGB(255, 54, 53, 53),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  PopupMenuButton<String>(
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Color.fromARGB(255, 242, 20, 235),
                                      size: 35.0,
                                    ),
                                    itemBuilder: (BuildContext context) =>
                                        <PopupMenuEntry<String>>[
                                      PopupMenuItem<String>(
                                        value: 'éducation',
                                        child: Text('Education'),
                                      ),
                                      PopupMenuItem<String>(
                                        value: 'santé',
                                        child: Text('Santé'),
                                      ),
                                      PopupMenuItem<String>(
                                        value: 'environnement',
                                        child: Text('Environnement'),
                                      ),
                                      // PopupMenuItem<String>(
                                      //   value: 'autre',
                                      //   child: Text('Autre'),
                                      // ),
                                    ],
                                    onSelected: (String value) {
                                      setState(() {
                                        selectedActivity = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    SizedBox(height: 10.0),
                    Text(
                      'Mots clés de votre activité :',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Row(
                      children: [
                        _KeywordCheckbox(
                          label: 'Mots1',
                          fontSize: 18.0,
                        ),
                        SizedBox(width: 10.0),
                        _KeywordCheckbox(
                          label: 'Mots2',
                          fontSize: 18.0,
                        ),
                        SizedBox(width: 10.0),
                        _KeywordCheckbox(
                          label: 'Mots3',
                          fontSize: 18.0,
                        ),
                        SizedBox(width: 10.0),
                        _KeywordCheckbox(
                          label: 'Mots4',
                          fontSize: 18.0,
                        ),
                      ],
                    ),
                    SizedBox(height: 14.0),
                    Text(
                      'Votre slogan, ou votre "let\'s motive", ou comme on dit dans le coin, le "boosteur de journée" !',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(246, 253, 211, 250),
                        borderRadius: BorderRadius.circular(1.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 63, 63, 63).withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      'Description de votre activité :',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 1.0),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(246, 253, 211, 250),
                        borderRadius: BorderRadius.circular(1.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 63, 63, 63).withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: Offset(3, 1),
                          ),
                        ],
                      ),
                      child: TextField(
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Widget pour la case à cocher de mot-clé
class _KeywordCheckbox extends StatefulWidget { // Définition d'un StatefulWidget pour une case à cocher de mot-clé
  final String label; // Étiquette du mot-clé
  final double fontSize; // Taille de police du texte du mot-clé

  const _KeywordCheckbox({ // Constructeur du widget
    Key? key, // Clé unique du widget
    required this.label, // Étiquette requise du mot-clé
    required this.fontSize, // Taille de police requise du texte du mot-clé
  }) : super(key: key); // Appelle le constructeur de la classe parent avec les arguments fournis

  @override
  __KeywordCheckboxState createState() => __KeywordCheckboxState(); // Crée l'état pour la case à cocher
}

class __KeywordCheckboxState extends State<_KeywordCheckbox> { // Définition de l'état pour la case à cocher
  bool _isChecked = false; // Initialise l'état de la case à cocher à faux

  @override
  Widget build(BuildContext context) { // Méthode pour construire l'interface utilisateur de la case à cocher
    return GestureDetector( // Utilise un widget GestureDetector pour détecter les interactions de l'utilisateur
      onTap: () { // Définit une action lorsqu'on appuie sur la case à cocher
        setState(() { // Met à jour l'état de la case à cocher
          _isChecked = !_isChecked; // Inverse l'état actuel de la case à cocher
        });
      },
      child: Row( // Utilise un widget de type Row pour aligner les enfants horizontalement
        children: [ // Liste des enfants de la ligne
          Container( // Utilise un conteneur pour dessiner la case à cocher
            width: 15.0, // Largeur de la case à cocher
            height: 15.0, // Hauteur de la case à cocher
            decoration: BoxDecoration( // Définit la décoration de la case à cocher
              color: _isChecked // Couleur de fond basée sur l'état de la case à cocher
                  ? Color.fromARGB(255, 251, 0, 247) // Couleur cochée
                  : Colors.transparent, // Couleur non cochée (transparente)
              border: Border.all( // Définit une bordure
                color: Color.fromARGB(255, 251, 0, 247), // Couleur de la bordure
              ),
              borderRadius: BorderRadius.circular(1.0), // Ajoute un coin arrondi
            ),
            child: _isChecked // Affiche une icône de coche si la case est cochée
                ? Icon(
                    Icons.check, // Icône de coche
                    color: Colors.black, // Couleur de l'icône
                    size: 14.0, // Taille de l'icône
                  )
                : null, // Sinon, ne rien afficher
          ),
          SizedBox(width: 5.0), // Ajoute un espace horizontal de 5 pixels
          Text( // Affiche l'étiquette du mot-clé
            widget.label, // Contenu du texte
            style: TextStyle( // Style du texte
              fontSize: widget.fontSize, // Taille de police du texte
              color: Colors.black, // Couleur du texte
            ),
          ),
        ],
      ),
    );
  }
}
