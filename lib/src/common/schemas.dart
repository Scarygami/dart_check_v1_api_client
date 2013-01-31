part of check_v1_api_client;

class DiscoveryCheckAPI {
  String firstDiscovery;
  String lastChange;
  String lastCheck;
  String name;
  String version;

  /** Create new DiscoveryCheckAPI from JSON data */
  DiscoveryCheckAPI.fromJson(Map json) {
    if (json.containsKey("firstDiscovery")) {
      firstDiscovery = json["firstDiscovery"];
    }
    if (json.containsKey("lastChange")) {
      lastChange = json["lastChange"];
    }
    if (json.containsKey("lastCheck")) {
      lastCheck = json["lastCheck"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("version")) {
      version = json["version"];
    }
  }

  /** Create JSON Object for DiscoveryCheckAPI */
  Map toJson() {
    var output = new Map();

    if (firstDiscovery != null) {
      output["firstDiscovery"] = firstDiscovery;
    }
    if (lastChange != null) {
      output["lastChange"] = lastChange;
    }
    if (lastCheck != null) {
      output["lastCheck"] = lastCheck;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (version != null) {
      output["version"] = version;
    }

    return output;
  }

  /** Return String representation of DiscoveryCheckAPI */
  String toString() => JSON.stringify(this.toJson());

}

class DiscoveryCheckAPIList {
  List<DiscoveryCheckAPI> items;

  /** Create new DiscoveryCheckAPIList from JSON data */
  DiscoveryCheckAPIList.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new DiscoveryCheckAPI.fromJson(item));
      });
    }
  }

  /** Create JSON Object for DiscoveryCheckAPIList */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of DiscoveryCheckAPIList */
  String toString() => JSON.stringify(this.toJson());

}

