import 'package:flutter/material.dart';
import 'package:footwear_client/widgets/dropdown_button.dart';
import 'package:footwear_client/widgets/multi_select_rop_down.dart';

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
              DropDownBtn(items: ['Rs: Low to High', 'Rs: High To Low'], 
              selectedItemText: 'Sort', 
              onSelected: (selected){}
              ),
              MultiSelectDropDown(),
            ],
          ),

        ],
      ),
    );
  }
}
