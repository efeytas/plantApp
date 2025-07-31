import 'package:plantapp/core/get_it.dart';
import 'package:plantapp/core/router.dart';
import 'package:plantapp/features/home/services/home_service.dart';
import 'package:plantapp/shared/services/data_storage_service.dart';


AppRouter get router => getIt.get<AppRouter>();

HomeService get homeService => getIt.get<HomeService>();

DataStorageService get prefsService => getIt.get<DataStorageService>();







