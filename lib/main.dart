
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
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

      // ส่วน AppBar
      appBar: AppBar(
        title: const Text(
          'espswn',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.menu,
            size: 25,
          ),
          SizedBox(width: 15),
        ],
      ),

      // ส่วนเนื้อหาหลัก
      body: SingleChildScrollView(
        child: Column(
          children: [

            // ส่วนที่ 1 รูปโปรไฟล์และจำนวนต่าง ๆ
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage:
                    const AssetImage('assets/IMG_8735.JPG'),
                  ),

                  const SizedBox(width: 20),

                  Expanded(
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                      children: const [

                        Column(
                          children: [
                            Text(
                              '24',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('Posts'),
                          ],
                        ),

                        Column(
                          children: [
                            Text(
                              '1.5M',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('Followers'),
                          ],
                        ),

                        Column(
                          children: [
                            Text(
                              '500',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('Following'),
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),


            // ส่วนที่ 2 ชื่อและคำบรรยาย
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [

                    Text(
                      'Piyamaporn',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text('stay single'),
                    Text('stay private'),
                    Text('get rich'),

                  ],
                ),
              ),
            ),

            // ส่วนที่ 3 ปุ่มติดตามและปุ่มข้อความ
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Row(
                children: [

                  // ปุ่ม Follow
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(6),
                        ),
                      ),
                      child: const Text('Follow'),
                    ),
                  ),

                  const SizedBox(width: 10),

                  // ปุ่ม Message
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.black,
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(6),
                        ),
                      ),
                      child: const Text('Message'),
                    ),
                  ),

                ],
              ),
            ),

            const SizedBox(height: 12),

            // ส่วนที่ 4 ไอคอนรูปภาพและโปรไฟล์
            const Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
              children: [

                Icon(
                  Icons.grid_on,
                  size: 25,
                ),

                Icon(
                  Icons.person_outline,
                  size: 25,
                ),

              ],
            ),

            const SizedBox(height: 10),

            // ส่วนที่ 5 รูปภาพ 3 ภาพจากอินเทอร์เน็ต
            Row(
              children: [

                // รูปภาพที่ 1
                Expanded(
                  child: Image.network(
                    'https://i.pinimg.com/736x/b3/1c/e4/b31ce424bd735155c767ff1aa7704749.jpg',
                    height: 130,
                    fit: BoxFit.cover,
                    errorBuilder:
                        (context, error, stackTrace) {
                      return const Icon(
                        Icons.image_not_supported,
                        size: 40,
                      );
                    },
                  ),
                ),

                // รูปภาพที่ 2
                Expanded(
                  child: Image.network(
                    'https://i.pinimg.com/736x/3f/b8/fe/3fb8feb0c415c67fe5614b64e0a73601.jpg',
                    height: 130,
                    fit: BoxFit.cover,
                    errorBuilder:
                        (context, error, stackTrace) {
                      return const Icon(
                        Icons.image_not_supported,
                        size: 40,
                      );
                    },
                  ),
                ),

                // รูปภาพที่ 3
                Expanded(
                  child: Image.network(
                    'https://i.pinimg.com/736x/c0/81/a7/c081a765d5472a31514153ce4f54e5df.jpg',
                    height: 130,
                    width: 150,
                    fit: BoxFit.cover,
                    errorBuilder:
                        (context, error, stackTrace) {
                      return const Icon(
                        Icons.image_not_supported,
                        size: 40,
                      );
                    },
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
