import 'package:cakelayatask/pages/vegtoppingspage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ManageShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen width for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('MANAGE SHOP', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Shop Name
                Text(
                  'Shop Name:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 5),
                Text('Hub Quality Bakers'),

                // FSSAI License Number
                SizedBox(height: 20),
                Text(
                  'FSSAI License Number:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 5),
                Text('873687DHDHJH122'),

                // Commission Percentage
                SizedBox(height: 20),
                Text(
                  'Commission %:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 5),
                Text('10'),

                // Add Shop Display Photo Section
                SizedBox(height: 20),
                Text(
                  'Add Shop Display Photo (Max 1):',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 10),

                // Add Image Button and Display
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth * 0.9, // 70% of screen width
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent,
                          ),
                          child: Text(
                            'Add Image',
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(

                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // List of Options (Veg Toppings, Copy From, Numerical)
                SizedBox(height: 10),
                Text(""),
                OptionTile(title: 'Veg Toppings'),
                OptionTile(title: 'Copy From'),
                OptionTile(title: 'Numerical'),

                // Save Button
                SizedBox(height: 50),
                Container(
                  width: screenWidth * 0.9, // 80% of screen width
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: Text(
                      'Save',
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OptionTile extends StatelessWidget {
  final String title;

  OptionTile({required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 30),
      title: InkWell(

        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => VegToppingsPage()));
        },








        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {},
    );
  }
}