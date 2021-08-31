import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacex/view-model/spacex_view_model.dart';

class SpaceXView extends StatefulWidget {
  @override
  _SpaceXViewState createState() => _SpaceXViewState();
}

class _SpaceXViewState extends State<SpaceXView> {
  @override
  void initState() {
    super.initState();
    Provider.of<SpaceXListViewModel>(context, listen: false).topHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    var listViewModel = Provider.of<SpaceXListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("SpaceX"),
      ),
      body: ListView.builder(
          itemCount: listViewModel.articles.length,
          itemBuilder: (context, index) {
            var data = listViewModel.articles[index];
            return Column(
              children: [
                Column(
                  children: [
                    Text(data.title),
                    SizedBox(
                      width: 500,
                      child: Image.network(data.imageUrlLarge),
                    ),
                    Text("Description"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(data.description)
                  ],
                )
                /*ListTile(
                  title: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(data.imageUrlLarge),
                                fit: BoxFit.cover)),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: Image.network(data.imageUrlLarge),
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(data.title),
                                  Text(data.dateUtc),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),*/
              ],
            );
          }),
    );
  }
}
