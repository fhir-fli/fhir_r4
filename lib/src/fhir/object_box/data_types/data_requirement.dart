// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDataRequirement {
  ObjectBoxDataRequirement({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    required this.type,
    ObjectBoxElement? typeElement,
    this.profile,
    List<ObjectBoxElement>? profileElement,
    ObjectBoxCodeableConcept? subjectCodeableConcept,
    ObjectBoxReference? subjectReference,
    this.mustSupport,
    List<ObjectBoxElement>? mustSupportElement,
    List<ObjectBoxDataRequirementCodeFilter>? codeFilter,
    List<ObjectBoxDataRequirementDateFilter>? dateFilter,
    this.limit,
    ObjectBoxElement? limitElement,
    List<ObjectBoxDataRequirementSort>? sort,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.typeElement.target = typeElement;
    this.profileElement.addAll(profileElement ?? []);
    this.subjectCodeableConcept.target = subjectCodeableConcept;
    this.subjectReference.target = subjectReference;
    this.mustSupportElement.addAll(mustSupportElement ?? []);
    this.codeFilter.addAll(codeFilter ?? []);
    this.dateFilter.addAll(dateFilter ?? []);
    this.limitElement.target = limitElement;
    this.sort.addAll(sort ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  List<String>? profile;
  ToMany<ObjectBoxElement> profileElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> subjectCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subjectReference = ToOne<ObjectBoxReference>();
  List<String>? mustSupport;
  ToMany<ObjectBoxElement> mustSupportElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxDataRequirementCodeFilter> codeFilter =
      ToMany<ObjectBoxDataRequirementCodeFilter>();
  ToMany<ObjectBoxDataRequirementDateFilter> dateFilter =
      ToMany<ObjectBoxDataRequirementDateFilter>();
  int? limit;
  ToOne<ObjectBoxElement> limitElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxDataRequirementSort> sort =
      ToMany<ObjectBoxDataRequirementSort>();
}

@Entity()
class ObjectBoxDataRequirementCodeFilter {
  ObjectBoxDataRequirementCodeFilter({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    this.path,
    ObjectBoxElement? pathElement,
    this.searchParam,
    ObjectBoxElement? searchParamElement,
    this.valueSet,
    ObjectBoxElement? valueSetElement,
    List<ObjectBoxCoding>? code,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.pathElement.target = pathElement;
    this.searchParamElement.target = searchParamElement;
    this.valueSetElement.target = valueSetElement;
    this.code.addAll(code ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String? path;
  ToOne<ObjectBoxElement> pathElement = ToOne<ObjectBoxElement>();
  String? searchParam;
  ToOne<ObjectBoxElement> searchParamElement = ToOne<ObjectBoxElement>();
  String? valueSet;
  ToOne<ObjectBoxElement> valueSetElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCoding> code = ToMany<ObjectBoxCoding>();
}

@Entity()
class ObjectBoxDataRequirementDateFilter {
  ObjectBoxDataRequirementDateFilter({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    this.path,
    ObjectBoxElement? pathElement,
    this.searchParam,
    ObjectBoxElement? searchParamElement,
    this.valueDateTime,
    ObjectBoxElement? valueDateTimeElement,
    ObjectBoxPeriod? valuePeriod,
    ObjectBoxFhirDuration? valueDuration,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.pathElement.target = pathElement;
    this.searchParamElement.target = searchParamElement;
    this.valueDateTimeElement.target = valueDateTimeElement;
    this.valuePeriod.target = valuePeriod;
    this.valueDuration.target = valueDuration;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String? path;
  ToOne<ObjectBoxElement> pathElement = ToOne<ObjectBoxElement>();
  String? searchParam;
  ToOne<ObjectBoxElement> searchParamElement = ToOne<ObjectBoxElement>();
  String? valueDateTime;
  ToOne<ObjectBoxElement> valueDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> valuePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxFhirDuration> valueDuration = ToOne<ObjectBoxFhirDuration>();
}

@Entity()
class ObjectBoxDataRequirementSort {
  ObjectBoxDataRequirementSort({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    required this.path,
    ObjectBoxElement? pathElement,
    required this.direction,
    ObjectBoxElement? directionElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.pathElement.target = pathElement;
    this.directionElement.target = directionElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String path;
  ToOne<ObjectBoxElement> pathElement = ToOne<ObjectBoxElement>();
  String direction;
  ToOne<ObjectBoxElement> directionElement = ToOne<ObjectBoxElement>();
}
