import 'package:flutter/material.dart';

Widget PREMIUM() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Stack(
          children: [
            Image.network(
              "https://i.scdn.co/image/ab678e040000ed3a44a222feb62bb1fc0c13f0bd",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.grey.shade700.withOpacity(0.2),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 120,
              left: 0,
              right: 0,
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 5),
                      Icon(Icons.contactless_sharp),
                      SizedBox(width: 10),
                      Text(
                        "Premium",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Come back to Premium: 2 months for 6,00 GBP with Spotify*",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: 10,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  color: Colors.grey.shade900,
                  child: Row(
                    children: [
                      Icon(
                        Icons.notifications_active,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Limited time offer",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  ),
                  child: Text(
                    "Resume Premium",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Premium Individual only. £0 for 3 months, then £11.99 per month after. Offer only available if you haven’t tried Premium before. Terms apply.\nOffer ends 22 September 2025.",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 20, 0, 5),
                        child: Text(
                          "Why join Premium?",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 5,
                        ),
                        child: Column(
                          spacing: 15,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.volume_mute),
                                Text("Ad-free music listening"),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.download_for_offline_outlined),
                                Text("Download to listen offline"),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.compare_arrows),
                                Text("Play songs in any order"),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.headphones_outlined),
                                Text("High audio quality"),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.people),
                                Text("Listen with friends in real time"),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.schedule),
                                Text("Organise listening queue"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Available plans",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 20),
              AvailablePlans(
                plan: 'Individual',
                price_after: '£11.99/month after',
                price: '£6 for 2 months',
                features: [
                  '1 Premium account',
                  'Cancel anytime',
                  '15 hours/month of listening time from out audiobooks subscriber catalogue',
                ],
                color: Colors.pink.shade100,
                end_text:
                    "Premium Individual only. £0 for 3 months, then £11.99 per month after. Offer only available if you haven’t tried Premium before. Terms apply.\nOffer ends 22 September 2025.",
              ),
              SizedBox(height: 15),
              AvailablePlans(
                plan: 'Student',
                price: '£5.99 / month',
                features: [
                  '1 verified Premium account',
                  'Discount for eligible students',
                  'Cancel anytime',
                ],
                color: Colors.purple.shade200,
                end_text:
                    "Offer available only to students at an accredited higher education institution. Terms apply.",
              ),
              SizedBox(height: 15),
              AvailablePlans(
                plan: 'Duo',
                price: '£16.99 / month',
                features: [
                  '2 Premium account',
                  'Cancel anytime',
                  '15 hours/month of listening time from our audiobooks subscriber catalogue (plan manager only)',
                ],
                color: Colors.orange.shade300,
                end_text:
                    "For couples who reside at the same address. Terms apply.",
              ),
              SizedBox(height: 15),
              AvailablePlans(
                plan: 'Duo',
                price: '£19.99 / month',
                features: [
                  'Up to 6 Premium of Kids accounts',
                  'Control content marked as explicit',
                  'Access to Spotify Kids',
                  'Cancel anytime',
                  '15 hours/month of listening time from our audiobooks subscriber catalogue (plan manager only)',
                ],
                color: Colors.blueGrey.shade300,
                end_text:
                    "For up to 6 family members who reside at the same address. Terms apply.",
              ),
            ],
          ),
        ),
        SizedBox(height: 80),
      ],
    ),
  );
}

Widget AvailablePlans({
  required String plan,
  required String price,
  String? price_after,
  required List<String> features,
  required Color color,
  required String end_text,
}) {
  return Card(
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.contactless_sharp),
              SizedBox(width: 5),
              Text(
                "Premium",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ],
          ),
          Text(
            plan,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            price,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          if (price_after != null)
            Text(
              price_after,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 11,
                color: Colors.grey,
              ),
            ),
          Divider(),
          ListView.builder(
            itemCount: features.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            itemBuilder: (BuildContext context, int index) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Text(
                    "·",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      features[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color),
                fixedSize: MaterialStateProperty.all(Size(200, 50)),
              ),
              child: Text(
                "Resume Premium",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            end_text,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
        ],
      ),
    ),
  );
}
