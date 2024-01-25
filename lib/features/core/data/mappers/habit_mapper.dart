import 'package:forrest/features/core/data/models/models.dart';
import 'package:forrest/features/core/domain/entity/entity.dart';

HabitEntity habitMapper(HabitModel model) {
  return HabitEntity(
    uuid: model.uuid,
    isCompleted: model.isCompleted,
    isLocked: model.isLocked,
    text: model.text,
    year: model.createdAt.year,
    month: model.createdAt.month,
    day: model.createdAt.day,
  );
}
