import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/core/domain/usecases/usecases.dart';
import 'package:forrest/features/core/presentation/bloc/core_event.dart';
import 'package:forrest/features/core/presentation/bloc/core_state.dart';
import 'package:forrest/main.dart';

class CoreBloc extends Bloc<CoreEvent, CoreState> {

  CoreBloc({
    required this.initAppUseCase,
    required this.loadHabitsUseCase,
    required this.toggleHabitStatusUseCase,
    required this.toggleHabitLockUseCase,
    required this.createHabitUseCase,
    required this.deleteHabitUseCase,
  }) : super(CoreState()) {
    on<CoreEvent>((event, emit) async {
      logger.i(event);
    });
    on<InitCoreEvent>((event, emit) async {
      emit(
        state.copyWith(),
      );
      await initAppUseCase(NoParams());
    });
    on<ToggleMoneyTrackerFeatureCoreEvent>((event, emit) async {
      emit(
        state.copyWith(isMoneyTrackerAvailable: !state.isMoneyTrackerAvailable),
      );
    });
    on<ToggleThemeCoreEvent>((event, emit) async {
      emit(
        state.copyWith(theme: state.theme == 'light' ? 'dark' : 'light'),
      );
    });
    on<UpdateUserLocaleCoreEvent>((event, emit) async {
      if (event.locale != null) {
        emit(state.copyWith(
          locale: event.locale,
        ),);
      }
    });
    on<LoadHabitsCoreEvent>(_onLoadHabitsCoreEvent);
    on<ToggleHabitStatusCoreEvent>(_onToggleHabitStatusCoreEvent);
    on<ToggleHabitLockCoreEvent>(_onToggleHabitLockCoreEvent);
    on<CreateHabitCoreEvent>(_onCreateHabitCoreEvent);
    on<DeleteHabitCoreEvent>(_onDeleteHabitCoreEvent);
  }
  final InitAppUseCase initAppUseCase;
  final LoadHabitsUseCase loadHabitsUseCase;
  final ToggleHabitStatusUseCase toggleHabitStatusUseCase;
  final ToggleHabitLockUseCase toggleHabitLockUseCase;
  final CreateHabitUseCase createHabitUseCase;
  final DeleteHabitUseCase deleteHabitUseCase;

  Future<void> _onLoadHabitsCoreEvent(
    LoadHabitsCoreEvent event,
    Emitter<CoreState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    final result = await loadHabitsUseCase(NoParams());
    result.fold(
      (error) {
        if (error is ServerFailure) {
          emit(
            state.copyWith(
              unknownError: error,
              // unknownErrorCount: state.unknownErrorCount + 1,
            ),
          );
        }
        return emit(
          state.copyWith(),
        );
      },
      (result) {
        emit(
          state.copyWith(
            habits: result,
          ),
        );
      },
    );
  }

  Future<void> _onToggleHabitLockCoreEvent(
    ToggleHabitLockCoreEvent event,
    Emitter<CoreState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    final result = await toggleHabitLockUseCase(
      ToggleHabitLockUseCaseParams(
        habit: event.habit,
      ),
    );
    result.fold(
      (error) {
        if (error is ServerFailure) {
          emit(
            state.copyWith(
              unknownError: error,
              // unknownErrorCount: state.unknownErrorCount + 1,
            ),
          );
        }
        return emit(
          state.copyWith(),
        );
      },
      (result) {
        emit(
          state.copyWith(
            habits: result,
          ),
        );
      },
    );
  }

  Future<void> _onToggleHabitStatusCoreEvent(
    ToggleHabitStatusCoreEvent event,
    Emitter<CoreState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    final result = await toggleHabitStatusUseCase(
      ToggleHabitStatusUseCaseParams(
        habit: event.habit,
      ),
    );
    result.fold(
      (error) {
        if (error is ServerFailure) {
          emit(
            state.copyWith(
              unknownError: error,
              // unknownErrorCount: state.unknownErrorCount + 1,
            ),
          );
        }
        return emit(
          state.copyWith(),
        );
      },
      (result) {
        emit(
          state.copyWith(
            habits: result,
          ),
        );
      },
    );
  }

  Future<void> _onCreateHabitCoreEvent(
    CreateHabitCoreEvent event,
    Emitter<CoreState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    final result = await createHabitUseCase(
      CreateHabitUseCaseParams(
        habit: event.habit,
      ),
    );
    result.fold(
      (error) {
        if (error is ServerFailure) {
          emit(
            state.copyWith(
              unknownError: error,
              // unknownErrorCount: state.unknownErrorCount + 1,
            ),
          );
        }
        return emit(
          state.copyWith(),
        );
      },
      (result) {
        emit(
          state.copyWith(
            habits: result,
          ),
        );
      },
    );
  }

  Future<void> _onDeleteHabitCoreEvent(
    DeleteHabitCoreEvent event,
    Emitter<CoreState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    final result = await deleteHabitUseCase(
      DeleteHabitUseCaseParams(
        habit: event.habit,
      ),
    );
    result.fold(
      (error) {
        if (error is ServerFailure) {
          emit(
            state.copyWith(
              unknownError: error,
              // unknownErrorCount: state.unknownErrorCount + 1,
            ),
          );
        }
        return emit(
          state.copyWith(),
        );
      },
      (result) {
        emit(
          state.copyWith(
            habits: result,
          ),
        );
      },
    );
  }
}
