import 'package:flutter/material.dart';
import 'package:listo/cross_components/cross_button.dart';
import 'package:listo/custom_items/custom_navigation_bar.dart';
import 'package:listo/custom_items/custom_page_item.dart';

class MainPage extends StatefulWidget {
  static String routeName = '/main_page';

  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<CustomPageItem> pagesContent = [
    CustomPageItem(
      "Listo.",
      IconButton(
        icon: const Icon(
          Icons.backspace,
          color: Colors.black,
        ),
        color: Colors.white,
        onPressed: () {},
      ),
      [
        IconButton(
          icon: const Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          color: Colors.white,
          onPressed: () {},
        ),
      ],
      const Text("Привет!"),
      Icons.person,
      'Главная',
    ),
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: pagesContent[currentPage].actions,
        leading: pagesContent[currentPage].leading,
        elevation: 0,
        title: Text(
          pagesContent[currentPage].title,
          style: const TextStyle(
            fontFamily: "Glacial",
            fontSize: 32,
            color: Colors.black,
          ),
        ),
      ),
      body: pagesContent[currentPage].content,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var item in pagesContent)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentPage = pagesContent.indexOf(item);
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(
                      milliseconds: 200,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          item.icon,
                          color: Colors.black,
                        ),
                        Text(item.label),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
