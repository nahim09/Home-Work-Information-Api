import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:homeworknestedapi/ProfileInfo.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

var data;

class _HomePageState extends State<HomePage> {
  Future getData() async {
    var response =
        await http.get(Uri.parse("https://randomuser.me/api/?results=20"));

    setState(() {
      var decode = json.decode(response.body);
      data = decode["results"];
      print(data);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 219, 171, 228),
        appBar: AppBar(
          title: const Text(
            "User",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 219, 171, 228),
        ),
        body: ListView.builder(
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          title: Column(
                            children: [
                              CircleAvatar(
                                radius: 55,
                                child: ClipOval(
                                  child: Image.network(data[index]["picture"]
                                          ["large"]
                                      .toString()),
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Full Name :",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(data[index]["name"]["title"].toString()),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(data[index]["name"]["first"].toString()),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(data[index]["name"]["last"].toString()),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "City :",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(data[index]["location"]["city"]
                                      .toString()),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Country :",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(data[index]["location"]["country"]
                                      .toString()),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Email address :",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(data[index]["email"].toString()),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileInfo(
                                          profiledata: data[index],
                                        )));
                          },
                        ),
                      ],
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
