import 'package:flutter/material.dart';

class HappyMorningScreen extends StatelessWidget {
  const HappyMorningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {},
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0x6003174C),
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                icon: Icon(Icons.favorite_border, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0x6003174C),
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                icon: Icon(Icons.file_download, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/sun.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(),
          ),

          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Happy Morning",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3F414E),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Ease the mind into a restful night’s sleep with these deep, ambient tones.",
              style: TextStyle(color: Color(0xFFA1A4B2)),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite, color: Color(0xFFFF84A2), size: 22),
                    SizedBox(width: 6),
                    Text(
                      "24,234 Favorites",
                      style: TextStyle(color: Color(0xFFA1A4B2)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.headphones, color: Color(0xFF7FD2F2), size: 22),
                    SizedBox(width: 6),
                    Text(
                      "34,234 Listening",
                      style: TextStyle(color: Color(0xFFA1A4B2)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text(
              'Pick a Nnrrator',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFF3F414E),
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "MALE VOICE",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8E97FD),
                    fontSize: 16,
                  ),
                ),
                Text(
                  "FEMALE VOICE",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFA1A4B2),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey[200], thickness: 2),
          SizedBox(height: 8),
          Expanded(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Focus Attention",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "10 MIN",
                    style: TextStyle(fontSize: 10, color: Color(0xFFA1A4B2)),
                  ),
                  trailing: Icon(
                    Icons.play_circle,
                    color: Color(0xFF8E97FD),
                    size: 50,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Body Scan",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "5 MIN",
                    style: TextStyle(fontSize: 10, color: Color(0xFFA1A4B2)),
                  ),
                  trailing: Icon(
                    Icons.play_circle,
                    color: Color(0xFFA1A4B2),
                    size: 50,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Making Happiness",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "3 MIN",
                    style: TextStyle(fontSize: 10, color: Color(0xFFA1A4B2)),
                  ),
                  trailing: Icon(
                    Icons.play_circle,
                    color: Color(0xFFA1A4B2),
                    size: 50,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
