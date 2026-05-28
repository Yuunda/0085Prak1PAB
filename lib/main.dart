import 'package:flutter/material.dart';
import 'package:flutter_application_1/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Praktikum PAB',
      theme: ThemeData(useMaterial3: true),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 24.0,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),

                  // 1. Bagian Teks Judul atas
                  const Text(
                    'Welcome to',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    'PRAKTIKUM PAB 2023',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 35),

                  // 2. Bagian Nomor Induk Mahasiswa (NIM)
                  const Text(
                    '1462300085',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 25),

                  // 3. Bagian Ilustrasi Gambar
                  SizedBox(
                    height: 280,
                    child: Image.asset(
                      'assets/images/anandauntag.jpeg',
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.image,
                          size: 100,
                          color: Colors.grey,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 25),

                  // 4. Bagian Nama Pengguna
                  const Text(
                    'Ananda Nugraha Narendra',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 60),

                  // 5. Bagian Tombol "Masuk"
                  SizedBox(
                    width: double
                        .infinity, // Membuat tombol selebar padding maksimal
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (context) => const Page1(),
                          )
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(
                          0xFF8EE4A9,
                        ), // Warna hijau pastel sesuai gambar
                        elevation: 0, // Menghilangkan shadow agar flat
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            20,
                          ), // Sudut tumpul membulat
                        ),
                      ),
                      child: const Text(
                        'Masuk',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontFamily:
                              'Serif', // Menggunakan bawaan Serif agar style-nya mirip teks gambar
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
