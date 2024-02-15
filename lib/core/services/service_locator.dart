import 'package:get_it/get_it.dart';
import 'package:shopping_app/core/database/cache/cache_helper.dart';
import '../../features/home/data/repos/home_repo_impl.dart';
import '../utils/api_service.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService());
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
