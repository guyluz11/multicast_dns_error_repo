import 'package:multicast_dns_error_repo/mns_search_devices.dart';

Future<void> main(List<String> arguments) async {
  while (true) {
    await MdnsSearchDevices().testMinimalCode();
    print('Continue Search');
    await Future.delayed(Duration(seconds: 60));
  }
}
