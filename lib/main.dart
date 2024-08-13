import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List myDataList = [
      {
        "name": "Alice Wonderland",
        "dp": "https://picsum.photos/id/1060/536/354?blur=2",
        "bg": "https://picsum.photos/id/22/4434/3729"
      },
      {
        "name": "Bob Builder",
        "dp": "https://picsum.photos/id/20/3670/2462",
        "bg": "https://picsum.photos/id/15/2500/1667"
      },
      {
        "name": "Charlie Brown",
        "dp": "https://picsum.photos/id/24/4855/1803",
        "bg": "https://picsum.photos/id/38/1280/960"
      },
      {
        "name": "Daisy Duck",
        "dp": "https://picsum.photos/id/43/1280/831",
        "bg": "https://picsum.photos/id/45/4592/2576"
      },
      {
        "name": "Eve Online",
        "dp": "https://picsum.photos/id/48/5000/3333",
        "bg": "https://picsum.photos/id/57/2448/3264"
      },
      {
        "name": "Frank Castle",
        "dp": "https://picsum.photos/id/58/1280/853",
        "bg": "https://picsum.photos/id/78/1584/2376"
      }
    ];

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: PageView.builder(
              itemCount: myDataList.length,
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(myDataList[index]["bg"]),
                )),
                child: Column(
                  children: [
                    Divider(
                      color: Colors.white,
                      thickness: 3,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(myDataList[index]["dp"]),
                      ),
                      title: Text(
                        myDataList[index]["name"],
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "song",
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            // height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("send message"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.send,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
