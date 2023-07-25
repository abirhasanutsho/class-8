import 'package:flutter/material.dart';

import '../model/data_model.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  final List<DataModel> dataList = [
    DataModel(
        title: "Mango",
        description: "Mangoo taste very well ",
        price: 100,
        image:
            "assets/images/spp.jpeg"),
    DataModel(
        title: "Fish",
        description: "Fish Good For Health",
        price: 200,
        image:
            "assets/images/Treatment-logo.jpg"),
    DataModel(
        title: "Mango",
        description: "Mangoo taste very well ",
        price: 100,
        image:
        "assets/images/spp.jpeg"),
    DataModel(
        title: "Fish",
        description: "Fish Good For Health",
        price: 200,
        image:
        "assets/images/Treatment-logo.jpg"),
    DataModel(
        title: "Mango",
        description: "Mangoo taste very well ",
        price: 100,
        image:
        "assets/images/spp.jpeg"),
    DataModel(
        title: "Fish",
        description: "Fish Good For Health",
        price: 200,
        image:
        "assets/images/Treatment-logo.jpg"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        title: Text(
          "Grid Screen",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 4/6,
              crossAxisCount: 2,
            ),
            itemCount: dataList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "${dataList[index].image}",
                        height: 100,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("${dataList[index].title}",style: TextStyle(
                          fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("${dataList[index].description}",style: TextStyle(
                            fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("BDT ${dataList[index].price}",style: TextStyle(
                            fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold
                        ),),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}
