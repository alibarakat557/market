// ignore: unused_import
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:emarket/model/model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Emarket {
  var h;
  bool status;
  String msg;
  bool onstatus = false;
  bool comstaus = false;
  bool tstatus = false;
  String url = 'http://ecommercebaby.herokuapp.com/api';
  var token;

/////////////////////////////////////////////////////////////////////////////rigester
  registerData(String name, String email, String password, String cpassword,
      String address, String phone) async {
    String myUrl = "$url/register";
    try {
      http.Response response = await http.post(Uri.parse(myUrl), headers: {
        'Accept': 'application/json',
      }, body: {
        "name": "$name",
        "email": "$email",
        "password": "$password",
        "c_password": "$cpassword",
        "address": "$address",
        "phone": "$phone",
      });
      //tatus = response.body.contains('error');

      var data = json.decode(response.body);

      if (data["success"]) {
        print(data["data"]["token"]);
        token = data["data"]["token"];
        msg = "true";
        status = data["success"];
        await save(token);
        await saven(data["data"]["name"]);
        read();
      } else {
        msg = 'Please check  email or password';
      }
    } catch (e) {
      msg = 'please check your network';
    }
  }

///////////////////////////////////////////////////////////////login
  loginData(String email, String password) async {
    String myUrl = "$url/login";
    status = false;
    try {
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
        token = data["data"]["token"];
        print('data:${data["data"]["token"]}');
        await save(data["data"]["token"]);
        await saven(data["data"]["name"]);
      } else {
        msg = 'Please check  email or password';
      }
    } catch (e) {
      msg = 'please check your network';
    }
  }

  save(String token) async {
    final value = token;
    final pret = await SharedPreferences.getInstance();
    final key = 'tokenn';
    pret.setString(key, value);
  }

  saven(String name) async {
    final value = name;
    final pret = await SharedPreferences.getInstance();
    final key = 'name';
    pret.setString(key, value);
  }

//////////////////////////////////////////////////////////////// Forget password
  forgot(String email) async {
    String myurl = '$url/password/forgot';
    try {
      http.Response res = await http.post(Uri.parse(myurl), headers: {
        "Accept": "application/json",
      }, body: {
        "email": "$email"
      });
      var data = jsonDecode(res.body);

      msg = data["message"];
    } catch (e) {
      msg = 'please check your network';
    }
  }

  ////////////////////////////////////////////////////////////////reset password
  reset(String toke, String pass, String conpass) async {
    String myurl = '$url/password/reset';
    print(toke);
    msg = '';
    try {
      http.Response res = await http.post(Uri.parse(myurl), headers: {
        "Accept": "application/json",
      }, body: {
        "token": "$toke",
        "password": "$pass",
        "password_confirm": "$conpass",
      });
      var data = jsonDecode(res.body);
      print(data);
      msg = data["message"];
      if (data["message"]) {
      } else {
        msg = 'Verify your code';
      }
    } catch (e) {}
  }

  read() async {
    final pret = await SharedPreferences.getInstance();
    final key = 'tokenn';
    String value = pret.get(key) ?? '';
    print('read : $value');
    return value;
  }

////////////////////////////////////////////////////////////
  Future<bool> statusid(int id) async {
    bool l;
    token = await read();
    String myurl = '$url/transportTask/$id';
    try {
      http.Response res = await http.get(
        Uri.parse(myurl),
        headers: {
          "Accept": "application/json",
          'Authorization': " Bearer $token",
        },
      );
      var data = json.decode(res.body);
      print(data);
      l = data["success"];
      print(onstatus);
      if (l) {
        onstatus = true;
      }
    } catch (e) {}
    return l;
  }

  ///////////////////////////////////////////////////////////////deleteproudact
  deleteproudact(int id) async {
    String myurl = '$url/delete/$id';
    try {
      http.Response res = await http.get(
        Uri.parse(myurl),
        headers: {
          "Accept": "application/json",
          'Authorization': " Bearer $token",
        },
      );
      var data = jsonDecode(res.body);
    } catch (e) {
      print('check your network');
    }
  }

/////////////////////////////////////////////////////////////////showuserinfo
  Future<String> userinfo() async {
    token = await read();
    String myurl = '$url/user';
    String name;
    try {
      http.Response res = await http.get(
        Uri.parse(myurl),
        headers: {
          "Accept": 'application/json',
          'Authorization': 'Bearer $token'
        },
      );
      var data = jsonDecode(res.body);
      name = data["name"];
    } catch (e) {}
    return name;
  }

////////////////////////////////////////////////////////////////////lougout
  logout() async {
    token = await read();
    String myurl = '$url/logout';
    try {
      http.Response response = await http.get(
        Uri.parse(myurl),
        headers: {
          "Accept": "application/json",
          'Authorization': " Bearer $token",
        },
      );
      var data = jsonDecode(response.body);
    } catch (e) {}
  }
}
