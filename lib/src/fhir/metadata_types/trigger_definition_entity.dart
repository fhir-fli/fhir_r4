import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class TriggerDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToOne()
  TriggerDefinitionTypeEntity? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  @ToOne()
  TimingEntity? timingTiming;

  @ToOne()
  ReferenceEntity? timingReference;

  String? timingDate;

  @ToOne()
  PrimitiveElementEntity? timingDateElement;

  String? timingDateTime;

  @ToOne()
  PrimitiveElementEntity? timingDateTimeElement;

  @ToMany()
  List<DataRequirementEntity>? data;

  @ToOne()
  FhirExpressionEntity? condition;
}
