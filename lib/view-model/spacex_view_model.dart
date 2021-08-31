import 'package:flutter/material.dart';
import 'package:spacex/model/spacex_model.dart';
import 'package:spacex/service/spacex_service.dart';

class SpaceXViewModel {
  Articles _spacex;

  SpaceXViewModel({Articles article}) : _spacex = article;

  String get title {
    return _spacex.name;
  }

  String get description {
    return _spacex.details;
  }

  String get imageUrlLarge {
    return _spacex.links.patch.large;
  }

  String get imageUrlSmall {
    return _spacex.links.patch.small;
  }

  String get ships {
    return _spacex.ships.first;
  }

  String get dateLocal {
    return _spacex.dateLocal;
  }

  String get datePrecision {
    return _spacex.datePrecision;
  }

  String get dateUtc {
    return _spacex.dateUtc;
  }

  String get numberFlight {
    return _spacex.flightNumber.toString();
  }

  String get rocket {
    return _spacex.rocket.toString();
  }

  String get redditCampaign {
    return _spacex.links.reddit.campaign;
  }

  String get redditLauncg {
    return _spacex.links.reddit.launch;
  }
}

class SpaceXListViewModel with ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.searching;
  List<SpaceXViewModel> articles = List<SpaceXViewModel>.empty(growable: true);

  void topHeadlines() async {
    List<Articles> spacex = await SpaceXService().fetchTopHeadlines();
    loadingStatus = LoadingStatus.searching;
    notifyListeners();

    this.articles =
        spacex.map((article) => SpaceXViewModel(article: article)).toList();

    if (this.articles.isEmpty) {
      this.loadingStatus = LoadingStatus.empty;
    } else {
      this.loadingStatus = LoadingStatus.completed;
    }
  }
}

enum LoadingStatus { completed, searching, empty }
