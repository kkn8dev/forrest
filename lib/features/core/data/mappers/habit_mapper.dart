import '../../domain/entity/entity.dart';
import '../models/models.dart';

HabitEntity habitMapper(HabitModel model) {
  return HabitEntity(
    uuid: model.uuid,
    isCompleted: model.isCompleted,
    text: model.text,
    year: model.createdAt.year,
    month: model.createdAt.month,
    day: model.createdAt.day,
  );
}
