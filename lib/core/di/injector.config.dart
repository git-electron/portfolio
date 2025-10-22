// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i833;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:portfolio/core/di/locator.dart' as _i756;
import 'package:portfolio/core/domain/services/device_info_service.dart'
    as _i878;
import 'package:portfolio/core/router/router.dart' as _i341;
import 'package:portfolio/core/utils/url_launcher/url_launcher.dart' as _i804;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final locator = _$Locator();
    gh.factory<_i974.Logger>(() => locator.logger);
    gh.factory<_i833.DeviceInfoPlugin>(() => locator.deviceInfoPlugin);
    gh.factory<_i804.UrlLauncher>(() => _i804.UrlLauncher());
    gh.singleton<_i341.AppRouter>(() => _i341.AppRouter(gh<_i974.Logger>()));
    await gh.singletonAsync<_i878.DeviceInfoService>(() {
      final i = _i878.DeviceInfoService(gh<_i833.DeviceInfoPlugin>());
      return i.init().then((_) => i);
    }, preResolve: true);
    return this;
  }
}

class _$Locator extends _i756.Locator {}
