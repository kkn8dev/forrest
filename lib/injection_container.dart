import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

// core feature
import 'features/core/data/data_sources/data_sources.dart';
import 'features/core/data/repositories/core_repository_impl.dart';
import 'features/core/domain/repositories/core_repository.dart';
import 'features/core/domain/usecases/usecases.dart';
import 'features/core/presentation/bloc/bloc.dart';
// core dependencies
import 'utils/dio_client.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Core feature --------------------------------------------------------------
  sl.registerLazySingleton(
    () => CoreBloc(
      initAppUseCase: sl(),
      loadHabitsUseCase: sl(),
      toggleHabitStatusUseCase: sl(),
      toggleHabitLockUseCase: sl(),
      createHabitUseCase: sl(),
      deleteHabitUseCase: sl(),
    ),
  );
  sl.registerLazySingleton(() => InitAppUseCase(sl()));
  sl.registerLazySingleton(() => LoadHabitsUseCase(sl()));
  sl.registerLazySingleton(() => ToggleHabitStatusUseCase(sl()));
  sl.registerLazySingleton(() => ToggleHabitLockUseCase(sl()));
  sl.registerLazySingleton(() => CreateHabitUseCase(sl()));
  sl.registerLazySingleton(() => DeleteHabitUseCase(sl()));
  sl.registerLazySingleton<CoreRepository>(
    () => CoreRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<CoreRemoteDataSource>(
    // () => CoreRemoteDataSourceMock(),
    () => CoreRemoteDataSourceImpl(client: sl()),
  );
  sl.registerLazySingleton<CoreLocalDataSource>(
    // () => AuthRemoteDataSourceMock(
    () => CoreLocalDataSourceImpl(
      storage: sl(),
    ),
  );
  //----------------------------------------------------------------------------

  // External
  sl.registerLazySingleton(() => dio);
  sl.registerLazySingleton(() => Hive);
}
