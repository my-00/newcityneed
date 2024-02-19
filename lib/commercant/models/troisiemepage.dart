import 'package:flutter/material.dart';
import 'package:cityneed/commercant/widgets/custom_scaffold.dart'; // Importation du widget de Scaffold personnalisé
import 'package:cityneed/commercant/widgets/header.dart'; // Importation du widget d'en-tête
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mylogo(),
    );
  }
}

class Mylogo extends StatefulWidget {
  @override
  _MylogoState createState() => _MylogoState();
}

class _MylogoState extends State<Mylogo> {
  late String imagePath = ''; // Initialisation avec une valeur par défaut

  // Fonction pour gérer la sélection de l'image depuis la galerie
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        imagePath = pickedImage.path;
      });
    }
  }

  // Fonction pour gérer la sélection de l'image depuis l'appareil photo
  Future<void> _takePhoto() async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.camera);

    if (pickedImage != null) {
      setState(() {
        imagePath = pickedImage.path;
      });
    }
  }


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
                  'Espace photos/Logo : Là où vos\nimages prennent la pose, et votre\nlogo se la joue star !',
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Color.fromARGB(255, 255, 255, 255),
                              // fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                      SizedBox(height: 18),

Container(
  color: Colors.white,
  height: 92.0,
  width: 425.0,
  child: Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 60.0), // Espacement entre l'image et le texte
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color.fromARGB(255, 255, 77, 249),
                  ),
                  children: [
                    TextSpan(
                      text: 'CONSEIL :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '\nPrenez des photos de votre devanture, de l\'intérieur\n'
                          'de votre établissement, et de votre équipe...\n'
                          'Parce qu\'une image vaut mille mots, et c\'est le \nmeilleur moyen de faire briller votre établissement\n'
                          'aux yeux de votre future clientèle ! ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        left: -5, // Positionner l'image à gauche
        top: 0,
        child: Container(
          width: 100, // Largeur de l'image
          height: 100, // Hauteur de l'image, ajustez selon vos besoins
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255), // Couleur de l'arrière-plan
            backgroundBlendMode: BlendMode.darken, // Mélanger avec l'arrière-plan
          ),
          child: Image.asset('assets/images/logo-hero-2.png', width: 80,),
        ),
      ),
    ],
  ),
)




                    // Row(
                    //   children: [
                    //     // Image.asset(
                    //     //   'assets/images/logo-hero-2.png',
                    //     //   width: 90,
                    //     // ),
                    //     SizedBox(width: 5),
                    //     Padding(
                    //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    //       child: RichText(
                    //         text: TextSpan(
                    //           style: TextStyle(
                    //             fontSize: 12.0,
                    //             color: Color.fromARGB(255, 255, 77, 249), // Couleur en hexadécimal
                    //           ),
                    //           children: [
                    //             TextSpan(
                    //               text: 'CONSEIL :',
                    //               style: TextStyle(
                    //                 fontWeight: FontWeight.bold,
                    //               ),
                    //             ),
                    //             TextSpan(
                    //               text: '\nPrenez des photos de votre devanture, de l\'intérieur\n'
                    //                   'de votre établissement, et de votre équipe...\n'
                    //                   'Parce qu\'une image vaut mille mots, et c\'est le \nmeilleur moyen de faire briller votre établissement\n'
                    //                   'aux yeux de votre future clientèle ! ',
                    //               style: TextStyle(
                    //                 fontWeight: FontWeight.bold,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),

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
        SizedBox(height: 10.0),
            Text(
              'Votre logo : ',
              style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 59, 59, 59),
              ),
            ),

            // Mini carré pour les photos de l'utilisateur
            SizedBox(height: 0.0),

            /// Utilisation de Row pour aligner le carré et les boutons à droite
Row(
  children: [
    // Carré
    Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: InkWell(
        onTap: _pickImage,
        child: Container(
          width: 85.0,
          height: 70.0,
          decoration: BoxDecoration(
            color: Color.fromARGB(246, 253, 211, 250),
            borderRadius: BorderRadius.circular(1.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 63, 63, 63).withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(2, 2),
              ),
            ],
          ),
        ),
      ),
    ),

    SizedBox(width: 35.0), // Espace entre le carré et les boutons

    // Utilisation de Column pour aligner les boutons sous le carré
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Bouton pour prendre une photo depuis l'appareil photo
        ElevatedButton(
  onPressed: _takePhoto,
  style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 255, 255, 255), // Couleur de fond
    onPrimary: const Color.fromARGB(255, 172, 172, 172), // Couleur du texte
    
    // elevation: 5.0, // Élévation
    shape: RoundedRectangleBorder(
      // borderRadius: BorderRadius.circular(8.0), // Coins arrondis
    ),
    side: BorderSide(color: Color.fromARGB(172, 67, 67, 67)), // Bordure
  ),
  child: Text('Prendre une photo...      ', // Retirez la partie de style ici
          style: TextStyle(fontSize: 16.0)),          

),


        SizedBox(height: 8.0), // Espace entre les boutons

        // Bouton pour sélectionner ou télécharger une image depuis la galerie
        ElevatedButton(
          onPressed: _pickImage,
          style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 255, 255, 255), // Couleur de fond
            onPrimary: const Color.fromARGB(255, 172, 172, 172), // Couleur du texte
            
            // elevation: 5.0, // Élévation
            shape: RoundedRectangleBorder(
              // borderRadius: BorderRadius.circular(8.0), // Coins arrondis
            ),
        side: BorderSide(color: const Color.fromARGB(172, 67, 67, 67)), // Bordure
              // alignment: Alignment.centerLeft, // Aligner le texte à gauche

          ),
          child: Text('Parcourir mes fichiers...',
          style: TextStyle(fontSize: 15.8)),          

        ),
      ],
    ),
  ],
),


SizedBox(height: 12.0),

            // Titre "Votre logo : " en couleur noire et en italique
            Text(
              'Votre devanture (format portrait) : ',
              style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 59, 59, 59),
              ),
            ),

            // Mini carré pour les photos de l'utilisateur
            SizedBox(height: 0.0),

            /// Utilisation de Row pour aligner le carré et les boutons à droite
Row(
  children: [
    // Carré
    Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: InkWell(
        onTap: _pickImage,
        child: Container(
          width: 85.0,
          height: 70.0,
          decoration: BoxDecoration(
            color: Color.fromARGB(246, 253, 211, 250),
            borderRadius: BorderRadius.circular(1.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 63, 63, 63).withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(2, 2),
              ),
            ],
          ),
        ),
      ),
    ),

    SizedBox(width: 35.0), // Espace entre le carré et les boutons

    // Utilisation de Column pour aligner les boutons sous le carré
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Bouton pour prendre une photo depuis l'appareil photo
        ElevatedButton(
          onPressed: _takePhoto,
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 255, 255, 255), // Couleur de fond
            onPrimary: const Color.fromARGB(255, 172, 172, 172), // Couleur du texte
            
            // elevation: 5.0, // Élévation
            shape: RoundedRectangleBorder(
              // borderRadius: BorderRadius.circular(8.0), // Coins arrondis
            ),
        side: BorderSide(color: const Color.fromARGB(172, 67, 67, 67)), // Bordure
          ),
          child: Text('Prendre une photo...      ',
          style: TextStyle(fontSize: 16.0)),
        ),

        SizedBox(height: 8.0), // Espace entre les boutons

        // Bouton pour sélectionner ou télécharger une image depuis la galerie
        ElevatedButton(
          onPressed: _pickImage,
          style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 255, 255, 255), // Couleur de fond
            onPrimary: const Color.fromARGB(255, 172, 172, 172), // Couleur du texte
            
            // elevation: 5.0, // Élévation
            shape: RoundedRectangleBorder(
              // borderRadius: BorderRadius.circular(8.0), // Coins arrondis
            ),
        side: BorderSide(color: const Color.fromARGB(172, 67, 67, 67)), // Bordure
              // alignment: Alignment.centerLeft, // Aligner le texte à gauche

          ),
          child: Text('Parcourir mes fichiers...',
          style: TextStyle(fontSize: 15.8)),          

        ),
      ],
    ),
  ],
),

SizedBox(height: 12.0),

            // Titre "Votre logo : " en couleur noire et en italique
            Text(
              'Votre service phare : ',
              style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
                color:Color.fromARGB(255, 59, 59, 59),
              ),
            ),

            // Mini carré pour les photos de l'utilisateur
            SizedBox(height: 0.0),

            /// Utilisation de Row pour aligner le carré et les boutons à droite
Row(
  children: [
    // Carré
    Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: InkWell(
        onTap: _pickImage,
        child: Container(
          width: 85.0,
          height: 70.0,
          decoration: BoxDecoration(
            color: Color.fromARGB(246, 253, 211, 250),
            borderRadius: BorderRadius.circular(1.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 63, 63, 63).withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(2, 2),
              ),
            ],
          ),
        ),
      ),
    ),

    SizedBox(width: 35.0), // Espace entre le carré et les boutons

    // Utilisation de Column pour aligner les boutons sous le carré
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Bouton pour prendre une photo depuis l'appareil photo
        ElevatedButton(
          onPressed: _takePhoto,
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 255, 255, 255), // Couleur de fond
            onPrimary: const Color.fromARGB(255, 172, 172, 172), // Couleur du texte
            
            // elevation: 5.0, // Élévation
            shape: RoundedRectangleBorder(
              // borderRadius: BorderRadius.circular(8.0), // Coins arrondis
            ),
        side: BorderSide(color: const Color.fromARGB(172, 67, 67, 67)), // Bordure
          ),
          child: Text('Prendre une photo...      ',
          style: TextStyle(fontSize: 16.0)),
        ),

        SizedBox(height: 8.0), // Espace entre les boutons

        // Bouton pour sélectionner ou télécharger une image depuis la galerie
        ElevatedButton(
          onPressed: _pickImage,
          style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 255, 255, 255), // Couleur de fond
            onPrimary: const Color.fromARGB(255, 172, 172, 172), // Couleur du texte
            
            // elevation: 5.0, // Élévation
            shape: RoundedRectangleBorder(
              // borderRadius: BorderRadius.circular(8.0), // Coins arrondis
            ),
        side: BorderSide(color: const Color.fromARGB(172, 67, 67, 67)), // Bordure
              // alignment: Alignment.centerLeft, // Aligner le texte à gauche

          ),
          child: Text('Parcourir mes fichiers...',
          style: TextStyle(fontSize: 15.8)),          

        ),
      ],
    ),
  ],
),

SizedBox(height: 10.0),

            // Titre "Votre logo : " en couleur noire et en italique
            Text(
              'Photos à ajouter pour sublimer votre profil et susciter l\'envie...',
              style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 59, 59, 59),
              ),
            ),

            SizedBox(height: 8.0),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // Bouton pour prendre une photo depuis l'appareil photo
                    ElevatedButton(
                      onPressed: _takePhoto,
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 255, 255), // Couleur de fond
                        onPrimary: const Color.fromARGB(255, 172, 172, 172), // Couleur du texte
                        shape: RoundedRectangleBorder(),
                        side: BorderSide(color: const Color.fromARGB(172, 67, 67, 67)), // Bordure
                        minimumSize: Size(170.0, 35.0),
                      ),
                      child: Text('Prendre une photo...', style: TextStyle(fontSize: 13.0)),
                    ),
                    SizedBox(width: 4.0),
                    Container(
                      margin: EdgeInsets.only(top: 7.5, bottom: 7.5), // Adjust the margin to reduce space
                      height: 18.0,
                      width: 3.0, // Width of the black border
                      color: Color.fromARGB(255, 255, 19, 204),
                    ),
                    SizedBox(width: 4.0),
                    
                    // Bouton pour sélectionner ou télécharger une image depuis la galerie
                    ElevatedButton(
                      onPressed: _pickImage,
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 255, 255), // Couleur de fond
                        onPrimary: const Color.fromARGB(255, 172, 172, 172), // Couleur du texte
                        shape: RoundedRectangleBorder(),
                        side: BorderSide(color: const Color.fromARGB(172, 67, 67, 67)), // Bordure
                        minimumSize: Size(170.0, 35.0),
                      ),
                      child: Text('Parcourir mes fichiers...', style: TextStyle(fontSize: 13.0)),
                    ),
                  ],
                )
              ],
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



