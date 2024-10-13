// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxObservationDefinition {
  ObjectBoxObservationDefinition({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxCodeableConcept>? category,
    ObjectBoxCodeableConcept? code,
    List<ObjectBoxIdentifier>? identifier,
    this.permittedDataType,
    List<ObjectBoxElement>? permittedDataTypeElement,
    this.multipleResultsAllowed,
    ObjectBoxElement? multipleResultsAllowedElement,
    ObjectBoxCodeableConcept? method,
    this.preferredReportName,
    ObjectBoxElement? preferredReportNameElement,
    ObjectBoxObservationDefinitionQuantitativeDetails? quantitativeDetails,
    List<ObjectBoxObservationDefinitionQualifiedInterval>? qualifiedInterval,
    ObjectBoxReference? validCodedValueSet,
    ObjectBoxReference? normalCodedValueSet,
    ObjectBoxReference? abnormalCodedValueSet,
    ObjectBoxReference? criticalCodedValueSet,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.category.addAll(category ?? []);
    this.code.target = code;
    this.identifier.addAll(identifier ?? []);
    this.permittedDataTypeElement.addAll(permittedDataTypeElement ?? []);
    this.multipleResultsAllowedElement.target = multipleResultsAllowedElement;
    this.method.target = method;
    this.preferredReportNameElement.target = preferredReportNameElement;
    this.quantitativeDetails.target = quantitativeDetails;
    this.qualifiedInterval.addAll(qualifiedInterval ?? []);
    this.validCodedValueSet.target = validCodedValueSet;
    this.normalCodedValueSet.target = normalCodedValueSet;
    this.abnormalCodedValueSet.target = abnormalCodedValueSet;
    this.criticalCodedValueSet.target = criticalCodedValueSet;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  List<String>? permittedDataType;
  ToMany<ObjectBoxElement> permittedDataTypeElement =
      ToMany<ObjectBoxElement>();
  bool? multipleResultsAllowed;
  ToOne<ObjectBoxElement> multipleResultsAllowedElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> method = ToOne<ObjectBoxCodeableConcept>();
  String? preferredReportName;
  ToOne<ObjectBoxElement> preferredReportNameElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxObservationDefinitionQuantitativeDetails> quantitativeDetails =
      ToOne<ObjectBoxObservationDefinitionQuantitativeDetails>();
  ToMany<ObjectBoxObservationDefinitionQualifiedInterval> qualifiedInterval =
      ToMany<ObjectBoxObservationDefinitionQualifiedInterval>();
  ToOne<ObjectBoxReference> validCodedValueSet = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> normalCodedValueSet = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> abnormalCodedValueSet = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> criticalCodedValueSet = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxObservationDefinitionQuantitativeDetails {
  ObjectBoxObservationDefinitionQuantitativeDetails({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? customaryUnit,
    ObjectBoxCodeableConcept? unit,
    this.conversionFactor,
    ObjectBoxElement? conversionFactorElement,
    this.decimalPrecision,
    ObjectBoxElement? decimalPrecisionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.customaryUnit.target = customaryUnit;
    this.unit.target = unit;
    this.conversionFactorElement.target = conversionFactorElement;
    this.decimalPrecisionElement.target = decimalPrecisionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> customaryUnit =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> unit = ToOne<ObjectBoxCodeableConcept>();
  double? conversionFactor;
  ToOne<ObjectBoxElement> conversionFactorElement = ToOne<ObjectBoxElement>();
  int? decimalPrecision;
  ToOne<ObjectBoxElement> decimalPrecisionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxObservationDefinitionQualifiedInterval {
  ObjectBoxObservationDefinitionQualifiedInterval({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.category,
    ObjectBoxElement? categoryElement,
    ObjectBoxRange? range,
    ObjectBoxCodeableConcept? context,
    List<ObjectBoxCodeableConcept>? appliesTo,
    this.gender,
    ObjectBoxElement? genderElement,
    ObjectBoxRange? age,
    ObjectBoxRange? gestationalAge,
    this.condition,
    ObjectBoxElement? conditionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.categoryElement.target = categoryElement;
    this.range.target = range;
    this.context.target = context;
    this.appliesTo.addAll(appliesTo ?? []);
    this.genderElement.target = genderElement;
    this.age.target = age;
    this.gestationalAge.target = gestationalAge;
    this.conditionElement.target = conditionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? category;
  ToOne<ObjectBoxElement> categoryElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRange> range = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxCodeableConcept> context = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> appliesTo =
      ToMany<ObjectBoxCodeableConcept>();
  String? gender;
  ToOne<ObjectBoxElement> genderElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRange> age = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRange> gestationalAge = ToOne<ObjectBoxRange>();
  String? condition;
  ToOne<ObjectBoxElement> conditionElement = ToOne<ObjectBoxElement>();
}
