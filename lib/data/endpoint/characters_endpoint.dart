import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_app/data/client/dio_client.dart';
import 'package:marvel_app/data/dto/response_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'characters_endpoint.g.dart';

@RestApi(parser: Parser.JsonSerializable)
@injectable
abstract class CharacterEndpoint {
  @factoryMethod
  factory CharacterEndpoint(DioClient dio) {
    return _CharacterEndpoint(dio);
  }

  @GET("/characters")
  Future<ResponseDto> getCharacters();
}
