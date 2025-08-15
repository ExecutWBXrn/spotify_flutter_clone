import 'package:flutter/material.dart';
import 'package:spotify/widgets/cards.dart';

Widget SEARCH_PAGE() {
  final List<String> startNames = [
    "Музика",
    "Подкасти",
    "Audiobooks",
    "Заходи",
    "Курси",
    "Video",
  ];

  final List<String> names = [
    "Для вас",
    "Майбутні релізи",
    "New Releases",
    "Поп",
    "Настрій",
    "Хіп-хоп",
    "Вечірка",
    "Чарти",
    "Чатри подкастів",
    "Podcast New Releases",
    "Black Voices",
    "Містика й трилер",
    "Carnival Sounds",
    "Dance",
    "Тренування",
    "EQUAL",
    "Художня література",
    "Саморозвиток",
    "Рекомендації",
    "Радіо",
    "За кермом",
    "Альтернатива",
    "Frequency",
    "Інді",
    "Netflix",
    "GLOW",
    "Рок",
    "Ритм-н-блюз",
    "Throwback",
    "Disney",
    "RADAR",
    "Душевний спокій",
    "Кантрі",
    "К-Pop",
    "Чілаут",
    "Сон",
    "Удома",
    "Епохи",
    "Любов",
    "Student",
    "Десі",
    "Джаз",
    "У тренді",
    "Класика",
    "Аніме",
    "Фольк і акустика",
    "Концентрація",
    "Соул",
  ];

  return Padding(
    padding: EdgeInsets.only(left: 13, right: 13, top: 30),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //  header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://i.pinimg.com/736x/87/a3/2d/87a32d0d64776b0bb06f7cb2a3fc3248.jpg",
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Пошук",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.camera_alt_outlined),
            ],
          ),
          SizedBox(height: 25),
          // search field
          TextField(
            cursorColor: Colors.black87,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            decoration: InputDecoration(
              hintText: " Що ви хочете послухати?",
              hintStyle: TextStyle(
                color: Colors.grey.shade700,
                fontWeight: FontWeight.w600,
              ),
              prefixIcon: Icon(Icons.search),
              prefixIconColor: Colors.black,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          SizedBox(height: 14),
          Text(
            "Почати перегляд",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 9),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: addRows(startNames, 50),
          ),
          SizedBox(height: 35),
          Text(
            "Відкрийте щось нове",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 14),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 175,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 175,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 175,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Переглянути все",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: addRows(names, 75),
          ),
          SizedBox(height: 80),
        ],
      ),
    ),
  );
}
