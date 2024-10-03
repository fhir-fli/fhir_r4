import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class DataRequirementEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  List<String>? profile;

  @ToOne()
  CodeableConceptEntity? subjectCodeableConcept;

  @ToOne()
  ReferenceEntity? subjectReference;

  List<String>? mustSupport;

  @ToMany()
  List<PrimitiveElementEntity>? mustSupportElement;

  @ToMany()
  List<DataRequirementCodeFilterEntity>? codeFilter;

  @ToMany()
  List<DataRequirementDateFilterEntity>? dateFilter;

  int? limit;

  @ToOne()
  PrimitiveElementEntity? limitElement;

  @ToMany()
  List<DataRequirementSortEntity>? sort;
}

class DataRequirementCodeFilterEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? path;

  @ToOne()
  PrimitiveElementEntity? pathElement;

  String? searchParam;

  @ToOne()
  PrimitiveElementEntity? searchParamElement;

  String? valueSet;

  @ToMany()
  List<CodingEntity>? code;
}

class DataRequirementDateFilterEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? path;

  @ToOne()
  PrimitiveElementEntity? pathElement;

  String? searchParam;

  @ToOne()
  PrimitiveElementEntity? searchParamElement;

  String? valueDateTime;

  @ToOne()
  PrimitiveElementEntity? valueDateTimeElement;

  @ToOne()
  PeriodEntity? valuePeriod;

  @ToOne()
  FhirDurationEntity? valueDuration;
}

class DataRequirementSortEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? path;

  @ToOne()
  PrimitiveElementEntity? pathElement;

  @ToOne()
  String? direction;

  @ToOne()
  PrimitiveElementEntity? directionElement;
}
