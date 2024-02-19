import 'package:flutter/material.dart';
// import 'package:newcityneed/screens/Recherche.dart';
// import 'package:newcityneed/screens/profile/profile.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  final Color iconAndSeparatorColor = Color(0xFFFF40FF);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Container(
          height: 30.0,
          width: 30.0,
          child: Image.asset('assets/images/favicon-cityneed.png', fit: BoxFit.contain),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    print('Search icon tapped');
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => PagePrincipale()));
                  },
                  child: IconTextButton(
                    icon: Icons.search,
                    text: 'Mes recherches',
                    color: iconAndSeparatorColor,
                  ),
                ),
                Text(
                  '|',
                  style: TextStyle(color: iconAndSeparatorColor, fontSize: 24),
                ),
                GestureDetector(
                  onTap: () {
                    print('Promo icon tapped');

                  },
                  child: IconTextButton(
                    icon: Icons.campaign_sharp,
                    text: 'Mes promos',
                    color: iconAndSeparatorColor,
                  ),
                ),
                Text(
                  '|',
                  style: TextStyle(color: iconAndSeparatorColor, fontSize: 24),
                ),
                GestureDetector(
                  onTap: () {
                    print('Profile icon tapped');
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                  child: IconTextButton(
                    icon: Icons.home_rounded,
                    text: 'Mon compte',
                    color: iconAndSeparatorColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>  const Size.fromHeight(kToolbarHeight);
}

class IconTextButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  IconTextButton({required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon, color: color),
        Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}