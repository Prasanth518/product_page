import 'package:flutter/material.dart';

class Fbu extends StatelessWidget {
  final String word;
  final double fontsize;
  const Fbu({@required this.word, this.fontsize});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Text(
        word,
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins-Medium.ttf',
            fontWeight: FontWeight.bold,
            fontSize: fontsize),
      ),
    );
  }
}

class Ib extends StatelessWidget {
  final IconData icon;
  final double size;
  

  const Ib({@required this.icon, this.size});
  
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon,color: Colors.black,),
      onPressed: null,
      iconSize: size,
    );
  }
}
class Item extends StatelessWidget {
final IconData icon2;
final String data; 

  const Item({this.icon2,this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon2),
          SizedBox(width:15.0),
          Text(data)
        ],
      ),
    );
  }
}


