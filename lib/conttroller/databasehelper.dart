import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class DatabaseHelper {
  String serverurl = 'http://ecommercebaby.herokuapp.com/api';
  var status;
  String msg;
  var token;
  loginData(String email, String password) async {
    String myUrl = "$serverurl/login";
    http.Response response = await http.post(Uri.parse(myUrl), headers: {
      'Accept': 'application/json',
    }, body: {
      "email": "$email",
      "password": "$password",
    });

    var data = json.decode(response.body);
    print(data);
    status = data["success"];
    if (status) {
      print('data:${data["data"]["token"]}');
      await _save(data["data"]["token"]);
      read();
    } else {
      msg = 'hello';
    }
  }

  registerData(
      String name, String email, String password, String cpassword) async {
    String myUrl = "$serverurl/register";
    try {
      http.Response response = await http.post(Uri.parse(myUrl), headers: {
        'Accept': 'application/json',
      }, body: {
        "name": "$name",
        "email": "$email",
        "password": "$password",
        "c_password": "$cpassword",
      });
      // tatus = response.body.contains('error');

      var data = json.decode(response.body);

      if (data["success"]) {
        print(data["data"]["token"]);
        token = data["data"]["token"];
        msg = "true";
        status = data["success"];
        _save(token);
        read();
      } else {
        msg = 'check your email';
      }
    } catch (e) {
      msg = 'check your network';
    }
  }

  _save(String token) async {
    final value = token;
    final pret = await SharedPreferences.getInstance();
    final key = 'tokenn';
    pret.setString(key, value);
  }

  read() async {
    final pret = await SharedPreferences.getInstance();
    final key = 'tokenn';
    String value = pret.get(key) ?? '';
    print('read : $value');
    return value;
  }
}
