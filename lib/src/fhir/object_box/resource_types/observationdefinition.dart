import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ObservationDefinition extends Resource {
  ObservationDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.category,
    required this.code,
    this.identifier,
    this.permittedDataType,
    this.multipleResultsAllowed,
    this.method,
    this.preferredReportName,
    this.quantitativeDetails,
    this.qualifiedInterval,
    this.validCodedValueSet,
    this.normalCodedValueSet,
    this.abnormalCodedValueSet,
    this.criticalCodedValueSet,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  List<String>? permittedDataType;
  bool? multipleResultsAllowed;
  ToOne<CodeableConcept>? method = ToOne<CodeableConcept>();
  String? preferredReportName;
  ToOne<ObservationDefinitionQuantitativeDetails>? quantitativeDetails =
      ToOne<ObservationDefinitionQuantitativeDetails>();
  ToMany<ObservationDefinitionQualifiedInterval>? qualifiedInterval =
      ToMany<ObservationDefinitionQualifiedInterval>();
  ToOne<Reference>? validCodedValueSet = ToOne<Reference>();
  ToOne<Reference>? normalCodedValueSet = ToOne<Reference>();
  ToOne<Reference>? abnormalCodedValueSet = ToOne<Reference>();
  ToOne<Reference>? criticalCodedValueSet = ToOne<Reference>();
}

@Entity()
class ObservationDefinitionQuantitativeDetails {
  ObservationDefinitionQuantitativeDetails({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.customaryUnit,
    this.unit,
    this.conversionFactor,
    this.decimalPrecision,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? customaryUnit = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? unit = ToOne<CodeableConcept>();
  double? conversionFactor;
  int? decimalPrecision;
}

@Entity()
class ObservationDefinitionQualifiedInterval {
  ObservationDefinitionQualifiedInterval({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.category,
    this.range,
    this.context,
    this.appliesTo,
    this.gender,
    this.age,
    this.gestationalAge,
    this.condition,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? category;
  ToOne<Range>? range = ToOne<Range>();
  ToOne<CodeableConcept>? context = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? appliesTo = ToMany<CodeableConcept>();
  String? gender;
  ToOne<Range>? age = ToOne<Range>();
  ToOne<Range>? gestationalAge = ToOne<Range>();
  String? condition;
}
