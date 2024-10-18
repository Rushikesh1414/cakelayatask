import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';







class NumericalPage extends StatefulWidget {
  @override
  _NumericalPageState createState() => _NumericalPageState();
}

class _NumericalPageState extends State<NumericalPage> {
  List<Widget> fieldList = [];

  @override
  void initState() {
    super.initState();
    fieldList.add(buildField());
    fieldList.add(buildField());
  }

  void _addField() {
    setState(() {
      fieldList.add(buildField());
    });
  }

  Widget buildField() {
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
        SizedBox(height: 4),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Promo Code',
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Usage Limit/User',
                ),
              ),
            ),
            SizedBox(width: 6),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Min. Order Value',
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Amount in ₹',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '24/07/2024', // For date picker
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('NUMERICAL', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {},
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...fieldList,
              SizedBox(height: 6),
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
              SizedBox(height: screenHeight * 0.3,),


              Center(
                child: Container(
                  width: screenWidth * 0.9, // 80% of screen width
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {


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