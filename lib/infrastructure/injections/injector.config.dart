// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:marvel_app/data/client/dio_client.dart' as _i5;
import 'package:marvel_app/data/client/interceptors/client_interceptor.dart'
    as _i6;
import 'package:marvel_app/data/endpoint/characters_endpoint.dart' as _i7;
import 'package:marvel_app/infrastructure/services/auth_service.dart' as _i3;
import 'package:marvel_app/infrastructure/services/connectivity_service.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AuthService>(_i3.AuthService.inject());
    gh.singleton<_i4.ConnectivityServive>(_i4.ConnectivityServive());
    gh.singleton<_i5.DioClient>(_i5.DioClient.inject());
    gh.singleton<_i6.AuthorizationBearerInterceptor>(
        _i6.AuthorizationBearerInterceptor(
      gh<_i5.DioClient>(),
      gh<_i3.AuthService>(),
    ));
    gh.factory<_i7.CharacterEndpoint>(
        () => _i7.CharacterEndpoint(gh<_i5.DioClient>()));
    return this;
  }
}
