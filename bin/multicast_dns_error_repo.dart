import 'package:multicast_dns_error_repo/mns_search_devices.dart';

Future<void> main(List<String> arguments) async {
  await MdnsSearchDevices().searchMdnsDevices();
}
