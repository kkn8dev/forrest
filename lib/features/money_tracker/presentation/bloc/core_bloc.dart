import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../main.dart';
import '../../../core/domain/usecases/usecases.dart';
import '../../domain/usecases/usecases.dart';
import 'core_event.dart';
import 'core_state.dart';

class MoneyTrackerBloc extends Bloc<MoneyTrackerEvent, MoneyTrackerState> {
  final LoadTransactionsUseCase loadTransactionsUseCase;
  final LoadTransactionCategoriesUseCase loadTransactionCategoriesUseCase;
  final CreateTransactionUseCase createTransactionUseCase;
  final DeleteTransactionUseCase deleteTransactionUseCase;
  final EditTransactionUseCase editTransactionUseCase;
  final CreateTransactionCategoryUseCase createTransactionCategoryUseCase;
  final DeleteTransactionCategoryUseCase deleteTransactionCategoryUseCase;
  final EditTransactionCategoryUseCase editTransactionCategoryUseCase;

  MoneyTrackerBloc({
    required this.loadTransactionsUseCase,
    required this.loadTransactionCategoriesUseCase,
    required this.createTransactionUseCase,
    required this.deleteTransactionUseCase,
    required this.editTransactionUseCase,
    required this.createTransactionCategoryUseCase,
    required this.deleteTransactionCategoryUseCase,
    required this.editTransactionCategoryUseCase,
  }) : super(MoneyTrackerState()) {
    on<MoneyTrackerEvent>((event, emit) async {
      logger.i(event);
    });
    on<LoadMoneyTrackerEvent>(_onLoadMoneyTrackerEvent);
    on<CreateTransactionCoreEvent>(_onCreateTransactionCoreEvent);
    on<DeleteTransactionCoreEvent>(_onDeleteTransactionCoreEvent);
    on<EditTransactionCoreEvent>(_onEditTransactionCoreEvent);
    on<CreateTransactionCategoryCoreEvent>(
        _onCreateTransactionCategoryCoreEvent);
    on<DeleteTransactionCategoryCoreEvent>(
        _onDeleteTransactionCategoryCoreEvent);
    on<EditTransactionCategoryCoreEvent>(_onEditTransactionCategoryCoreEvent);
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

  void _onEditTransactionCategoryCoreEvent(
    EditTransactionCategoryCoreEvent event,
    Emitter<MoneyTrackerState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    var result = await editTransactionCategoryUseCase(
      EditTransactionCategoryUseCaseParams(
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
            transactionCategories: result,
          ),
        );
      },
    );
  }

  void _onDeleteTransactionCategoryCoreEvent(
    DeleteTransactionCategoryCoreEvent event,
    Emitter<MoneyTrackerState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    var result = await deleteTransactionCategoryUseCase(
      DeleteTransactionCategoryUseCaseParams(
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
            transactionCategories: result,
          ),
        );
      },
    );
  }

  void _onCreateTransactionCategoryCoreEvent(
    CreateTransactionCategoryCoreEvent event,
    Emitter<MoneyTrackerState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
    var result = await createTransactionCategoryUseCase(
      CreateTransactionCategoryUseCaseParams(
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
            transactionCategories: result,
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
    var categories = await loadTransactionCategoriesUseCase(NoParams());
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
    categories.fold(
      (error) {
        return emit(
          state.copyWith(),
        );
      },
      (result) {
        emit(
          state.copyWith(
            transactionCategories: result,
          ),
        );
      },
    );
  }
}
