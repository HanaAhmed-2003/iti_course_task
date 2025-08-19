import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'stock_bottom_sheet.dart';

class BottomCall extends StatefulWidget {
  const BottomCall({super.key});

  @override
  State<BottomCall> createState() => _BottomCallState();
}

class _BottomCallState extends State<BottomCall> {
  int percentage = 5;
  String selectedPeriod = "Wk";

  @override
  void initState() {
    super.initState();
    _loadSavedPreferences();
  }

  Future<void> _loadSavedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      percentage = prefs.getInt('percentage') ?? 5;
      selectedPeriod = prefs.getString('selectedPeriod') ?? "Wk";
    });
  }

  Future<void> _openBottomSheet() async {
    final result = await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => const StockBottomSheet(),
    );

    if (result != null && mounted) {
      setState(() {
        percentage = result['percentage'];
        selectedPeriod = result['selectedPeriod'];
      });

      // optional feedback
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Applied: $percentage% - $selectedPeriod")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stocks")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Current Filter: $percentage% - $selectedPeriod"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _openBottomSheet,
              child: Text("Open Bottom Sheet"),
            ),
          ],
        ),
      ),
    );
  }
}
