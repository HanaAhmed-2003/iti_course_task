import 'package:flutter/material.dart';

class NutritionTableScreen extends StatefulWidget {
  const NutritionTableScreen({super.key});

  @override
  State<NutritionTableScreen> createState() => _NutritionTableScreenState();
}

class _NutritionTableScreenState extends State<NutritionTableScreen> {
  final List<Map<String, dynamic>> items = [
    {"name": "Frozen yogurt", "calories": 159},
    {"name": "Ice cream sandwich", "calories": 237},
    {"name": "Eclair", "calories": 262},
    {"name": "Cupcake", "calories": 305},
    {"name": "Gingerbread", "calories": 356},
    {"name": "Jelly bean", "calories": 375},
    {"name": "Lollipop", "calories": 392},
    {"name": "Honeycomb", "calories": 408},
    {"name": "Donut", "calories": 452},
  ];

  final Set<int> selectedIndexes = {};

  int get totalCalories {
    return selectedIndexes.map((i) => items[i]["calories"] as int).fold(0, (a, b) => a + b);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data tables"),backgroundColor: Colors.blue,),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 14,),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text('Nutrition',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          Expanded(
            child: DataTable(
              columns: [
                DataColumn(label: Text("Dessert (100g serving)")),
                DataColumn(label: Text("Calories")),
              ],
              rows: List.generate(items.length, (index) {
                final item = items[index];
                return DataRow(
                  selected: selectedIndexes.contains(index),
                  onSelectChanged: (selected) {
                    setState(() {
                      if (selected == true) {
                        selectedIndexes.add(index);
                      } else {
                        selectedIndexes.remove(index);
                      }
                    });
                  },
                  cells: [
                    DataCell(Text(item["name"])),
                    DataCell(Text(item["calories"].toString())),
                  ],
                );
              }),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text("Total Calories: $totalCalories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
