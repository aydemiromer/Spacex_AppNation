import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacex/view-model/spacex_view_model.dart';
import 'package:spacex/config/constants/text_constants.dart';
import 'package:spacex/config/constants/text_styles.dart';
import 'package:spacex/utils/extensions/spacex_context_extension.dart';

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
        title: Text(UITextConstants.title),
      ),
      body: buildListViewSpaceX(listViewModel),
    );
  }

  ListView buildListViewSpaceX(SpaceXListViewModel listViewModel) {
    return ListView.builder(
        itemCount: listViewModel.articles.length,
        itemBuilder: (context, index) {
          var data = listViewModel.articles[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  data.title,
                  style: UITextStyles.headerStyle,
                ),
              ),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              SizedBox(
                width: context.dynamicWidth(1),
                child: Image.network(data.imageUrlLarge),
              ),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              Text(
                data.description,
                style: UITextStyles.descriptionTextStyle,
              ),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              Text(
                " Date : ${data.dateLocal}",
                style: UITextStyles.descriptionTextStyle,
              ),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              Text(
                " DateType : ${data.datePrecision}",
                style: UITextStyles.descriptionTextStyle,
              ),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              Text(
                " Flight Number : ${data.numberFlight}",
                style: UITextStyles.descriptionTextStyle,
              ),
              Text(
                " Rocket Code  and Ships Code : ${data.rocket},${data.ships} ",
                style: UITextStyles.descriptionTextStyle,
              ),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              Text(
                " Sources : ${data.redditCampaign},    ${data.redditLauncg}, ",
                style: UITextStyles.descriptionTextStyle,
              ),
            ],
          );
        });
  }
}
