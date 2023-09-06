import 'package:freezed_annotation/freezed_annotation.dart';

part 'template_entity.freezed.dart';

@freezed
class TemplateEntity with _$TemplateEntity {
  const factory TemplateEntity({
    String? field,
  }) = _TemplateEntity;
}
