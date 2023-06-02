import 'package:flutter/material.dart';
import 'package:pengujian_chat/core.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key, required String title}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    final List<String> imageList = [
      'assets/images/banner.jpg',
      'assets/images/luar.jpg',
      'assets/images/mobildalam.jpg',
      'assets/images/ruangdalam.jpg',
      'assets/images/anggota.jpeg',
      'assets/images/people.jpeg'
    ];

    void showImageDetail(BuildContext context, String imagePath) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          content: Container(
            child: Image.asset(imagePath),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.doChat(),
        backgroundColor: Colors.grey,
        child: const Icon(Icons.chat),
      ),
      // appBar: AppBar(
      //   title: const Text("Dashboard"),
      //   actions: const [],
      // ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 5,
          // padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width * 5,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  color: Colors.grey,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 170,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "assets/images/dishub.png",
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: const Text(
                          "UPT PENGUJIAN KENDARAAN BERMOTOR \n KABUPATEN INDRAGIRI HULU",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "assets/images/kir1.png",
                          ),
                          fit: BoxFit.contain,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: const Text(
                          "VISI",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "MEWUJUDKAN KENDARAAN BERMOTOR YANG BERKESELAMATAN",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "MISI",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: const Text(
                          "Memberikan Jaminan Keselamatan, teknis dan Laik Jalan terhadap Penggunaan Kendaraan Bermotor, kereta gandengan dan kereta tempelan",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: const Text(
                          "Mendukung Kelestarian Lingkungan dari Kemungkinan Pencemaran yang diakibatkan Oleh Pengguna Kendaraan Bermotor, Kereta gandengan dan Kereta Tempelan di Jalan",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Memberikan Pelayanan Umum kepada Masyarakat",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "MOTTO",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: const Text(
                          "Masyarakat Puas dengan Tingkat Pelayanan yang diberikan, serta Terjaminnya kondisi Teknis dan Laik Jalan Kendaraan Wajib Uji",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                child: Card(
                  child: SizedBox(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: imageList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            showImageDetail(context, imageList[index]);
                          },
                          child: Card(
                            child: Image.asset(
                              imageList[index],
                              fit: BoxFit.contain,
                              height: 500,
                              // width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Image.network(
                            "assets/images/alur.jpeg",
                            fit: BoxFit.contain,
                          ),
                        );
                      },
                    );
                  },
                  child: Card(
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: NetworkImage("assets/images/alur.jpeg"),
                              fit: BoxFit.contain),
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 225,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                  color: Colors.grey,
                ),
                child: SizedBox(
                  height: 100.0,
                  width: MediaQuery.of(context).size.width * 5,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(padding: EdgeInsets.only(top: 30.0)),
                              Text(
                                "UPT Pengujian Kendaraan Bermotor",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Kabupaten Indragiri Hulu \n Jl Raya Belilas Km.06 Pematang Reba Rengat BaratKab. Indragiri Hulu \n Telp. (0769) 341002 \n Fax. (0769) 341194 \n Kode Pos : 29351 ",
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Text(
                        "© Copyright by 2023. All Rights Reserved",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
