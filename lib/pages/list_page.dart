import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  ListPage({Key? key});

  final List<Map<String, String>> dataList = [
    {
      'title': 'Title 1',
      'description': 'Description 1',
    },
    {
      'title': 'Title 2',
      'description': 'Description 2',
    },
    {
      'title': 'Title 3',
      'description': 'Description 3',
    },
    {
      'title': 'Title 4',
      'description': 'Description 4',
    },
    {
      'title': 'Title 5',
      'description': 'Description 5',
    },
    {
      'title': 'Title 6',
      'description': 'Description 6',
    },
    {
      'title': 'Title 7',
      'description': 'Description 7',
    },
    {
      'title': 'Title 8',
      'description': 'Description 8',
    },
    {
      'title': 'Title 9',
      'description': 'Description 9',
    },
    {
      'title': 'Title 10',
      'description': 'Description 10',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Page"),
        backgroundColor: Colors.grey[800],
      ),
      body: ListView.builder( // <<< FUNGSI LIST VIEW BUILDER
        itemCount: dataList.length * 2 - 1,
        itemBuilder: (context, index) {
          if (index.isOdd) {
            return Divider(
              height: 20,
              thickness: 2.2,
            );
          }
          final sectionIndex = index ~/ 2;
          final section = dataList[sectionIndex];

          return ListTile(
            leading: Text(
              (sectionIndex + 1).toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            title: Text(
              section['title']!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(section['description']!),
          );
        },
      ),
    );
  }
}

