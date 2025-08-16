import 'package:flutter/material.dart';
import 'package:iti_course/screens/background_card.dart';
import 'package:iti_course/screens/category_card.dart';

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Meditate", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Color(0xFF3F414E))),
              SizedBox(height: 8),
              Text("We can learn how to recognize when our minds are doing their normal everyday acrobatics.",style: TextStyle(color: Color(0xFFA0A3B1)),),
              SizedBox(height: 16),
              SizedBox(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    categoryItemIcon(Icons.wind_power, "All"),
                    categoryItemIcon(Icons.favorite, "My"),
                    categoryItemIcon(Icons.face, "Anxious"),
                    categoryItemIcon(Icons.nights_stay, "Sleep"),
                    categoryItemIcon(Icons.child_care, "kids"),
                  ],
                ),
              ),

              SizedBox(height: 16),
              BackgroundCard(
                imagePath: "assets/images/wavy.png",
                title: "Daily Calm",
                subtitle: "APR 30 - PAUSE PRACTICE",
                onPressed: () {
                  print("Play pressed");
                },
              ),

              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    CategoryCard(imagePath: "assets/images/winter.png", title: "7 Days"),
                    CategoryCard(imagePath: "assets/images/fall.png", title: "Anxiety Release"),
                    CategoryCard(imagePath: "assets/images/summer.png", title: "Nature Sounds"),
                    CategoryCard(imagePath: "assets/images/spring.png", title: "Kids Sleep"),
                  ],
                )

              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF8E97FD),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.nightlight_round_sharp),
            label: "Sleep",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: "Meditate",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: "Music",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
Widget categoryItemIcon(IconData iconData, String label) {
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 8),
    child: Column(
      children: [
        Container(
          padding:  EdgeInsets.all(10),
          decoration:  BoxDecoration(
            color: Color(0xFF8E97FD),
            borderRadius: BorderRadius.circular(10),
            // shape: BoxShape.circle,
          ),
          child: Icon(
            iconData,
            size: 24,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ],
    ),
  );
}
