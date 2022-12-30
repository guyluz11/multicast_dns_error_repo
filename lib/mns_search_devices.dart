import 'package:network_tools/network_tools.dart';

class MdnsSearchDevices {
  Future<void> searchMdnsDevices() async {
    while (true) {
      for (ActiveHost activeHost in await MdnsScanner.searchMdnsDevices(
        forceUseOfSavedSrvRecordList: true,
      )) {}
      print('Next search');
      await Future.delayed(const Duration(seconds: 60));
    }
  }
}
