// import 'dart:convert';

// const baseUrl = 'http://gerador-nomes.herokuapp.com/nomes/10';

// class Api extends GetConnect {

// final api;
// ApiApi({@required this.api});


// // Get request
// Future<Response> getUser(int id) => get('http://youapi/users/id');
// // Post request
// Future<Response> postUser(Map data) => post('http://youapi/users', body: data);
// // Post request with File
// Future<Response<CasesModel>> postCases(List<int> image) {
//   final form = FormData({
//     'file': MultipartFile(image, filename: 'avatar.png'),
//     'otherFile': MultipartFile(image, filename: 'cover.png'),
//   });
//   return post('http://youapi/users/upload', form);
// }
// GetSocket userMessages() {
//   return socket('https://yourapi/users/socket');
// }

// }

// import 'dart:convert';
// import 'package:dio/dio.dart';
// import 'package:meta/meta.dart';

// const baseUrl = 'http://gerador-nomes.herokuapp.com/nomes/10';

// class MyApiClient {

// final Dio httpClient;
// MyApiClient({@required this.httpClient});


// getAll() async {
//   try {
//     var response = await httpClient.get(baseUrl);
//     if(response.statusCode == 200){
//       Map<String, dynamic> jsonResponse = json.decode(response.data);
//         List<MyModel> listMyModel = jsonResponse['data'].map<MyModel>((map) { 
//           return MyModel.fromJson(map);
//         }).toList();
//       return listMyModel;
//     }else print ('erro -get');
//   } catch(_){ }
// }

// }