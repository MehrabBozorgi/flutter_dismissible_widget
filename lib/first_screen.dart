import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  List<MyModel> model = [
    MyModel(id: 1, name: 'product 1', image: 'pic1.png', price: 200.99),
    MyModel(id: 2, name: 'product 2', image: 'pic2.png', price: 125.5),
    MyModel(id: 3, name: 'product 3', image: 'pic3.png', price: 170.00),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible Widget'),
      ),
      body: ListView.builder(
        itemCount: model.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Container(
          width: double.infinity,
          height: 175,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Dismissible(
            key: ValueKey(model[index].id),
            background: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Icon(
                  Icons.delete_forever,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      model[index].image,
                      width: 100,
                      height: 100,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          model[index].name,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$'+model[index].price.toString(),
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyModel {
  final int id;
  final String name;
  final String image;
  final double price;

  MyModel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
  });
}
