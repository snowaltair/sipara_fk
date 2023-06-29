import 'package:sipara/services/firebase_service.dart';
import 'package:sipara/services/local_storage_service.dart';
import 'package:sipara/viewmodel/login_view_model.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setUpLocator() async {
  // Services
  locator.registerSingleton<LocalStorageService>(
    await LocalStorageService.getInstance(),
  );
  locator.registerSingleton<FirebaseService>(FirebaseService());

  // Viewmodel
  locator.registerFactory<LoginViewModel>(() => LoginViewModel());
}
