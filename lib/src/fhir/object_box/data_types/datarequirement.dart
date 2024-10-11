import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class DataRequirement {
  DataRequirement({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String type;
  ToOne<Element>? typeElement = ToOne<Element>();
  List<String>? profile;
  ToMany<Element>? profileElement = ToMany<Element>();
  ToOne<CodeableConcept>? subjectCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? subjectReference = ToOne<Reference>();
  List<String>? mustSupport;
  ToMany<Element>? mustSupportElement = ToMany<Element>();
  ToMany<DataRequirementCodeFilter>? codeFilter =
      ToMany<DataRequirementCodeFilter>();
  ToMany<DataRequirementDateFilter>? dateFilter =
      ToMany<DataRequirementDateFilter>();
  int? limit;
  ToOne<Element>? limitElement = ToOne<Element>();
  ToMany<DataRequirementSort>? sort = ToMany<DataRequirementSort>();
}

@Entity()
class DataRequirementCodeFilter {
  DataRequirementCodeFilter({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? path;
  ToOne<Element>? pathElement = ToOne<Element>();
  String? searchParam;
  ToOne<Element>? searchParamElement = ToOne<Element>();
  String? valueSet;
  ToOne<Element>? valueSetElement = ToOne<Element>();
  ToMany<Coding>? code = ToMany<Coding>();
}

@Entity()
class DataRequirementDateFilter {
  DataRequirementDateFilter({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? path;
  ToOne<Element>? pathElement = ToOne<Element>();
  String? searchParam;
  ToOne<Element>? searchParamElement = ToOne<Element>();
  String? valueDateTime;
  ToOne<Element>? valueDateTimeElement = ToOne<Element>();
  ToOne<Period>? valuePeriod = ToOne<Period>();
  ToOne<FhirDuration>? valueDuration = ToOne<FhirDuration>();
}

@Entity()
class DataRequirementSort {
  DataRequirementSort({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String path;
  ToOne<Element>? pathElement = ToOne<Element>();
  String direction;
  ToOne<Element>? directionElement = ToOne<Element>();
}
