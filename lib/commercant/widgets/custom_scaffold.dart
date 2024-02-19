import 'package:flutter/material.dart';  // importe le pckage pour le materiel design

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.child});
  final Widget? child; // Déclare un widget enfant

  @override
  Widget build(BuildContext context) { // Redéfinit la méthode `build` qui construit l'interface utilisateur.
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // Configure le thème de l'icône de l'AppBar pour utiliser des icônes blanches.
        backgroundColor: Colors.transparent, //  Rend l'arrière-plan de l'AppBar transparent
        elevation: 0, // Enlève l'ombre sous l'AppBar pour le rendre complètement plat.
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [ // Commence la liste des enfants .
          Container(  // Crée un Container qui sera l'arrière-plan.
            decoration: BoxDecoration(
              image: DecorationImage(// Utilise DecorationImage pour mettre une image en fond.
                image: AssetImage("assets/images/fond-appli.png"),  // Charge l'image à partir des ressources de l'application.
                fit: BoxFit.cover,  // Ajuste l'image pour couvrir tout le Container.
              ),
            ),
            width: double.infinity, // Définit la largeur du Container à l'infini (prend toute la largeur disponible).
            height: double.infinity, // Définit la hauteur du Container à l'infini (prend toute la hauteur disponible).
          ),
        child!,
        ],
      ),
    );
  }
}