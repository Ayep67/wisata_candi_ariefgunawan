import 'package:flutter/material.dart';
import 'package:buat_proyek_wisata_candi/models/candi.dart';
 
class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({super.key, required this.candi});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Detail Header
          Stack(
            children: [
              //Gambar Candi
              Padding(
              padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: Image.asset(
                  candi.imageAsset,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              ),
              // Tombol Back
              Padding(padding: EdgeInsets.all(24), 
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple.withValues(alpha: 0.8),
                  shape: BoxShape.circle,
                ),
                child: IconButton(onPressed: (){}, 
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                ),
                ),
                ),
            ],
          ),
          // Detail Info
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                //Info Atas
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      candi.name,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: (){}, 
                      icon: const Icon(Icons.favorite_border),
                      ),
                  ],
                ),
                // Info Tengah
                // Info Tengah Row 1
                const SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.place, color: Colors.red),
                    const SizedBox(width: 8),
                    const SizedBox(
                      width: 70,
                      child: Text(
                        "Lokasi",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(":${candi.location}"),
                ],
                ),
                // Info Tengah Row 2 : Dibangun
                const SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.place, color: const Color.fromARGB(255, 73, 244, 54)),
                    const SizedBox(width: 8),
                    const SizedBox(
                      width: 70,
                      child: Text(
                        "Dibangun",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(":${candi.built}"),
                ],
                ),
                // Info Tengah Row 3 : Tipe
                const SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.place, color: const Color.fromARGB(255, 108, 54, 244)),
                    const SizedBox(width: 8),
                    const SizedBox(
                      width: 70,
                      child: Text(
                        "Tipe",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(":${candi.type}"),
                ],
                ),
                // Info Bawah
              ],
            ),
          ),
          // Detail Gallery
        ],  
      ),   
    );
  }
}

