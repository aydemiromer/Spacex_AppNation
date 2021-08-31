class SpaceX {
  Null fairings;
  Links links;
  String staticFireDateUtc;
  int staticFireDateUnix;
  bool net;
  int window;
  String rocket;
  bool success;
  List<Null> failures;
  String details;
  List<Null> crew;
  List<String> ships;
  List<Null> capsules;
  List<String> payloads;
  String launchpad;
  int flightNumber;
  String name;
  String dateUtc;
  int dateUnix;
  String dateLocal;
  String datePrecision;
  bool upcoming;
  List<Cores> cores;
  bool autoUpdate;
  bool tbd;
  String launchLibraryId;
  String id;

  SpaceX(
      {this.fairings,
      this.links,
      this.staticFireDateUtc,
      this.staticFireDateUnix,
      this.net,
      this.window,
      this.rocket,
      this.success,
      this.failures,
      this.details,
      this.crew,
      this.ships,
      this.capsules,
      this.payloads,
      this.launchpad,
      this.flightNumber,
      this.name,
      this.dateUtc,
      this.dateUnix,
      this.dateLocal,
      this.datePrecision,
      this.upcoming,
      this.cores,
      this.autoUpdate,
      this.tbd,
      this.launchLibraryId,
      this.id});

  SpaceX.fromJson(Map<String, dynamic> json) {
    fairings = json['fairings'];
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    staticFireDateUtc = json['static_fire_date_utc'];
    staticFireDateUnix = json['static_fire_date_unix'];
    net = json['net'];
    window = json['window'];
    rocket = json['rocket'];
    success = json['success'];
    if (json['failures'] != null) {
      failures = new List<Null>();
      json['failures'].forEach((v) {
        // failures.add( Null.fromJson(v));
      });
    }
    details = json['details'];
    if (json['crew'] != null) {
      crew = new List<Null>();
      json['crew'].forEach((v) {
        // crew.add(new Null.fromJson(v));
      });
    }
    ships = json['ships'].cast<String>();
    if (json['capsules'] != null) {
      capsules = new List<Null>();
      json['capsules'].forEach((v) {
        // capsules.add(new Null.fromJson(v));
      });
    }
    payloads = json['payloads'].cast<String>();
    launchpad = json['launchpad'];
    flightNumber = json['flight_number'];
    name = json['name'];
    dateUtc = json['date_utc'];
    dateUnix = json['date_unix'];
    dateLocal = json['date_local'];
    datePrecision = json['date_precision'];
    upcoming = json['upcoming'];
    if (json['cores'] != null) {
      cores = new List<Cores>();
      json['cores'].forEach((v) {
        cores.add(new Cores.fromJson(v));
      });
    }
    autoUpdate = json['auto_update'];
    tbd = json['tbd'];
    launchLibraryId = json['launch_library_id'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fairings'] = this.fairings;
    if (this.links != null) {
      data['links'] = this.links.toJson();
    }
    data['static_fire_date_utc'] = this.staticFireDateUtc;
    data['static_fire_date_unix'] = this.staticFireDateUnix;
    data['net'] = this.net;
    data['window'] = this.window;
    data['rocket'] = this.rocket;
    data['success'] = this.success;
    if (this.failures != null) {
      //data['failures'] = this.failures.map((v) => v.toJson()).toList();
    }
    data['details'] = this.details;
    if (this.crew != null) {
      // data['crew'] = this.crew.map((v) => v.toJson()).toList();
    }
    data['ships'] = this.ships;
    if (this.capsules != null) {
      //data['capsules'] = this.capsules.map((v) => v.toJson()).toList();
    }
    data['payloads'] = this.payloads;
    data['launchpad'] = this.launchpad;
    data['flight_number'] = this.flightNumber;
    data['name'] = this.name;
    data['date_utc'] = this.dateUtc;
    data['date_unix'] = this.dateUnix;
    data['date_local'] = this.dateLocal;
    data['date_precision'] = this.datePrecision;
    data['upcoming'] = this.upcoming;
    if (this.cores != null) {
      data['cores'] = this.cores.map((v) => v.toJson()).toList();
    }
    data['auto_update'] = this.autoUpdate;
    data['tbd'] = this.tbd;
    data['launch_library_id'] = this.launchLibraryId;
    data['id'] = this.id;
    return data;
  }
}

class Links {
  Patch patch;
  Reddit reddit;
  Flickr flickr;
  Null presskit;
  String webcast;
  String youtubeId;
  Null article;
  String wikipedia;

  Links(
      {this.patch,
      this.reddit,
      this.flickr,
      this.presskit,
      this.webcast,
      this.youtubeId,
      this.article,
      this.wikipedia});

  Links.fromJson(Map<String, dynamic> json) {
    patch = json['patch'] != null ? new Patch.fromJson(json['patch']) : null;
    reddit =
        json['reddit'] != null ? new Reddit.fromJson(json['reddit']) : null;
    flickr =
        json['flickr'] != null ? new Flickr.fromJson(json['flickr']) : null;
    presskit = json['presskit'];
    webcast = json['webcast'];
    youtubeId = json['youtube_id'];
    article = json['article'];
    wikipedia = json['wikipedia'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.patch != null) {
      data['patch'] = this.patch.toJson();
    }
    if (this.reddit != null) {
      data['reddit'] = this.reddit.toJson();
    }
    if (this.flickr != null) {
      data['flickr'] = this.flickr.toJson();
    }
    data['presskit'] = this.presskit;
    data['webcast'] = this.webcast;
    data['youtube_id'] = this.youtubeId;
    data['article'] = this.article;
    data['wikipedia'] = this.wikipedia;
    return data;
  }
}

class Patch {
  String small;
  String large;

  Patch({this.small, this.large});

  Patch.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    large = json['large'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this.small;
    data['large'] = this.large;
    return data;
  }
}

class Reddit {
  String campaign;
  String launch;
  Null media;
  Null recovery;

  Reddit({this.campaign, this.launch, this.media, this.recovery});

  Reddit.fromJson(Map<String, dynamic> json) {
    campaign = json['campaign'];
    launch = json['launch'];
    media = json['media'];
    recovery = json['recovery'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['campaign'] = this.campaign;
    data['launch'] = this.launch;
    data['media'] = this.media;
    data['recovery'] = this.recovery;
    return data;
  }
}

class Flickr {
  List<Null> small;
  List<Null> original;

  Flickr({this.small, this.original});

  Flickr.fromJson(Map<String, dynamic> json) {
    if (json['small'] != null) {
      small = new List<Null>();
      json['small'].forEach((v) {
        //small.add(new Null.fromJson(v));
      });
    }
    if (json['original'] != null) {
      original = new List<Null>();
      json['original'].forEach((v) {
        // original.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.small != null) {
      //data['small'] = this.small.map((v) => v.toJson()).toList();
    }
    if (this.original != null) {
      // data['original'] = this.original.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Cores {
  String core;
  int flight;
  bool gridfins;
  bool legs;
  bool reused;
  bool landingAttempt;
  bool landingSuccess;
  String landingType;
  String landpad;

  Cores(
      {this.core,
      this.flight,
      this.gridfins,
      this.legs,
      this.reused,
      this.landingAttempt,
      this.landingSuccess,
      this.landingType,
      this.landpad});

  Cores.fromJson(Map<String, dynamic> json) {
    core = json['core'];
    flight = json['flight'];
    gridfins = json['gridfins'];
    legs = json['legs'];
    reused = json['reused'];
    landingAttempt = json['landing_attempt'];
    landingSuccess = json['landing_success'];
    landingType = json['landing_type'];
    landpad = json['landpad'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['core'] = this.core;
    data['flight'] = this.flight;
    data['gridfins'] = this.gridfins;
    data['legs'] = this.legs;
    data['reused'] = this.reused;
    data['landing_attempt'] = this.landingAttempt;
    data['landing_success'] = this.landingSuccess;
    data['landing_type'] = this.landingType;
    data['landpad'] = this.landpad;
    return data;
  }
}
