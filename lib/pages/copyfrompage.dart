import 'package:cakelayatask/pages/numricalapp.dart';
import 'package:flutter/material.dart';




class CopyFromPage extends StatefulWidget {
  @override
  _CopyFromPageState createState() => _CopyFromPageState();
}

class _CopyFromPageState extends State<CopyFromPage> {
  List<bool> _isChecked = [true, true, false, false]; // To manage checked state
  final List<String> _options = [
    'Veg Toppings',
    'Veg Toppings',
    'Non Veg Toppings',
    'Non Veg Toppings'
  ];

  void _selectAll() {
    setState(() {
      _isChecked = List<bool>.filled(_isChecked.length, true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('COPY FROM', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {},
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Headings:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                
                itemCount: _options.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(

                    title: Text(_options[index]),
                    value: _isChecked[index],
                    activeColor: Colors.redAccent,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked[index] = value ?? false;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: screenWidth * 0.9, // 40% of screen width
                    height: 50,
                    child: OutlinedButton(
                      onPressed: _selectAll,
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.redAccent, width: 2),
                        backgroundColor: Colors.white,
                      ),
                      child: Text(
                        'Select All',
                        style: TextStyle(color: Colors.redAccent, fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: screenWidth * 0.9, // 40% of screen width
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {


    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => NumericalPage ()));

    },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                      child: Text(
                        'Done',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}