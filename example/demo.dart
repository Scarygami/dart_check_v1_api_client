import "dart:html";
import "package:check_v1_api/check_v1_api_browser.dart" as checklib;

void main() {
  var check = new checklib.Check();
  var container = query("#text");

  check.apis.list().then((checklib.DiscoveryCheckAPIList data) {
      container.text = "";
      data.items.forEach((item) {
        container.appendHtml("${item.name} ${item.version} - ${item.lastChange}<br>");
      });
    })
    .catchError((e) {
      container.appendHtml("$e<br>");
      return true;
    });
}
