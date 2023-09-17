import 'package:forrest/features/core/data/data_sources/core_local_data_source_mock.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

// core feature
import 'features/core/data/data_sources/data_sources.dart';
import 'features/core/data/repositories/core_repository_impl.dart';
import 'features/core/domain/repositories/core_repository.dart';
import 'features/core/domain/usecases/usecases.dart';
import 'features/core/presentation/bloc/bloc.dart';
// money tracker feature
import 'features/money_tracker/data/data_sources/data_sources.dart';
import 'features/money_tracker/data/repositories/money_tracker_repository_impl.dart';
import 'features/money_tracker/domain/repositories/money_tracker_repository.dart';
import 'features/money_tracker/domain/usecases/usecases.dart';
import 'features/money_tracker/presentation/bloc/bloc.dart';
// external
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
    () => CoreRemoteDataSourceImpl(client: sl()),
  );
  sl.registerLazySingleton<CoreLocalDataSource>(
    () => CoreLocalDataSourceMock(
        // storage: sl(),
        ),
  );
  //----------------------------------------------------------------------------

  // Money Tracker feature --------------------------------------------------------------
  sl.registerLazySingleton(
    () => MoneyTrackerBloc(
      loadTransactionsUseCase: sl(),
      loadTransactionCategoriesUseCase: sl(),
      createTransactionUseCase: sl(),
      deleteTransactionUseCase: sl(),
      editTransactionUseCase: sl(),
      createTransactionCategoryUseCase: sl(),
      deleteTransactionCategoryUseCase: sl(),
      editTransactionCategoryUseCase: sl(),
    ),
  );
  sl.registerLazySingleton(() => LoadTransactionsUseCase(sl()));
  sl.registerLazySingleton(() => LoadTransactionCategoriesUseCase(sl()));
  sl.registerLazySingleton(() => CreateTransactionUseCase(sl()));
  sl.registerLazySingleton(() => DeleteTransactionUseCase(sl()));
  sl.registerLazySingleton(() => EditTransactionUseCase(sl()));
  sl.registerLazySingleton(() => CreateTransactionCategoryUseCase(sl()));
  sl.registerLazySingleton(() => DeleteTransactionCategoryUseCase(sl()));
  sl.registerLazySingleton(() => EditTransactionCategoryUseCase(sl()));
  sl.registerLazySingleton<MoneyTrackerRepository>(
    () => MoneyTrackerRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<MoneyTrackerRemoteDataSource>(
    () => MoneyTrackerRemoteDataSourceImpl(client: sl()),
  );
  sl.registerLazySingleton<MoneyTrackerLocalDataSource>(
    () => MoneyTrackerLocalDataSourceMock(
        // storage: sl(),
        ),
  );
  //----------------------------------------------------------------------------

  // External
  sl.registerLazySingleton(() => dio);
  sl.registerLazySingleton(() => Hive);
}
