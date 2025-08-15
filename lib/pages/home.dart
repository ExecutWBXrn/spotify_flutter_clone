import 'package:flutter/material.dart';
import '../widgets/cards.dart';
import 'package:spotify/db/src/ListData.dart';

Widget HOME_PAGE() {
  return Stack(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left: 13, right: 13, top: 60),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MainText("Для користувача ExecutWBXrn"),
              AlbumCard(
                src:
                    "https://i.pinimg.com/736x/49/3b/a4/493ba42515501ee88258ae779cd6aced.jpg",
                description: "Пісні, що сподобались",
                name: "RelevantChants",
              ),
              MainText("Популярне радіо"),
              SizedBox(
                height: 204,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: VirusRadio.length,
                  itemBuilder: (BuildContext context, int index) {
                    String? src = VirusRadio[index]?[0];
                    String? name = VirusRadio[index]?[1];
                    String? description = VirusRadio[index]?[2];
                    return AlbumCard(
                      src: src!,
                      name: name,
                      description: description,
                    );
                  },
                ),
              ),
              MainText("Канали, які можуть вам сподобатися"),
              SizedBox(
                height: 204,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: RecomendedAlboms.length,
                  itemBuilder: (BuildContext context, int index) {
                    String? src = RecomendedAlboms[index]?[0];
                    String? name = RecomendedAlboms[index]?[1];
                    return AvatarCard(src: src!, name: name!);
                  },
                ),
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
      Positioned(
        top: 30,
        left: 0,
        right: 0,
        child: ColoredBox(
          color: Colors.grey.shade900,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 10,
                  top: 10,
                  bottom: 10,
                  right: 5,
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage(
                    "https://i.pinimg.com/736x/87/a3/2d/87a32d0d64776b0bb06f7cb2a3fc3248.jpg",
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: StadiumBorder(),
                        ),
                        child: Text(
                          "Усе",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.white, Colors.blue.shade300],
                          ),
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Музика",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Подкасти",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Аудіокниги",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Курси",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
