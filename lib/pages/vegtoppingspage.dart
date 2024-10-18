import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cakelayatask/pages/copyfrompage.dart';






class VegToppingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('VEG TOPPINGS', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {},
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ToppingField(),
              ToppingField(),

              SizedBox(height: 20),

              Center(
                child: Container(
                  width: screenWidth * 0.9, // 70% of screen width
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
//borderRadius: BorderRadius.zero, //Rectangular border
                      ),

                    ),
                    child: Text(
                      'Insert Another Field',
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Text(
                'Note:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '1. In the Description you can add things like: "Extra Cheese", "Extra Choco Chips" etc.',
                style: TextStyle(fontSize: 14),
              ),

              SizedBox(height: 20),

              Text(
                'Allowed Selections: (NA if infinite)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 10),

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '8',
                ),
                keyboardType: TextInputType.number,
              ),

              SizedBox(height: 30),

              Center(
                child: Container(
                  width: screenWidth * 0.9, // 80% of screen width
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CopyFromPage ()));

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: Text(
                      'Save',
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ToppingField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Details:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.cancel_outlined, color: Colors.redAccent),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Description',
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Price in ₹',suffixStyle: GoogleFonts.poppins(
                  fontSize: 100,
                )

                ),
                keyboardType: TextInputType.number,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        DropdownButtonFormField<String>(
          items: ['Type 1', 'Type 2', 'Type 3']
              .map((String value) => DropdownMenuItem(
            child: Text(value),
            value: value,
          ))
              .toList(),
          onChanged: (_) {},
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Select Food Type',
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}