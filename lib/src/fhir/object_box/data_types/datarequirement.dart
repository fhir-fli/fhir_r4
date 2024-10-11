import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class DataRequirement {
  DataRequirement({
    this.id,
    this.extension_,
    required this.type,
    this.profile,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.mustSupport,
    this.codeFilter,
    this.dateFilter,
    this.limit,
    this.sort,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String type;
  List<String>? profile;
  ToOne<CodeableConcept>? subjectCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? subjectReference = ToOne<Reference>();
  List<String>? mustSupport;
  ToMany<DataRequirementCodeFilter>? codeFilter =
      ToMany<DataRequirementCodeFilter>();
  ToMany<DataRequirementDateFilter>? dateFilter =
      ToMany<DataRequirementDateFilter>();
  int? limit;
  ToMany<DataRequirementSort>? sort = ToMany<DataRequirementSort>();
}

@Entity()
class DataRequirementCodeFilter {
  DataRequirementCodeFilter({
    this.id,
    this.extension_,
    this.path,
    this.searchParam,
    this.valueSet,
    this.code,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? path;
  String? searchParam;
  String? valueSet;
  ToMany<Coding>? code = ToMany<Coding>();
}

@Entity()
class DataRequirementDateFilter {
  DataRequirementDateFilter({
    this.id,
    this.extension_,
    this.path,
    this.searchParam,
    this.valueDateTime,
    this.valuePeriod,
    this.valueDuration,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? path;
  String? searchParam;
  String? valueDateTime;
  ToOne<Period>? valuePeriod = ToOne<Period>();
  ToOne<FhirDuration>? valueDuration = ToOne<FhirDuration>();
}

@Entity()
class DataRequirementSort {
  DataRequirementSort({
    this.id,
    this.extension_,
    required this.path,
    required this.direction,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String path;
  String direction;
}
