import 'package:flutter/material.dart';

Widget MY_LIBRARY() {
  return Padding(
    padding: EdgeInsets.only(top: 30),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.pinimg.com/736x/87/a3/2d/87a32d0d64776b0bb06f7cb2a3fc3248.jpg",
                          ),
                          radius: 15,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Моя бібліотека",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 15),
                        Icon(Icons.add),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    SizedBox(
                      width: 75,
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          padding: EdgeInsets.all(0),
                        ),
                        child: Text(
                          "Плейлісти",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.3,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 75,
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          padding: EdgeInsets.all(0),
                        ),
                        child: Text(
                          "Виконавці",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.3,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(color: Colors.black, thickness: 2),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.compare_arrows, size: 15),
                        SizedBox(width: 10),
                        Text(
                          "Нещодавні",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.api, size: 20),
                  ],
                ),
                SizedBox(height: 14),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.blue.shade900,
                            Colors.deepPurple,
                            Colors.grey,
                            Colors.white,
                          ],
                        ),
                      ),
                      child: Icon(Icons.favorite, size: 25),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Пісні, що сподобалися",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.green,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.push_pin, color: Colors.green, size: 15),
                            SizedBox(width: 5),
                            Text(
                              "Плейліст • 79 пісень",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                        "https://i.pinimg.com/736x/49/3b/a4/493ba42515501ee88258ae779cd6aced.jpg",
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "RelevantChants",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.push_pin, color: Colors.green, size: 15),
                            SizedBox(width: 5),
                            Text(
                              "Плейліст • ExecutWBXrn",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade900,
                        child: Icon(Icons.add, color: Colors.grey, size: 40),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Додати виконавців",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Card(
                        margin: EdgeInsets.all(0),
                        color: Colors.grey.shade900,
                        child: Icon(Icons.add, color: Colors.grey, size: 40),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Додати подкасти",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
