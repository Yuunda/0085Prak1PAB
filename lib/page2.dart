import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
const Page2({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: Text('Madiun Pahlawan Street')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header section
              Image.network('https://static.promediateknologi.id/crop/0x0:0x0/1200x0/webp/photo/p1/981/2025/05/29/Pahlawan-Street-Center-3715058471.jpg', 
              width: double.infinity, 
              height: 400, 
              fit: BoxFit.cover
              ),

              SizedBox(height: 25),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text("Rp.1.200.000",
                    style: TextStyle(fontWeight: FontWeight(800),
                    fontSize: 30,
                    ),
                    
                  ),
                  ),

                  SizedBox(height: 25),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Sebuah tempat pulau Jawa yang membawakan pemandangan sungguh indah. Hanya dengan Rp. 1.200.000, anda akan mendapatkan 3 hari inap hotel, dan berbagai macam fasilitas lainnya',
                  textAlign: TextAlign.center,
                  ),
                  ),

                  SizedBox(height: 25),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(context: context, 
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Text('Confirm Booking?'),
                            content: Text('Apakah kamu yakin ingin booking tempat ini?'),
                            actions: [
                              TextButton(
                                onPressed: (){
                                Navigator.of(context).pop();
                              },
                                child: Text('Batal', style: TextStyle(color: Colors.red),
                                ),
                              ),
                              TextButton(
                                onPressed: (){
                                Navigator.of(context).pop();
                              },
                                child: Text('Ya, Booking!', style: TextStyle(color: Colors.green),
                                ),
                              ),
                            ],
                          );
                        });
                      }, 
                      child: Text('BOOK NOW!', 
                      style: TextStyle(fontWeight: FontWeight(800),
                      color: Colors.black
                      ),
                      ),
                    ),
                ],
              ),
            ],
          ),
          ),
        ),
    );
    
  }
}