import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ObservationDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ObservationDefinition';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<CodeableConceptEntity>? category;

  @ToOne()
  CodeableConceptEntity? code;

  @ToMany()
  List<IdentifierEntity>? identifier;

  List<String>? permittedDataType;

  @ToMany()
  List<PrimitiveElementEntity>? permittedDataTypeElement;

  bool? multipleResultsAllowed;

  @ToOne()
  PrimitiveElementEntity? multipleResultsAllowedElement;

  @ToOne()
  CodeableConceptEntity? method;

  String? preferredReportName;

  @ToOne()
  PrimitiveElementEntity? preferredReportNameElement;

  @ToOne()
  ObservationDefinitionQuantitativeDetailsEntity? quantitativeDetails;

  @ToMany()
  List<ObservationDefinitionQualifiedIntervalEntity>? qualifiedInterval;

  @ToOne()
  ReferenceEntity? validCodedValueSet;

  @ToOne()
  ReferenceEntity? normalCodedValueSet;

  @ToOne()
  ReferenceEntity? abnormalCodedValueSet;

  @ToOne()
  ReferenceEntity? criticalCodedValueSet;
}

class ObservationDefinitionQuantitativeDetailsEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? customaryUnit;

  @ToOne()
  CodeableConceptEntity? unit;

  double? conversionFactor;

  @ToOne()
  PrimitiveElementEntity? conversionFactorElement;

  int? decimalPrecision;

  @ToOne()
  PrimitiveElementEntity? decimalPrecisionElement;
}

class ObservationDefinitionQualifiedIntervalEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? category;

  @ToOne()
  PrimitiveElementEntity? categoryElement;

  @ToOne()
  RangeEntity? range;

  @ToOne()
  CodeableConceptEntity? context;

  @ToMany()
  List<CodeableConceptEntity>? appliesTo;

  String? gender;

  @ToOne()
  PrimitiveElementEntity? genderElement;

  @ToOne()
  RangeEntity? age;

  @ToOne()
  RangeEntity? gestationalAge;

  String? condition;

  @ToOne()
  PrimitiveElementEntity? conditionElement;
}
