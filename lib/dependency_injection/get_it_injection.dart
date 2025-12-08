part of "path.dart";

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  // _initSplash();
  // _initLogin();

  serviceLocator.registerFactory(() => InternetConnection());

  /// core
  serviceLocator.registerFactory<ConnectionChecker>(
    () => ConnectionCheckerImpl(serviceLocator()),
  );

  /// ================= Api client ================
  serviceLocator.registerFactory<ApiClient>(() => ApiClient());







}
