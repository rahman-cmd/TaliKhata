import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: HomeActive(), debugShowCheckedModeBanner: false);
  }
}


class MyAlertDialog extends StatelessWidget {
  final String title;
  final String content;

  MyAlertDialog({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title, style: TextStyle(fontFamily: 'Hind_Siliguri', fontSize: 25, fontWeight: FontWeight.bold),),
      content: Text(content, style: TextStyle(fontFamily: 'Hind_Siliguri'),),
    );
  }
}


class HomeActive extends StatelessWidget {
  const HomeActive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ট্যালি খাতা",
              style: TextStyle(
                  fontFamily: 'Hind_Siliguri',
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          backgroundColor: Color(0xff006c0a),
        ),
        drawer: Drawer(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff006c0a),
                ),
                accountName: Text("আব্দুর রহমান"),
                accountEmail: Text("demo@gmail.com।"),
                currentAccountPicture: CircleAvatar(
                  // show sample user image in drawer from Icon
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("হোম", style: TextStyle(fontFamily: 'Hind_Siliguri'),),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AlertDialog(
                          title: Text("হোম"),
                          content: Text("হোম পেজে আপনি যাচ্ছেন"),
                        );
                      });
                },
              ),
              ListTile(
                leading: const Icon(Icons.add),
                title: const Text("ট্যালি খাতা যোগ করুন", style: TextStyle(fontFamily: 'Hind_Siliguri'),),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AlertDialog(
                          title: Text("ট্যালি খাতা যোগ করুন", style: TextStyle(fontFamily: 'Hind_Siliguri'),),
                          content: Text("ট্যালি খাতা যোগ করুন", style: TextStyle(fontFamily: 'Hind_Siliguri'),),
                        );
                      });
                },
              ),
              ListTile(
                leading: const Icon(Icons.list),
                title: const Text("ট্যালি খাতা তালিকা", style: TextStyle(fontFamily: 'Hind_Siliguri'),),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AlertDialog(
                          title: Text("ট্যালি খাতা তালিকা"),
                          content: Text("ট্যালি খাতা তালিকা দেখতে পারবেন না।"),
                        );
                      });
                },
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text("আমাদের সম্পর্কে", style: TextStyle(fontFamily: 'Hind_Siliguri'),),
                // onTap show alert dialog and close drawer and app icon
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AlertDialog(
                          title: Text("আমাদের সম্পর্কে", style: TextStyle(fontFamily: 'Hind_Siliguri', fontSize: 25, fontWeight: FontWeight.bold),),
                          content: Text("এই অ্যাপটি তৈরি করেছেন আব্দুর রহমান", style: TextStyle(fontFamily: 'Hind_Siliguri'),),
                        );
                      });
                },
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,
            children: <Widget>[
              // with icopn and text
              Card(
                // with color code 577d8a
                color: const Color(0xff006c0a),
                child: InkWell(
                  // onTap in card show alert dialog for sell product in dilog box show input field
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return MyAlertDialog(title: "ট্যালি খাতা", content: "ট্যালি খাতা যোগ করুন");
                        });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Icon(Icons.add, size: 50, color: Colors.white),
                      const Text("বিক্রয়",
                          style: TextStyle(
                              fontFamily: 'Hind_Siliguri',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ),
              Card(
                color: const Color(0xff006c0a),
                child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const AlertDialog(
                            title: Text("ট্যালি খাতা", style: TextStyle(fontFamily: 'Hind_Siliguri', fontSize: 25, fontWeight: FontWeight.bold),),
                            content: Text("ট্যালি খাতা ক্রয়", style: TextStyle(fontFamily: 'Hind_Siliguri'),),
                          );
                        });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Icon(Icons.remove, size: 50, color: Colors.white),
                      const Text("ক্রয়",
                          style: TextStyle(
                              fontFamily: 'Hind_Siliguri',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ),
              Card(
                color: const Color(0xff006c0a),
                child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const AlertDialog(
                            title: Text("ট্যালি খাতা", style: TextStyle(fontFamily: 'Hind_Siliguri', fontSize: 25, fontWeight: FontWeight.bold),),
                            content: Text("ট্যালি খাতা বিক্রয় হিসাব", style: TextStyle(fontFamily: 'Hind_Siliguri'),),
                          );
                        });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Icon(Icons.money, size: 50, color: Colors.white),
                      const Text("বিক্রয় হিসাব",
                          style: TextStyle(
                              fontFamily: 'Hind_Siliguri',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ),
              Card(
                color: const Color(0xff006c0a),
                child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const AlertDialog(
                            title: Text("ট্যালি খাতা", style: TextStyle(fontFamily: 'Hind_Siliguri', fontSize: 25, fontWeight: FontWeight.bold),),
                            content: Text("ট্যালি খাতা ক্রয় হিসাব", style: TextStyle(fontFamily: 'Hind_Siliguri'),),
                          );
                        });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Icon(Icons.money_off,
                          size: 50, color: Colors.white),
                      const Text("ক্রয় হিসাব",
                          style: TextStyle(
                              fontFamily: 'Hind_Siliguri',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

// body: SingleChildScrollView(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton(onPressed: () {}, child: Text("Button 1")),
//               ElevatedButton(onPressed: () {}, child: Text("Button 2")),
//               ElevatedButton(onPressed: () {}, child: Text("Button 3")),
//             ],
//           ),
//         ));

// children: [
//   Image(
//     image: NetworkImage("https://picsum.photos/250?image=9"),
//     width: 300,
//     height: 300,
//   ),
//   Image(
//     image: NetworkImage("https://picsum.photos/250?image=9"),
//     width: 300,
//     height: 300,
//   ),
//   Image(
//       image: NetworkImage("https://picsum.photos/250?image=9"),
//       width: 300,
//       height: 300),
//   Image(
//       image: NetworkImage("https://picsum.photos/250?image=9"),
//       width: 300,
//       height: 300),
// ],
