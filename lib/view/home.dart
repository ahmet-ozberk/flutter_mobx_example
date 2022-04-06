import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../controller/counter.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final counter = Counter();

  @override
  void initState() {
    counter.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (context) => counter.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: counter.users.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(
                          "${counter.users[index]!.firstName! + " " + counter.users[index]!.lastName!}"),
                      subtitle: Text("${counter.users[index]!.email}"),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          counter.users[index]!.avatar!,
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
