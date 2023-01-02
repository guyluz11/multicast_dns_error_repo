import 'package:network_tools/network_tools.dart';

class MdnsSearchDevices {
  Future<void> searchMdnsDevices() async {
    while (true) {
      for (ActiveHost activeHost in await MdnsScanner.searchMdnsDevices(
        forceUseOfSavedSrvRecordList: true,
      )) {}
      DateTime now = DateTime.now();
      print('timestamp: ${now.hour}:${now.minute}.${now.second}');
    }
  }
}
