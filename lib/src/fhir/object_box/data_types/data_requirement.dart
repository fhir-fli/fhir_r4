// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDataRequirement {
  ObjectBoxDataRequirement({
    this.id,
    this.extension_,
    required this.type,
    this.typeElement,
    this.profile,
    this.profileElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.mustSupport,
    this.mustSupportElement,
    this.codeFilter,
    this.dateFilter,
    this.limit,
    this.limitElement,
    this.sort,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  List<String>? profile;
  ToMany<ObjectBoxElement>? profileElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? subjectCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? subjectReference = ToOne<ObjectBoxReference>();
  List<String>? mustSupport;
  ToMany<ObjectBoxElement>? mustSupportElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxDataRequirementCodeFilter>? codeFilter =
      ToMany<ObjectBoxDataRequirementCodeFilter>();
  ToMany<ObjectBoxDataRequirementDateFilter>? dateFilter =
      ToMany<ObjectBoxDataRequirementDateFilter>();
  int? limit;
  ToOne<ObjectBoxElement>? limitElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxDataRequirementSort>? sort =
      ToMany<ObjectBoxDataRequirementSort>();
}

@Entity()
class ObjectBoxDataRequirementCodeFilter {
  ObjectBoxDataRequirementCodeFilter({
    this.id,
    this.extension_,
    this.path,
    this.pathElement,
    this.searchParam,
    this.searchParamElement,
    this.valueSet,
    this.valueSetElement,
    this.code,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String? path;
  ToOne<ObjectBoxElement>? pathElement = ToOne<ObjectBoxElement>();
  String? searchParam;
  ToOne<ObjectBoxElement>? searchParamElement = ToOne<ObjectBoxElement>();
  String? valueSet;
  ToOne<ObjectBoxElement>? valueSetElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCoding>? code = ToMany<ObjectBoxCoding>();
}

@Entity()
class ObjectBoxDataRequirementDateFilter {
  ObjectBoxDataRequirementDateFilter({
    this.id,
    this.extension_,
    this.path,
    this.pathElement,
    this.searchParam,
    this.searchParamElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valuePeriod,
    this.valueDuration,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String? path;
  ToOne<ObjectBoxElement>? pathElement = ToOne<ObjectBoxElement>();
  String? searchParam;
  ToOne<ObjectBoxElement>? searchParamElement = ToOne<ObjectBoxElement>();
  String? valueDateTime;
  ToOne<ObjectBoxElement>? valueDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? valuePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxFhirDuration>? valueDuration = ToOne<ObjectBoxFhirDuration>();
}

@Entity()
class ObjectBoxDataRequirementSort {
  ObjectBoxDataRequirementSort({
    this.id,
    this.extension_,
    required this.path,
    this.pathElement,
    required this.direction,
    this.directionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String path;
  ToOne<ObjectBoxElement>? pathElement = ToOne<ObjectBoxElement>();
  String direction;
  ToOne<ObjectBoxElement>? directionElement = ToOne<ObjectBoxElement>();
}
