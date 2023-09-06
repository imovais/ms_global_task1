import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ms_global_task1/Screens/Home/home_controller.dart';
import 'package:ms_global_task1/common_widget/text_field.dart';
import 'package:ms_global_task1/constants/colors.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final HomeController c = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: AppColors.primary,
        ),
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          title: const Text('Lorem Ipsum'),
          // leading: const Icon(Icons.menu),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search)))
          ],
          bottom: const TabBar(indicatorColor: Colors.white, tabs: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text('ALL POST'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text('PROFILE'),
            )
          ]),
        ),
        body: TabBarView(children: [
          const AllProducts(title: 'Product Title'),
          Profile(),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.secondary,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

// PROFILE TAB
class Profile extends StatelessWidget {
  Profile({
    super.key,
  });

  final HomeController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(
                  c.data[index][0].toString(),
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing: Text(
                    textAlign: TextAlign.right, c.data[index][1].toString()));
          },
          separatorBuilder: (context, index) => const Divider(
                color: Colors.grey,
              ),
          itemCount: c.data.length),
    );
  }
}

// ALL PRODUCT TAB
class AllProducts extends StatelessWidget {
  const AllProducts({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: 20,
        separatorBuilder: (context, index) => const Divider(color: Colors.grey),
        itemBuilder: (context, index) => ListTile(
          title: Text(title),
          subtitle: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '),
        ),
      ),
    );
  }
}
