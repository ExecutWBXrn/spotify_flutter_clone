import 'package:flutter/material.dart';
import 'package:spotify/widgets/cards.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  final Map<int, List<String?>> _VirusRadio = {
    0: [
      "https://lh3.googleusercontent.com/SPHeXqlEhzw-pPbAx3AQU4HSD-XuSMlPtLsptfvHOjOTd6F_1ZbELaOYn1d8-jGZ5HW8O1R0pLqausuVZw=w544-h544-l90-rj",
      "OK Computer",
      "OK Computer — третій студійний альбом англійського альтернативного рок-гурту Radiohead",
    ],
    1: [
      "https://lh3.googleusercontent.com/NyzedsOoL8vWtdUH41_k3cpbu9mxFnRD6pUbLPdWrOfQ4SKKVYnzHEymGkLj0NLEJW_75jdb6jlETO_5=w544-h544-l90-rj",
      "The Slow Rush",
      null,
    ],
    2: [
      "https://lh3.googleusercontent.com/_3LJKVh0dy-71CwQzWKt0q7JHI7M2rxIMGGAdT0wEhmGEEELRX98ACJFdKK5Fyl226nuNfQ0OAMc-JtP=w544-h544-l90-rj",
      "Demon Days",
      null,
    ],
    3: [
      "https://lh3.googleusercontent.com/aFajZZdTCnD68sDZn7OroljYf0-64N4QbiRJHVINN8Taq52ASauFZQHlkrcj0Pymq3W6g6EVEAi1tjngyw=w544-h544-l90-rj",
      "Little Dark Age",
      null,
    ],
    4: [
      "https://lh3.googleusercontent.com/7XBCMOwR2NNvQ0X_OuoyPthJUC2wD0863g-qyLgi0QaGrsvETACOAgh4YKHX8Twb9k9IwKSCCwdGLlAb=w544-h544-l90-rj",
      "The New Abnormal",
      null,
    ],
    5: [
      "https://lh3.googleusercontent.com/de_LGA6dRsGlm0NI9KgQ-wiqDVqBldUYx6ALEmETACSS0Da6Ae2UOIs1aIh-7HAAa-br8QskT9G1gP-i=w544-h544-s-l90-rj",
      "Human After All",
      null,
    ],
    6: [
      "https://lh3.googleusercontent.com/F_Qgb74OCFJGWwkQpua2ITH4Z27HABNXVNxLGtTksu_BKUlQOLnftS2-NQ3nemam3AhSIBN35AfP_Qu4=w544-h544-l90-rj",
      "Favourite Worst Nightmare",
      null,
    ],
    7: [
      "https://lh3.googleusercontent.com/qAL8HbZKkHBrEMKBCkSEJFNGeXH00XZiZKajhbYbbuv0HwVUX4VRFdRK9BFAT3ETOA5FTFXvnMfQeEQ=w544-h544-l90-rj",
      "Torches",
      null,
    ],
    8: [
      "https://lh3.googleusercontent.com/HsEwUQH8tH10S_G33c9a-iv7iUJ7Ksbfbdpemb2B_uNqjYvf-hB4AMGHNf6gDurP4g4ZTa-3GnMGGwIa=w544-h544-l90-rj",
      "Walking On A Dream",
      null,
    ],
    9: [
      "https://lh3.googleusercontent.com/EPoXf-m_EUL1C3Kp1Bna3RafuVbj9fa-GI_XdCShdzQYqPmC4UEQP331d1q9SW9jrMTkxtKLwvCJoOWK=w544-h544-l90-rj",
      "Virtue",
      null,
    ],
  };

  final Map<int, List<String>> _RecomendedAlboms = {
    0: [
      "https://yt3.googleusercontent.com/sWCUY7Bp55-1uuAKJSnRNpu4MhmX1yuT3Rr9U1xx-7WfQWQGXsTTprMDu9PUpAR_nT3MaFurAw=w226-c-h226-k-c0x00ffffff-no-l90-rj",
      "Easy Eye Sound",
    ],
    1: [
      "https://yt3.googleusercontent.com/a4CCLAadM953kMzVIxAhz_l1ZUeoTVqn59AHH_XbRagK__8I8rZz3JG0Fa3RDJPzkEC6h7_OUA=w226-c-h226-k-c0x00ffffff-no-l90-rj",
      "Ghostly International",
    ],
    2: [
      "https://yt3.googleusercontent.com/ytc/AIdro_mmvdLIN3fNKcxstznccyL_1t2gkrQa6vJiuR1B54FVyA=w226-c-h226-k-c0x00ffffff-no-l90-rj",
      "Italians Do It Better",
    ],
    3: [
      "https://yt3.googleusercontent.com/qKQWfvlDRETgYSntwPyVuKBdshD2KewU9DEZ_VdR7E4-p1aOzotWfbkqdrw_b6_24ZQtR6O1=w226-c-h226-k-c0x00ffffff-no-l90-rj",
      "Moon Records",
    ],
    4: [
      "https://yt3.googleusercontent.com/ytc/AIdro_nSyGgwbZ1e1u5Ko5SU4fDHOwpMegHHEzDZnactfQp1Bg4=w226-c-h226-k-c0x00ffffff-no-l90-rj",
      "sad chill",
    ],
    5: [
      "https://yt3.googleusercontent.com/ytc/AIdro_nQv2DngBc_Oodko957Wjr2BBHB6lJn9uDHgUqZt__VMeM=w226-c-h226-k-c0x00ffffff-no-l90-rj",
      "Better Noise",
    ],
    6: [
      "https://yt3.googleusercontent.com/uLPo4ersJ896VGQVfP0vlXiuCQjzbtib3muIfJgj7ndfsIGqsWaV_dbBODRrls_lr94b2nteOA=w226-c-h226-k-c0x00ffffff-no-l90-rj",
      "OSEAN WORLD",
    ],
    7: [
      "https://yt3.googleusercontent.com/nb1ru2U2fAGAP81lOAq-ITdYHqgfH-sbSutBr_aWpDU533N8E8Czk_7yJ3i4n2XouJvY9-pJ=w226-c-h226-k-c0x00ffffff-no-l90-rj",
      "MOONBOY",
    ],
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            margin: EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 5),
            child: CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/736x/87/a3/2d/87a32d0d64776b0bb06f7cb2a3fc3248.jpg",
              ),
            ),
          ),
          titleSpacing: 0,
          title: Row(
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 34,
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
                            colors: [Colors.white, Colors.lime.shade300],
                          ),
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(1),
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
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 13),
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
                    itemCount: _VirusRadio.length,
                    itemBuilder: (BuildContext context, int index) {
                      String? src = _VirusRadio[index]?[0];
                      String? name = _VirusRadio[index]?[1];
                      String? description = _VirusRadio[index]?[2];
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
                    itemCount: _RecomendedAlboms.length,
                    itemBuilder: (BuildContext context, int index) {
                      String? src = _RecomendedAlboms[index]?[0];
                      String? name = _RecomendedAlboms[index]?[1];
                      return AvatarCard(src: src!, name: name!);
                    },
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(),
      ),
    );
  }
}
