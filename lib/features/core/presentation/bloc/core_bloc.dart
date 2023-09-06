import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/usecases.dart';
import 'core_event.dart';
import 'core_state.dart';

class CoreBloc extends Bloc<CoreEvent, CoreState> {
  final InitAppUseCase initAppUseCase;

  CoreBloc({
    required this.initAppUseCase,
  }) : super(CoreState()) {
    on<InitCoreEvent>((event, emit) async {
      emit(
        state.copyWith(),
      );
      initAppUseCase(NoParams());
    });
  }
}
