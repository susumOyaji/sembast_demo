import 'package:flutter/material.dart';
import 'package:sembast_demo/dao/books_dao.dart';
import 'package:sembast_demo/model/books_model.dart';
import 'package:sembast_demo/books_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController markController = TextEditingController();
  BooksDao dau = BooksDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Books Entry Page"),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: nameController,
              textAlign: TextAlign.start,
              onFieldSubmitted: (val) {},
              style: const TextStyle(),
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: "Add Book Name",
                labelStyle: const TextStyle(
                  fontSize: 17,
                ),
                contentPadding: const EdgeInsets.all(8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(width: 0.7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(width: 0.7),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(width: 0.7),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: markController,
              textAlign: TextAlign.start,
              onFieldSubmitted: (val) {},
              keyboardType: const TextInputType.numberWithOptions(),
              style: const TextStyle(),
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: "Add your roll number",
                labelStyle: const TextStyle(
                  fontSize: 17,
                ),
                contentPadding: const EdgeInsets.all(8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(width: 0.7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(width: 0.7),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(width: 0.7),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  dau.insertBooks(Books(
                      name: nameController.text,
                      rollNo: int.parse(markController.text)));
                  nameController.clear();
                  markController.clear();
                },
                //color: Colors.blue,
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 120,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BooksList()));
                },
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                //color: Colors.blue,
                child: const Text(
                  "See the List",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 120,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  dau.sortBook();
                },
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                //color: Colors.blue,
                child: const Text(
                  "SortOrders",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
