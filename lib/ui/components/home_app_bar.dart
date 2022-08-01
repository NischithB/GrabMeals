import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.amber,
                    child: Text('data'),
                  ),
                ),
        IconButton(onPressed: (){}, icon: Icon(Icons.person))
      ],
    );
  }
}
