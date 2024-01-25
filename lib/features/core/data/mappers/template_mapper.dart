import 'package:forrest/features/core/data/models/models.dart';
import 'package:forrest/features/core/domain/entity/entity.dart';

TemplateEntity templateMapper(TemplateModel model) {
  return TemplateEntity(
    field: model.field,
  );
}
