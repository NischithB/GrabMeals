import 'package:flutter/material.dart';
import 'package:grab_meals/ui/components/home_app_bar.dart';
import 'package:grab_meals/ui/components/home_search_box.dart';
import 'package:grab_meals/ui/helper/sliver_header_delegate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                floating: true,
                automaticallyImplyLeading: false,
                elevation: 0,
                toolbarHeight: 70,
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.account_circle_rounded,
                          color: Colors.grey[500],
                          size: 35,
                        )),
                  )
                ],
                title: const HomeAppBar()),
            SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeaderDelegate(
                    minHeight: 70,
                    maxHeight: 70,
                    child: const HomeSearchBox())),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Text('data: $index');
              }, childCount: 100),
            ),
          ],
        ),
      ),
    );
  }
}
