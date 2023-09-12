import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/domain/usecases/usecases.dart';
import '../../domain/usecases/usecases.dart';
import 'core_event.dart';
import 'core_state.dart';

class MoneyTrackerBloc extends Bloc<MoneyTrackerEvent, MoneyTrackerState> {
  final LoadTransactionsUseCase loadTransactionsUseCase;
  final CreateTransactionUseCase createTransactionUseCase;
  final DeleteTransactionUseCase deleteTransactionUseCase;
  final EditTransactionUseCase editTransactionUseCase;

  MoneyTrackerBloc({
    required this.loadTransactionsUseCase,
    required this.createTransactionUseCase,
    required this.deleteTransactionUseCase,
    required this.editTransactionUseCase,
  }) : super(MoneyTrackerState()) {
    on<LoadMoneyTrackerEvent>(_onLoadMoneyTrackerEvent);
    on<CreateTransactionCoreEvent>(_onCreateTransactionCoreEvent);
    on<DeleteTransactionCoreEvent>(_onDeleteTransactionCoreEvent);
    on<EditTransactionCoreEvent>(_onEditTransactionCoreEvent);
  }

  void _onEditTransactionCoreEvent(
    EditTransactionCoreEvent event,
    Emitter<MoneyTrackerState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    var result = await editTransactionUseCase(
      EditTransactionUseCaseParams(
        transaction: event.transactionEntity,
      ),
    );
    result.fold(
      (error) {
        return emit(
          state.copyWith(),
        );
      },
      (result) {
        emit(
          state.copyWith(
            transactions: result,
          ),
        );
      },
    );
  }

  void _onDeleteTransactionCoreEvent(
    DeleteTransactionCoreEvent event,
    Emitter<MoneyTrackerState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    var result = await deleteTransactionUseCase(
      DeleteTransactionUseCaseParams(
        transaction: event.transactionEntity,
      ),
    );
    result.fold(
      (error) {
        return emit(
          state.copyWith(),
        );
      },
      (result) {
        emit(
          state.copyWith(
            transactions: result,
          ),
        );
      },
    );
  }

  void _onCreateTransactionCoreEvent(
    CreateTransactionCoreEvent event,
    Emitter<MoneyTrackerState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    var result = await createTransactionUseCase(
      CreateTransactionUseCaseParams(
        transaction: event.transactionEntity,
      ),
    );
    result.fold(
      (error) {
        return emit(
          state.copyWith(),
        );
      },
      (result) {
        emit(
          state.copyWith(
            transactions: result,
          ),
        );
      },
    );
  }

  void _onLoadMoneyTrackerEvent(
    LoadMoneyTrackerEvent event,
    Emitter<MoneyTrackerState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    var result = await loadTransactionsUseCase(NoParams());
    result.fold(
      (error) {
        return emit(
          state.copyWith(),
        );
      },
      (result) {
        emit(
          state.copyWith(
            transactions: result,
          ),
        );
      },
    );
  }
}
