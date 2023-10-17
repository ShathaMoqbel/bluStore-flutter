import 'package:blustore/homepage/drawer.dart';
import 'package:blustore/homepage/myAppar.dart';
import 'package:blustore/homepage/myBottomNavigationBar.dart';
import 'package:blustore/store/moduls/storeList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class storePage extends StatefulWidget {
  storePage({Key? key}) : super(key: key);

  @override
  State<storePage> createState() => _storePageState();
}

class _storePageState extends State<storePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 239, 239),
      appBar: myAppar(),
      endDrawer: myenddrawer(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  //    color: Color.fromARGB(255, 242, 239, 239),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 214, 213, 213),
                    ),
                    color: Color.fromARGB(255, 242, 239, 239),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        CupertinoIcons.search,
                        color: Color.fromARGB(255, 214, 213, 213),
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "البحث",
                        style: TextStyle(
                          color: Color.fromARGB(255, 214, 213, 213),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: storeData.length,
                itemBuilder: (context, index) => Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  elevation: 2,
                  child: ListTile(
                    leading: Image.asset(storeData[index].image),
                    title: Text(storeData[index].nameStore),
                    subtitle: Text(storeData[index].typeStore),
                    trailing: Text(storeData[index].dastance),
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: myBottomNavigationBar(),
    );
  }
}
