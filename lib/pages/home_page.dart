import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Loading Effect"),
        ),
        body: ListView.separated(
          itemBuilder: ((context, index) {
            return Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                title: Container(
                  height: 20,
                  color: Colors.white,
                ),
                subtitle: Container(
                  height: 13,
                  color: Colors.white,
                ),
              ),
            );
          }),
          separatorBuilder: (_, __) => const SizedBox(
            height: 15,
          ),
          itemCount: 10,
        ));
  }
}
