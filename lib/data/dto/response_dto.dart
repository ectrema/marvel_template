import 'package:json_annotation/json_annotation.dart';

part 'response_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ResponseDto {
  final dynamic data;

  ResponseDto({
    required this.data,
  });

  factory ResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseDtoToJson(this);
}
