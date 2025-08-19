import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StockBottomSheet extends StatefulWidget {
  const StockBottomSheet({super.key});

  @override
  State<StockBottomSheet> createState() => _StockBottomSheetState();
}

class _StockBottomSheetState extends State<StockBottomSheet> {
  int percentage = 5;
  String selectedPeriod = "Wk";
  final List<String> periods = ["Wk", "30D", "90D", "Year"];

  @override
  void initState() {
    super.initState();
    _loadPreferences();
  }

  Future<void> _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      percentage = prefs.getInt('percentage') ?? 5;
      selectedPeriod = prefs.getString('selectedPeriod') ?? "Wk";
    });
  }

  Future<void> _savePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('percentage', percentage);
    await prefs.setString('selectedPeriod', selectedPeriod);

    if (mounted) {
      Navigator.of(context).pop({
        "percentage": percentage,
        "selectedPeriod": selectedPeriod,
      });
    }
  }

  Future<void> _resetPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('percentage');
    await prefs.remove('selectedPeriod');

    setState(() {
      percentage = 5;
      selectedPeriod = "Wk";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Stock Performance", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("$percentage% or Higher"),
              Column(
                children: [
                  IconButton(
                      onPressed: () => setState(() => percentage += 5),
                      icon: Icon(Icons.arrow_drop_up)),
                  IconButton(
                      onPressed: () {
                        if (percentage > 5) setState(() => percentage -= 5);
                      },
                      icon: Icon(Icons.arrow_drop_down)),
                ],
              )
            ],
          ),

          const SizedBox(height: 20),
          Text("Time Period", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),

          Wrap(
            spacing: 10,
            children: periods.map((p) {
              final isSelected = p == selectedPeriod;
              return ChoiceChip(
                label: Text(p),
                selected: isSelected,
                onSelected: (_) => setState(() => selectedPeriod = p),
              );
            }).toList(),
          ),

          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                onPressed: _resetPreferences,
                child: Text("Reset"),
              ),
              ElevatedButton(
                onPressed: _savePreferences,
                child: Text("Apply"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
