
import 'package:flutter/material.dart';
import 'package:quiz/data/questions_example.dart';
import 'package:quiz/model/category_model.dart';

import 'package:quiz/screens/quizz_screen.dart';

import '../ui/shared/color.dart';

class CategoryMenu extends StatefulWidget {
  const CategoryMenu({Key? key}) : super(key: key);

  @override
  State<CategoryMenu> createState() => _CategoryMenuState();
}

class _CategoryMenuState extends State<CategoryMenu> {
  List<String> kategoriler = ["türkçe", "matematik", "ingilizce", "tarih"];

  List<Category> kategori = [
    Category("Türkçe", "turkce.jpg"),
    Category("Matematik", "matematik.jpg"),
    Category("İngilizce", "ingilizce.jpg"),
    Category("Tarih", "tarih.jpg")
  ];

  Future<List<Category>> kategorileriGoster() async {
    return kategori;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      

        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/arkaplan.jpg"), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColor.primalColor2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "KATEGORİLER",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuizzScreen(Turkce)));
                      },
                      child: BoxContainer(kategori[0].category_image,
                          kategori[0].category_name),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      QuizzScreen(Matematik)));
                        },
                        child: BoxContainer(kategori[1].category_image,
                            kategori[1].category_name),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuizzScreen(ingilizce)));
                      },
                      child: BoxContainer(kategori[2].category_image,
                          kategori[2].category_name),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuizzScreen(Tarih)));
                        },
                        child: BoxContainer(kategori[3].category_image,
                            kategori[3].category_name),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "❤️İyi Eğitimler ❤️",
                style: TextStyle(color: Colors.black, fontSize: 25),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget BoxContainer(String Imagename, String Categoryname) {
  return Container(
      decoration: BoxDecoration(
        color: AppColor.primalColor2,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/${Imagename}"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "${Categoryname} ",
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ));
}
