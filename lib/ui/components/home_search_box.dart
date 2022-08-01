import 'package:flutter/material.dart';

class HomeSearchBox extends StatelessWidget {
  const HomeSearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      color: Colors.white,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search for restaurant or dishes',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey[600],
              )
            ],
          ),
        ),
      ),
    );
  }
}
