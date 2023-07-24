
import 'package:dio/dio.dart';


/// сервис аутентификации пользователя
class AuthService{

 final Dio dio = Dio();

 Future<void> loginUser(String login, String password) async{
   try{
     final response = await dio.post('http://158.160.14.209/api/v1/auth/login', data: {'login':login, 'password':password});
   }catch(e){
     throw Exception(e.toString());
   }
 }
}

