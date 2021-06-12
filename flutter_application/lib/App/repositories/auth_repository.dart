import 'package:get/get.dart';

class AuthRepository {
// final MyAp api;

// AuthRepository({required this.api}) : assert(api != null);

// getAll(){
//   return api.getAll();
// }
// getId(id){
//   return api.getId(id);
// }
// delete(id){
//   return api.delete(id);
// }
// edit(obj){
//   return api.edit( obj );
// }
// add(obj){
//     return api.add( obj );
// }

}

// ignore: one_member_abstracts
abstract class IEmmaRepository {
  Future<dynamic> getPageName();
}

class EmmaRepository implements IEmmaRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Emma Page');
}
