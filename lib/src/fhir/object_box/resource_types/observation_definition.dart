// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxObservationDefinition {
  ObjectBoxObservationDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.category,
    required this.code,
    this.identifier,
    this.permittedDataType,
    this.permittedDataTypeElement,
    this.multipleResultsAllowed,
    this.multipleResultsAllowedElement,
    this.method,
    this.preferredReportName,
    this.preferredReportNameElement,
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
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept>? category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  List<String>? permittedDataType;
  ToMany<ObjectBoxElement>? permittedDataTypeElement =
      ToMany<ObjectBoxElement>();
  bool? multipleResultsAllowed;
  ToOne<ObjectBoxElement>? multipleResultsAllowedElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? method = ToOne<ObjectBoxCodeableConcept>();
  String? preferredReportName;
  ToOne<ObjectBoxElement>? preferredReportNameElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxObservationDefinitionQuantitativeDetails>?
      quantitativeDetails =
      ToOne<ObjectBoxObservationDefinitionQuantitativeDetails>();
  ToMany<ObjectBoxObservationDefinitionQualifiedInterval>? qualifiedInterval =
      ToMany<ObjectBoxObservationDefinitionQualifiedInterval>();
  ToOne<ObjectBoxReference>? validCodedValueSet = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? normalCodedValueSet = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? abnormalCodedValueSet =
      ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? criticalCodedValueSet =
      ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxObservationDefinitionQuantitativeDetails {
  ObjectBoxObservationDefinitionQuantitativeDetails({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.customaryUnit,
    this.unit,
    this.conversionFactor,
    this.conversionFactorElement,
    this.decimalPrecision,
    this.decimalPrecisionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? customaryUnit =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? unit = ToOne<ObjectBoxCodeableConcept>();
  double? conversionFactor;
  ToOne<ObjectBoxElement>? conversionFactorElement = ToOne<ObjectBoxElement>();
  int? decimalPrecision;
  ToOne<ObjectBoxElement>? decimalPrecisionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxObservationDefinitionQualifiedInterval {
  ObjectBoxObservationDefinitionQualifiedInterval({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.category,
    this.categoryElement,
    this.range,
    this.context,
    this.appliesTo,
    this.gender,
    this.genderElement,
    this.age,
    this.gestationalAge,
    this.condition,
    this.conditionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? category;
  ToOne<ObjectBoxElement>? categoryElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRange>? range = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxCodeableConcept>? context = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? appliesTo =
      ToMany<ObjectBoxCodeableConcept>();
  String? gender;
  ToOne<ObjectBoxElement>? genderElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRange>? age = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRange>? gestationalAge = ToOne<ObjectBoxRange>();
  String? condition;
  ToOne<ObjectBoxElement>? conditionElement = ToOne<ObjectBoxElement>();
}
