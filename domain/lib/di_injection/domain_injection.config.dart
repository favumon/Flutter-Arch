// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../feature/api_error_handler/repositories/api_error_handler_repository.dart'
    as _i4;
import '../feature/api_error_handler/usecases/get_api_error_stream.dart' as _i3;
import '../feature/app_settings/repositories/app_settings_repository.dart'
    as _i6;
import '../feature/app_settings/usecases/get_app_settings.dart' as _i5;
import '../feature/local_storage/repositories/local_storage_repository.dart'
    as _i8;
import '../feature/local_storage/usecases/get_default_language.dart' as _i7;
import '../feature/local_storage/usecases/set_default_language.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initDomainGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.GetApiErrorStream>(
      () => _i3.GetApiErrorStream(get<_i4.ApiErrorHandlerRepository>()));
  gh.lazySingleton<_i5.GetAppSettings>(
      () => _i5.GetAppSettings(get<_i6.AppSettingsRepository>()));
  gh.lazySingleton<_i7.GetDefaultLanguage>(
      () => _i7.GetDefaultLanguage(get<_i8.LocalStorageRepository>()));
  gh.lazySingleton<_i9.SetDefaultLanguage>(
      () => _i9.SetDefaultLanguage(get<_i8.LocalStorageRepository>()));
  return get;
}
