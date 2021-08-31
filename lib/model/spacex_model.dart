class Articles {
  bool autoUpdate;
  List<Cores> cores;
  String dateLocal;
  String datePrecision;
  int dateUnix;
  String dateUtc;
  String details;
  int flightNumber;
  String id;
  String launchLibraryId;
  String launchpad;
  Links links;
  String name;
  bool net;
  List<String> payloads;
  String rocket;
  List<String> ships;
  int staticFireDateUnix;
  String staticFireDateUtc;
  bool success;
  bool tbd;
  bool upcoming;
  int window;

  Articles(
      {this.autoUpdate,
      this.cores,
      this.dateLocal,
      this.datePrecision,
      this.dateUnix,
      this.dateUtc,
      this.details,
      this.flightNumber,
      this.id,
      this.launchLibraryId,
      this.launchpad,
      this.links,
      this.name,
      this.net,
      this.payloads,
      this.rocket,
      this.ships,
      this.staticFireDateUnix,
      this.staticFireDateUtc,
      this.success,
      this.tbd,
      this.upcoming,
      this.window});

  Articles.fromJson(Map<String, dynamic> json) {
    autoUpdate = json['auto_update'];
    if (json['cores'] != null) {
      cores = new List<Cores>();
      json['cores'].forEach((v) {
        cores.add(new Cores.fromJson(v));
      });
    }
    dateLocal = json['date_local'];
    datePrecision = json['date_precision'];
    dateUnix = json['date_unix'];
    dateUtc = json['date_utc'];
    details = json['details'];
    flightNumber = json['flight_number'];
    id = json['id'];
    launchLibraryId = json['launch_library_id'];
    launchpad = json['launchpad'];
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    name = json['name'];
    net = json['net'];
    payloads = json['payloads'].cast<String>();
    rocket = json['rocket'];
    ships = json['ships'].cast<String>();
    staticFireDateUnix = json['static_fire_date_unix'];
    staticFireDateUtc = json['static_fire_date_utc'];
    success = json['success'];
    tbd = json['tbd'];
    upcoming = json['upcoming'];
    window = json['window'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['auto_update'] = this.autoUpdate;
    if (this.cores != null) {
      data['cores'] = this.cores.map((v) => v.toJson()).toList();
    }
    data['date_local'] = this.dateLocal;
    data['date_precision'] = this.datePrecision;
    data['date_unix'] = this.dateUnix;
    data['date_utc'] = this.dateUtc;
    data['details'] = this.details;
    data['flight_number'] = this.flightNumber;
    data['id'] = this.id;
    data['launch_library_id'] = this.launchLibraryId;
    data['launchpad'] = this.launchpad;
    if (this.links != null) {
      data['links'] = this.links.toJson();
    }
    data['name'] = this.name;
    data['net'] = this.net;
    data['payloads'] = this.payloads;
    data['rocket'] = this.rocket;
    data['ships'] = this.ships;
    data['static_fire_date_unix'] = this.staticFireDateUnix;
    data['static_fire_date_utc'] = this.staticFireDateUtc;
    data['success'] = this.success;
    data['tbd'] = this.tbd;
    data['upcoming'] = this.upcoming;
    data['window'] = this.window;
    return data;
  }
}

class Cores {
  String core;
  int flight;
  bool gridfins;
  bool landingAttempt;
  bool landingSuccess;
  String landingType;
  String landpad;
  bool legs;
  bool reused;

  Cores(
      {this.core,
      this.flight,
      this.gridfins,
      this.landingAttempt,
      this.landingSuccess,
      this.landingType,
      this.landpad,
      this.legs,
      this.reused});

  Cores.fromJson(Map<String, dynamic> json) {
    core = json['core'];
    flight = json['flight'];
    gridfins = json['gridfins'];
    landingAttempt = json['landing_attempt'];
    landingSuccess = json['landing_success'];
    landingType = json['landing_type'];
    landpad = json['landpad'];
    legs = json['legs'];
    reused = json['reused'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['core'] = this.core;
    data['flight'] = this.flight;
    data['gridfins'] = this.gridfins;
    data['landing_attempt'] = this.landingAttempt;
    data['landing_success'] = this.landingSuccess;
    data['landing_type'] = this.landingType;
    data['landpad'] = this.landpad;
    data['legs'] = this.legs;
    data['reused'] = this.reused;
    return data;
  }
}

class Links {
  Patch patch;
  Reddit reddit;
  String webcast;
  String wikipedia;
  String youtubeId;

  Links(
      {this.patch, this.reddit, this.webcast, this.wikipedia, this.youtubeId});

  Links.fromJson(Map<String, dynamic> json) {
    patch = json['patch'] != null ? new Patch.fromJson(json['patch']) : null;
    reddit =
        json['reddit'] != null ? new Reddit.fromJson(json['reddit']) : null;
    webcast = json['webcast'];
    wikipedia = json['wikipedia'];
    youtubeId = json['youtube_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.patch != null) {
      data['patch'] = this.patch.toJson();
    }
    if (this.reddit != null) {
      data['reddit'] = this.reddit.toJson();
    }
    data['webcast'] = this.webcast;
    data['wikipedia'] = this.wikipedia;
    data['youtube_id'] = this.youtubeId;
    return data;
  }
}

class Patch {
  String large;
  String small;

  Patch({this.large, this.small});

  Patch.fromJson(Map<String, dynamic> json) {
    large = json['large'];
    small = json['small'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['large'] = this.large;
    data['small'] = this.small;
    return data;
  }
}

class Reddit {
  String campaign;
  String launch;

  Reddit({this.campaign, this.launch});

  Reddit.fromJson(Map<String, dynamic> json) {
    campaign = json['campaign'];
    launch = json['launch'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['campaign'] = this.campaign;
    data['launch'] = this.launch;
    return data;
  }
}
