import 'package:flutter/material.dart';
import 'DashBoard.dart';
import 'data_model.dart';


class MyCustomListView extends StatefulWidget {
  final List<DataModel> dataList;

  const MyCustomListView({super.key, required this.dataList});

  @override
  State<MyCustomListView> createState() => _MyCustomListViewState();
}

class User{
  final String name;
  final String image;
  final String position;
  User(this.name, this.position, this.image);
}

class _MyCustomListViewState extends State<MyCustomListView> {

  // List
  List<DataModel> users = [
    DataModel(name:'Yogesh',position: 'Android Developer',image: 'assets/formalpic.jpg'),
    DataModel(name:'Rahul', position:'App Developer',image: 'assets/img1.jpg'),
    DataModel(name:'Raj', position:'Android Developer',image: 'assets/img2.jpg'),
    DataModel(name:'priyanshu',position: 'Flutter Developer', image:'assets/img3.jpg'),
    DataModel(name:'Ankit',position: 'Php Developer',image: 'assets/img4.png'),
    DataModel(name:'Bobby',position: 'React Developer',image: 'assets/img5.png'),
    DataModel(name:'Krishna',position: 'Flutter Developer',image: 'assets/img6.jpg'),
    DataModel(name:'Priyesh',position: 'Web Developer',image: 'assets/img7.jpg'),
    DataModel(name:'Abhi',position: 'Web Developer',image: 'assets/jeans.jpeg'),
    DataModel(name:'Rahul',position: 'App Developer',image: 'assets/pic8.jpg'),
    DataModel(name:'Raj',position: 'Android Developer',image: 'assets/shirts.jpeg'),
    DataModel(name:'Yogesh',position: 'Android Developer',image: 'assets/formalpic.jpg'),
    DataModel(name:'Rahul', position:'App Developer',image: 'assets/img1.jpg'),
    DataModel(name:'Raj', position:'Android Developer',image: 'assets/img2.jpg'),
    DataModel(name:'priyanshu',position: 'Flutter Developer', image:'assets/img3.jpg'),
    DataModel(name:'Ankit',position: 'Php Developer',image: 'assets/img4.png'),
    DataModel(name:'Bobby',position: 'React Developer',image: 'assets/img5.png'),
    DataModel(name:'Krishna',position: 'Flutter Developer',image: 'assets/img6.jpg'),
    DataModel(name:'Priyesh',position: 'Web Developer',image: 'assets/img7.jpg'),
    DataModel(name:'Abhi',position: 'Web Developer',image: 'assets/jeans.jpeg'),
    DataModel(name:'Rahul',position: 'App Developer',image: 'assets/pic8.jpg'),
    DataModel(name:'Raj',position: 'Android Developer',image: 'assets/shirts.jpeg'),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom List View"),
      ),
      body: Center(
        child: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                // Navigator.pushNamed(context, 'dashboard');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => DetailsPage(data: users[index]),
                    ));

              },
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(users[index].image,
                ),
              ),
              title: Text(users[index].name),
              subtitle: Text(users[index].position),
            );
          },
          childCount: users.length,
        ),
        ),
      ),
    );
  }
}
