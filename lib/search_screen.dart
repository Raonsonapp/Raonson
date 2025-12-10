import 'package:flutter/material.dart';
import '../../services/search/search_service.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  SearchService search = SearchService();
  TextEditingController controller = TextEditingController();
  List<String> results = [];

  doSearch() async {
    results = await search.search(controller.text);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Explore")),
      body: Column(
        children: [
          TextField(controller: controller, onSubmitted: (v)=>doSearch()),
          Expanded(
            child: ListView(children: results.map((e)=>ListTile(title: Text(e))).toList()),
          )
        ],
      ),
    );
  }
}