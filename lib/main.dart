import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Social Profile')),
      body: Column(
        // แนวตั้ง
        children: [
          Text(
            "Piyamaporn",
            style: TextStyle(
              color: Colors.blue,
              // สีอักษร
              fontSize: 15,
              //ขนาดอักษร
              fontWeight: FontWeight.w800,
              // ความหนาอักษร
              backgroundColor: Colors.amber,
              // สีพื้นหลัง)
            ),
          ),
          Text(
            "Saowiang",
            style: TextStyle(
              color: Colors.blue,
              // สีอักษร
              fontSize: 15,
              //ขนาดอักษร
              fontWeight: FontWeight.w800,
              // ความหนาอักษร
              backgroundColor: Colors.amber,
              // สีพื้นหลัง
            ),
          ),
          Row(
            // แนวนอน
            children: [Icon(Icons.face), Icon(Icons.book), Icon(Icons.star)],
          ),
          Row(
            children: [
              // ดึงภาพจากไฟล์
              Image.asset(
                "assets/dec3d0a755a8287f7b8b082db4718dbf.jpg",
                width: 160, // กว้่าง
                height: 160, // สูง
                fit: BoxFit.cover,
              ),
              ClipOval(
                child: Image.network(
                  // ดึงภาพจากลิงก์
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX9fD1GKHfJYJ16eQ_HxqDrcAAGPU8uiOY6-_YrAsJcsjTeZXbvI2wKTI&s=10",
                  width: 160, // กว้่าง
                  height: 150, // สูง
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(// ปุ้มทีม
                  onPressed: () => {},
                  child: Text("ปุ่ม1"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, //สีพื้นหลังปุ่ม
                    foregroundColor: Colors.deepOrange, //สีบนปุ่ม
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 30, //เว้นแนวนอน
                height: 100, //เว้นแนวตั้ง
              ),
              Expanded(// ขยาย
                child: OutlinedButton(// ปุ่มแบบมีเส้นขอบ
                  onPressed: () => {},
                  child: Text("ปุ่ม2"),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent[50],
                    foregroundColor: Colors.blueAccent
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
