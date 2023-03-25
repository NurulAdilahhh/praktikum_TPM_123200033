import 'package:flutter/material.dart';
import 'package:nuruladilah_123200033_kuistpm/disease_data.dart';

class HalamanDetail extends StatelessWidget {
  final Diseases data;
  const HalamanDetail({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(data.name),
          centerTitle: true,
          // actions: [
          //   onPressed: (){
          //     setState((){
          //       isFavorite = !isFavorite;
          //     });
          //     if (isFavorite == true)
          //       ScaffoldMessenger.of(context).shoeSnackBar(const SnackBar(content: Text('Go To Favorite')));
          //     if (isFavorite == false) {
          //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Not In Favorites')));
          //     }
          //   },
          //   icon: (isFavorite)
          //     ? Icon(Icons.favorite)
          //       : Icon(Icons.favorite_border),
          // ],

    ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.network(data.imgUrls),
                Text(data.nutshell.toString()[0]),
                Text(data.nutshell.toString()[1]),
                Text(data.nutshell.toString()[2]),
                Text(data.nutshell.toString()[3]),
                Text(data.nutshell.toString()[4])

              ],
            ),
          ),
          Container(
            child: Column(
              children: [

          Text('Disease Name' + data.name),
          Text('Plant Name' + data.plantName),
          Text('Ciri Ciri ' + data.nutshell.toString()),
          Text('Disease ID' + data.id),
          Text('Symptom' + data.symptom),
          ]
          )
          )
        ],
      ),

    );
  }
}



