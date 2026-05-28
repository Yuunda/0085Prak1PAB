import 'package:flutter/material.dart';
import 'package:flutter_application_1/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('TravelGo')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header section
              Image.network('https://cdn.pixabay.com/photo/2017/08/09/12/05/piaynemo-2614341_1280.jpg', 
              width: double.infinity, 
              height: 250, 
              fit: BoxFit.cover
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  Expanded(child: Card(
                margin: EdgeInsets.all(16), 
                child: Padding(
                // Padding di dalam supaya isi Card tidak mepet ke pinggir Card
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network('https://static.promediateknologi.id/crop/0x0:0x0/1200x0/webp/photo/p1/981/2025/05/29/Pahlawan-Street-Center-3715058471.jpg', 
                    width: 100, 
                    height: 100, 
                    fit: BoxFit.cover
                    ),
                    Text('Madiun Pahlawan Street'),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (context) => const Page2(),
                          )
                        );
                      }, 
                      child: Text('BOOK NOW!', 
                      style: TextStyle(fontWeight: FontWeight(800),
                      color: Colors.black
                      ),
                      ),
                    ),
                  ],
                ),
                ),
                  ),),

                  Expanded(child: Card(
                    margin: EdgeInsets.all(16), 
                child: Padding(
                // Padding di dalam supaya isi Card tidak mepet ke pinggir Card
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjI9lg3JobxEHGtRTgn7v4fH02TWvqYfe8jw&s', 
                    width: 100, 
                    height: 100, 
                    fit: BoxFit.cover
                    ),
                    Text('Bali Island'),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (context) => const Page2(),
                          )
                        );
                      }, 
                      child: Text('BOOK NOW!', 
                      style: TextStyle(fontWeight: FontWeight(800),
                      color: Colors.black
                      ),
                      ),
                    ),
                  ],
                ),
                ),
                  ),),
                ],
                
              ),
           ], 
          ),
        ),
      ),
    );
  }
}
