import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacex/model/spacex_model.dart';
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

            return ListTile(
              title: Row(
                children: [
                  SizedBox(
                    //****** */
                    width: 100,
                    child: Text(data.title),
                  )
                ],
              ),
            );
          }),
    );
  }
}
