import 'package:flutter/material.dart';
import 'package:nuruladilah_123200033_kuistpm/disease_data.dart';
import 'package:nuruladilah_123200033_kuistpm/halaman_detail.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text ('List Disease'),
          centerTitle: true,
        ),
        body : GridView.builder(

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: 12,
            itemBuilder: (context, index) {
              final Diseases data= listDisease[index];
              return InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> HalamanDetail(data:data,),)
                  );
                },
                child: Card(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.width / 3,
                        child: Image.network(data.imgUrls),
                      ),
                      Text(data.name,),
                    ],
                  ),
                ),
              );
            })
    );
  }
}
