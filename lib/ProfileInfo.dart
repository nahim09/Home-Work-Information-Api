import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  var profiledata;
  ProfileInfo({Key? key, this.profiledata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 219, 171, 228),
        appBar: AppBar(
          title: const Text("User Profile"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 219, 171, 228),
        ),
        body: Card(
          child: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  radius: 60,
                  child: ClipOval(
                    child: Image.network(
                        profiledata["picture"]["large"].toString()),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: [
                            const Text(
                              "Full Name :",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              profiledata["name"]["title"].toString(),
                              style: const TextStyle(fontSize: 17),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              profiledata["name"]["first"].toString(),
                              style: const TextStyle(fontSize: 17),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              profiledata["name"]["last"].toString(),
                              style: const TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Road :",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              profiledata["location"]["street"]["number"]
                                  .toString(),
                              style: const TextStyle(fontSize: 17),
                            ),
                            Text(","),
                            Text(
                              profiledata["location"]["street"]["name"]
                                  .toString(),
                              style: const TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Postcode :",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              profiledata["location"]["postcode"].toString(),
                              style: const TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Text(
                              "City :",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              profiledata["location"]["city"].toString(),
                              style: const TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Country :",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              profiledata["location"]["country"].toString(),
                              style: const TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Email address :",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              profiledata["email"].toString(),
                              style: const TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Gender :",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              profiledata["gender"].toString(),
                              style: const TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Phone :",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              profiledata["phone"].toString(),
                              style: const TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
