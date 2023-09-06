import '../../domain/entity/entity.dart';
import '../models/models.dart';

TemplateEntity templateMapper(TemplateModel model) {
  return TemplateEntity(
    field: model.field,
  );
}
