import 'package:flutter/material.dart';
import 'package:footwear_client/pages/product_description.dart';
import 'package:footwear_client/widgets/dropdown_button.dart';
import 'package:footwear_client/widgets/multi_select_rop_down.dart';
import 'package:footwear_client/widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Footwear Store',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout),
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  // return Text('Category');
                  return Padding(
                    padding: const EdgeInsets.all(6),
                    child: Chip(label: Text('Category')),
                  );
                }),
          ),
          Row(
            children: [
              Flexible(
                child: DropDownBtn(
                    items: ['Rs: Low to High', 'Rs: High To Low'],
                    selectedItemText: 'Sort',
                    onSelected: (selected) {}),
              ),
              Flexible(
                  child: MultiSelectDropDown(
                items: ['SHoe', 'item2', 'item3'],
                onSelectionChanged: (selectedItems) {},
              )),
            ],
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ProductCard(
                    name: 'Puma Shoes',
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsi3PfMbwPZ0tW6J1ZONIzw3mp0dgjx3eiY7nTs1aB4JWEdBvP2B9H6f4fGwom4kl9AvU&usqp=CAU',
                    price: 666,
                    offerTag: '30% Off',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ProductDescriptionPage()),
                      );
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}

