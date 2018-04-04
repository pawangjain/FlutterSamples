import 'dart:convert';
import 'dart:io';

import 'package:dson/dson.dart';
import 'package:flutter_samples/entities/euser.dart';

class UsersModel {
  static void testaHttpClient() async {
    print('vai tentar rest');
//    EUser e=new EUser();
//    e.name="Bozo";
//    var result=toJson(e);
//    print(result);
    var httpClient = new HttpClient();
    var request = await httpClient.get("10.20.104.20", 5000, "/api/Values/GetByLogin/tezine");
    var response = await request.close();
    var responseBody = await response.transform(UTF8.decoder).join();
    print('chegou resposta:' + responseBody);
    EUser eUser = fromJson(responseBody, EUser);
    print(eUser.name);

//      List<EUser> list = fromJson(responseBody, [List, EUser]);
//      if(list==null)print('nulo');
//      print(list);
//      print(list[0].name);
//      var uri = new Uri.http(
//              '127.0.0.1:5000', '/api/Values/GetAllUsers');
//      var request = await httpClient.getUrl(uri);
//      var response = await request.close();
//      var responseBody = await response.transform(UTF8.decoder).join();
  }
}
