import 'package:forrest/features/core/data/data_sources/core_local_data_source_mock.dart';

// core feature
import 'package:forrest/features/core/data/data_sources/data_sources.dart';
import 'package:forrest/features/core/data/repositories/core_repository_impl.dart';
import 'package:forrest/features/core/domain/repositories/core_repository.dart';
import 'package:forrest/features/core/domain/usecases/usecases.dart';
import 'package:forrest/features/core/presentation/bloc/bloc.dart';

// money tracker feature
import 'package:forrest/features/money_tracker/data/data_sources/data_sources.dart';
import 'package:forrest/features/money_tracker/data/repositories/money_tracker_repository_impl.dart';
import 'package:forrest/features/money_tracker/domain/repositories/money_tracker_repository.dart';
import 'package:forrest/features/money_tracker/domain/usecases/usecases.dart';
import 'package:forrest/features/money_tracker/presentation/bloc/bloc.dart';

// external
import 'package:forrest/utils/dio_client.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Core feature --------------------------------------------------------------
  sl
    ..registerLazySingleton(
      () => CoreBloc(
        initAppUseCase: sl(),
        loadHabitsUseCase: sl(),
        toggleHabitStatusUseCase: sl(),
        toggleHabitLockUseCase: sl(),
        createHabitUseCase: sl(),
        deleteHabitUseCase: sl(),
      ),
    )
    ..registerLazySingleton(() => InitAppUseCase(sl()))
    ..registerLazySingleton(() => LoadHabitsUseCase(sl()))
    ..registerLazySingleton(() => ToggleHabitStatusUseCase(sl()))
    ..registerLazySingleton(() => ToggleHabitLockUseCase(sl()))
    ..registerLazySingleton(() => CreateHabitUseCase(sl()))
    ..registerLazySingleton(() => DeleteHabitUseCase(sl()))
    ..registerLazySingleton<CoreRepository>(
      () => CoreRepositoryImpl(
        remoteDataSource: sl(),
        localDataSource: sl(),
      ),
    )
    ..registerLazySingleton<CoreRemoteDataSource>(
      () => CoreRemoteDataSourceImpl(client: sl()),
    )
    ..registerLazySingleton<CoreLocalDataSource>(
      CoreLocalDataSourceMock.new,
    )
    //--------------------------------------------------------------------------

    // Money Tracker feature ---------------------------------------------------
    ..registerLazySingleton(
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
    )
    ..registerLazySingleton(() => LoadTransactionsUseCase(sl()))
    ..registerLazySingleton(() => LoadTransactionCategoriesUseCase(sl()))
    ..registerLazySingleton(() => CreateTransactionUseCase(sl()))
    ..registerLazySingleton(() => DeleteTransactionUseCase(sl()))
    ..registerLazySingleton(() => EditTransactionUseCase(sl()))
    ..registerLazySingleton(() => CreateTransactionCategoryUseCase(sl()))
    ..registerLazySingleton(() => DeleteTransactionCategoryUseCase(sl()))
    ..registerLazySingleton(() => EditTransactionCategoryUseCase(sl()))
    ..registerLazySingleton<MoneyTrackerRepository>(
      () => MoneyTrackerRepositoryImpl(
        remoteDataSource: sl(),
        localDataSource: sl(),
      ),
    )
    ..registerLazySingleton<MoneyTrackerRemoteDataSource>(
      () => MoneyTrackerRemoteDataSourceImpl(client: sl()),
    )
    ..registerLazySingleton<MoneyTrackerLocalDataSource>(
      MoneyTrackerLocalDataSourceMock.new,
    )
    //--------------------------------------------------------------------------

    // External
    ..registerLazySingleton(() => dio)
    ..registerLazySingleton(() => Hive);
}
