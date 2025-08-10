import 'package:flutter/material.dart';

Widget AlbumCard({required String src, String? name, String? description}) {
  return SizedBox(
    width: 160,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Center(
              child: Card(
                color: Colors.grey,
                clipBehavior: Clip.hardEdge,
                child: Image.network(src, fit: BoxFit.cover),
              ),
            ),
            Positioned.fill(
              child: Material(
                type: MaterialType.transparency,
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  hoverColor: Colors.black.withOpacity(0.2),
                  splashColor: Colors.green.withOpacity(0.2),
                  highlightColor: Colors.red.withOpacity(0.2),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
        if (name != null)
          Text(
            name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
        if (description != null)
          Text(
            description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade500, fontSize: 10),
          ),
      ],
    ),
  );
}

Widget AvatarCard({required String src, required String name}) {
  return SizedBox(
    width: 160,
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(radius: 80, backgroundImage: NetworkImage(src)),
              Positioned.fill(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(80)),
                      hoverColor: Colors.black.withOpacity(0.2),
                      splashColor: Colors.green.withOpacity(0.2),
                      highlightColor: Colors.red.withOpacity(0.2),
                      onTap: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget MainText(String src) {
  return Padding(
    padding: EdgeInsets.only(top: 20),
    child: Text(
      src,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.7,
      ),
    ),
  );
}
