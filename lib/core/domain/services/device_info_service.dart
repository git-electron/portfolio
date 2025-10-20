import 'package:device_info_plus/device_info_plus.dart';
import 'package:injectable/injectable.dart';

@singleton
class DeviceInfoService {
  final DeviceInfoPlugin _deviceInfoPlugin;

  DeviceInfoService(this._deviceInfoPlugin);

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    _webBrowserInfo = await _deviceInfoPlugin.webBrowserInfo;
  }

  late final WebBrowserInfo _webBrowserInfo;

  bool get isMobileDevice {
    print(_webBrowserInfo.platform);
    return false;
  }
}
