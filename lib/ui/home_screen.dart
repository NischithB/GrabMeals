import 'package:flutter/material.dart';
import 'package:grab_meals/ui/components/home_app_bar.dart';
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
            const SliverAppBar(
                floating: true,
                automaticallyImplyLeading: false,
                elevation: 0,
                toolbarHeight: 70,
                title: HomeAppBar()),
            SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeaderDelegate(
                    minHeight: 60,
                    maxHeight: 60,
                    child: Container(color: Colors.amber))),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Text('data: ${index}');
              }, childCount: 100),
            ),
          ],
        ),
      ),
    );
  }
}
