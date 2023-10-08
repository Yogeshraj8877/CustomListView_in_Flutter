// details_page.dart
import 'package:flutter/material.dart';
import 'data_model.dart';

class DetailsPage extends StatelessWidget {
  final DataModel data;

  DetailsPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
               backgroundImage: AssetImage(data.image),
              radius: 60,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(' ${data.name}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Text('${data.position}',style: TextStyle(fontSize: 15,color:Colors.grey,),)
            
          ],
        ),
      ),
    );
  }
}
