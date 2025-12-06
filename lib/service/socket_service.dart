import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import '../helper/local_db/local_db.dart';
import '../utils/app_const/app_const.dart';
import 'api_url.dart';

class SocketApi {
  // Singleton instance of the class
  factory SocketApi() {
    return _socketApi;
  }

  // Private constructor for singleton
  SocketApi._internal();

  static late io.Socket socket;

  ///<------------------------- Socket Initialization with dynamic User ID ---------------->

  static void init() async {
    String userId = await SharePrefsHelper.getString(AppConstants.userID!);
    if (userId.isEmpty || userId == "null") {
      debugPrint('Socket Connected >>>>>>>>>>>> FALSE <<<<<<<<<<<<');
      return;
    }
    socket = io.io(
      ApiUrl.socketUrl(userID: userId),
      io.OptionBuilder().setTransports(['websocket']).build(),
    );

    debugPrint(
      '$userId=============> Socket initialization, connected: ${socket.connected}',
    );

    // Listen for socket connection
    socket.onConnect((_) {
      debugPrint(
        '==============>>>>>>> Socket Connected ${socket.connected} ===============<<<<<<<',
      );
    });

    // Listen for unauthorized events
    socket.on('unauthorized', (dynamic data) {
      debugPrint('Unauthorized');
    });

    // Listen for errors
    socket.onError((dynamic error) {
      debugPrint('Socket error: $error');
    });

    // Listen for disconnection
    socket.onDisconnect((dynamic data) {
      debugPrint('>>>>>>>>>> Socket instance disconnected <<<<<<<<<<<<$data');
    });
  }

  // Static instance of the class
  static final SocketApi _socketApi = SocketApi._internal();
}
