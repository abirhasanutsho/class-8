import 'package:class8/model/data_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final List<DataModel> dataList = [
  DataModel(
      title: "Mango",
      description: "Mangoo taste very well ",
      price: 100,
      image:
          "https://img.freepik.com/premium-photo/red-apples-isolated-white-background-ripe-fresh-apples-clipping-path-apple-with-leaf_299651-595.jpg"),
  DataModel(
      title: "Fish",
      description: "Fish Good For Health",
      price: 200,
      image:
          "https://img.freepik.com/premium-photo/red-apples-isolated-white-background-ripe-fresh-apples-clipping-path-apple-with-leaf_299651-595.jpg"),
  DataModel(
      title: "Banana",
      description: "Banana Good For Health",
      price: 300,
      image:
          "https://img.freepik.com/free-vector/vector-ripe-yellow-banana-bunch-isolated-white-background_1284-45456.jpg?w=2000"),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Home Page"),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text("${dataList[index].title}"),
                  Text("${dataList[index].description}"),
                  Text("${dataList[index].price}"),
                  Image.network("${dataList[index].image}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
