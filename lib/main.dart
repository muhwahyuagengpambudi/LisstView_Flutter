import 'package:flutter/material.dart';
import 'package:flutter_application_5/TabbarExample.dart';

void main() {
  runApp(MaterialApp(
    home: TabbarExample(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<User> users = [
    User(nama: "Muh Wahyu Ageng Pambudi",Kelas: "11 PPLG 1",img: "img/foto1.jpg"),
    User(nama: "Muhammad Firdan Azhari",Kelas: "11 PPLG 1",img: "img/foto1.jpg"),
    User(nama: "Javier Gavra Abhinaya",Kelas: "11 PPLG 1",img: "img/foto1.jpg"),
    User(nama: "Muhammad Zumar Ramadhan",Kelas: "11 PPLG 1",img: "img/foto1.jpg"),
    User(nama: "Khoiru Rizal Kalam Ismail",Kelas: "11 PPLG 1",img: "img/foto1.jpg"),
    User(nama: "Muhammad Nurwahid Bimawan",Kelas: "11 PPLG 1",img: "img/foto1.jpg"),
    User(nama: "Daffa Sauqi Sharif", Kelas: "11 PPLG 1", img: "img/foto1.jpg"),
    User(nama: "Danar Gading", Kelas: "11 PPLG 1", img: "img/foto1.jpg"),
    User(nama: "Bayu Septian Kurniawan", Kelas: "11 PPLG 1", img: "img/foto1.jpg"),
    User(nama: "Wulan Febrianti", Kelas: "11 PPLG 1", img: "img/foto1.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            padding: EdgeInsets.only(bottom: 20),
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              final User list = users[index];
              return InkWell(
                onLongPress: () {
                  showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Hapus Item'),
                        content: const Text('Tekan Ok untuk Menghapus'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context,'ok');
                              setState(() {
                                users.remove(list);
                              });
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                },
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundImage: AssetImage(users[index].img)),
                  title: Text(users[index].nama),
                  subtitle: Text(users[index].Kelas),
                ),
              );
            }));
  }
}

class User {
  String nama, Kelas, img;
  User({required this.nama, required this.Kelas, required this.img});
}
