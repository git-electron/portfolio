// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:portfolio/core/di/locator.dart' as _i756;
import 'package:portfolio/core/router/router.dart' as _i341;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final locator = _$Locator();
    gh.factory<_i974.Logger>(() => locator.logger);
    gh.singleton<_i341.AppRouter>(() => _i341.AppRouter(gh<_i974.Logger>()));
    return this;
  }
}

class _$Locator extends _i756.Locator {}
