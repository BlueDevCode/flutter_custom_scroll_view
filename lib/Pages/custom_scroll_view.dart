import 'package:flutter/material.dart';

class CustomScrollViewWidget extends StatelessWidget {
  const CustomScrollViewWidget({super.key, required List<Widget> slivers});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
      SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.pink[100* (index % 9)],
              child: Text( "Grid $index "),
            );
          },
          childCount: 50,
          ), gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing:10.0,
            childAspectRatio: 4.0
            
            )
    
        )


      ],
    );
  }
}