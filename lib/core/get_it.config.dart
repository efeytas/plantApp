// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../features/home/services/api_home_service.dart' as _i427;
import '../features/home/services/home_service.dart' as _i791;
import '../shared/services/data_storage_service.dart' as _i154;
import '../shared/services/shared_preferences.dart' as _i324;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.singleton<_i154.DataStorageService>(() => _i324.PreferencesService());
  gh.singleton<_i791.HomeService>(() => _i427.ApiHomeService());
  return getIt;
}
