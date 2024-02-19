import 'package:flutter/material.dart';
import 'package:cityneed/association/widgets/custom_scaffold.dart';
import 'package:cityneed/association/widgets/header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  String selectedActivity = 'Faire défiler';

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              CustomHeader(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset('assets/images/logo-hero-1.png', width: 80),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '         LES PETITES\nQUESTIONS PRATIQUES',
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Color(0xFFFF40FF),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Helvetica',
                        ),
                      ),
                      SizedBox(height: 18),
                      SizedBox(width: 90),
                      Text(
                        'Créer votre commerce et le\nrendre accessible directement\ndans la poche de vos futurs\nclients grâce à l\'application !',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: const Color.fromARGB(255, 251, 251, 251),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Container(
                height: 4.5,
                width: MediaQuery.of(context).size.width * 0.7,
                color: Color(0xFFFF40FF),
              ),
              // Your existing UI code here
              // ...
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
              height: 572,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.0),
                    Text(
                      'Nom de votre association : ',
                      style: TextStyle(
                        fontSize: 20.0,
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
                    SizedBox(height: 10.0),
                    Text(
                      'Nom du president : ',
                      style: TextStyle(
                        fontSize: 20.0,
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
                            'Type d\'association : ',
                            style: TextStyle(
                              fontSize: 18.0,
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
                        fontSize: 20.0,
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
                        fontSize: 16.0,
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
                        fontSize: 20.0,
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

class _KeywordCheckbox extends StatefulWidget {
  final String label;
  final double fontSize;

  const _KeywordCheckbox({
    Key? key,
    required this.label,
    required this.fontSize,
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
            width: 15.0,
            height: 15.0,
            decoration: BoxDecoration(
              color: _isChecked
                  ? Color.fromARGB(255, 251, 0, 247)
                  : Colors.transparent,
              border: Border.all(
                color: Color.fromARGB(255, 251, 0, 247),
              ),
              borderRadius: BorderRadius.circular(1.0),
            ),
            child: _isChecked
                ? Icon(
                    Icons.check,
                    color: Colors.black,
                    size: 14.0,
                  )
                : null,
          ),
          SizedBox(width: 5.0),
          Text(
            widget.label,
            style: TextStyle(
              fontSize: widget.fontSize,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
