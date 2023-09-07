import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entity/entity.dart';
import '../../domain/usecases/usecases.dart';
import 'core_event.dart';
import 'core_state.dart';

class CoreBloc extends Bloc<CoreEvent, CoreState> {
  final InitAppUseCase initAppUseCase;
  final LoadHabitsUseCase loadHabitsUseCase;
  final ToggleHabitStatusUseCase toggleHabitStatusUseCase;
  final CreateHabitUseCase createHabitUseCase;

  CoreBloc({
    required this.initAppUseCase,
    required this.loadHabitsUseCase,
    required this.toggleHabitStatusUseCase,
    required this.createHabitUseCase,
  }) : super(CoreState()) {
    on<InitCoreEvent>((event, emit) async {
      emit(
        state.copyWith(),
      );
      initAppUseCase(NoParams());
    });
    on<LoadHabitsCoreEvent>(_onLoadHabitsCoreEvent);
    on<ToggleHabitStatusCoreEvent>(_onToggleHabitStatusCoreEvent);
    on<CreateHabitCoreEvent>(_onCreateHabitCoreEvent);
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
}
