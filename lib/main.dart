import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }

}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var listData = [
  "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Bill_Gates_2017_%28cropped%29.jpg/330px-Bill_Gates_2017_%28cropped%29.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg/330px-Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Steve_Jobs_Headshot_2010-CROP_%28cropped_2%29.jpg/330px-Steve_Jobs_Headshot_2010-CROP_%28cropped_2%29.jpg",
 "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg/330px-Elon_Musk_Colorado_2022_%28cropped2%29.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Sundar_Pichai_%282023%29_cropped.jpg/330px-Sundar_Pichai_%282023%29_cropped.jpg",
"data:image/jpeg;base64,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",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Welcome to the Photo Gallery App!",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for photos..",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Image ${index + 1} Clicked"),
                      ),
                    );
                  },
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.network(
                          listData[index].toString(),
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100,
                        ),
                        Text('Photos $index')
                      ],
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                    listData[2],
                  ),
                ),
              ),
              title: Text("Photo 1"),
              subtitle: Text("Description for Photo 1"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                    listData[5],
                  ),
                ),

              ),
              title: Text("Photo 2"),
              subtitle: Text("Description for Photo 2"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                    listData[3],
                  ),
                ),
              ),
              title: Text("Photo 3"),
              subtitle: Text("Description for Photo 3"),
            ),
            Center(
              child: InkWell(
                child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.blue,
                    ),
                    child: Icon(
                      Icons.upload,
                      color: Colors.white,
                    )),
                onTap: () {
                  setState(() {
                    ScaffoldMessenger.of(context).showSnackBar(

                      SnackBar(content: Text("Photos Uploaded Successfully!")),

                    );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );

  }
}
