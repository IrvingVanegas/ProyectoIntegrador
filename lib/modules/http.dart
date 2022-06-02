import 'dart:convert';
import 'package:http/http.dart' as http;

class RequestResult{
  bool ok;
  dynamic data;
  RequestResult(this.ok, this.data);
}

const PROTOCOL = "http";
const DOMAIN = "192.168.1.9:8080";

Future<RequestResult> http_get(String route, [dynamic data]) async{
  var datastr = jsonEncode(data);
  var url = "$PROTOCOL://$DOMAIN/$route?data=$datastr";
  var result = await http.get(Uri.parse(url));
  return RequestResult(true, jsonDecode(result.body));
}

Future<RequestResult> http_post(String route, [dynamic data]) async{

  var url = "$PROTOCOL://$DOMAIN/$route";
  var dataStr = jsonEncode(data);
  var result = await http.post(Uri.parse(url), body: dataStr, headers:{"Content-Type":"application/json"});
  return RequestResult(true, jsonDecode(result.body));
}