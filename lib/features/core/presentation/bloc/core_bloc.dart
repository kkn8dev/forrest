import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../main.dart';
import '../../domain/entity/entity.dart';
import '../../domain/usecases/usecases.dart';
import 'core_event.dart';
import 'core_state.dart';

class CoreBloc extends Bloc<CoreEvent, CoreState> {
  final InitAppUseCase initAppUseCase;
  final LoadHabitsUseCase loadHabitsUseCase;
  final ToggleHabitStatusUseCase toggleHabitStatusUseCase;
  final ToggleHabitLockUseCase toggleHabitLockUseCase;
  final CreateHabitUseCase createHabitUseCase;
  final DeleteHabitUseCase deleteHabitUseCase;

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
      initAppUseCase(NoParams());
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
    on<LoadHabitsCoreEvent>(_onLoadHabitsCoreEvent);
    on<ToggleHabitStatusCoreEvent>(_onToggleHabitStatusCoreEvent);
    on<ToggleHabitLockCoreEvent>(_onToggleHabitLockCoreEvent);
    on<CreateHabitCoreEvent>(_onCreateHabitCoreEvent);
    on<DeleteHabitCoreEvent>(_onDeleteHabitCoreEvent);
  }

  void _onLoadHabitsCoreEvent(
    LoadHabitsCoreEvent event,
    Emitter<CoreState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    var result = await loadHabitsUseCase(NoParams());
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

  void _onToggleHabitLockCoreEvent(
    ToggleHabitLockCoreEvent event,
    Emitter<CoreState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    var result = await toggleHabitLockUseCase(
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

  void _onToggleHabitStatusCoreEvent(
    ToggleHabitStatusCoreEvent event,
    Emitter<CoreState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    var result = await toggleHabitStatusUseCase(
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

  void _onCreateHabitCoreEvent(
    CreateHabitCoreEvent event,
    Emitter<CoreState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    var result = await createHabitUseCase(
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

  void _onDeleteHabitCoreEvent(
    DeleteHabitCoreEvent event,
    Emitter<CoreState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    var result = await deleteHabitUseCase(
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
