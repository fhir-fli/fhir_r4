import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class MeasureReport extends Resource {
  MeasureReport({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    required this.type,
    required this.measure,
    this.subject,
    this.date,
    this.reporter,
    required this.period,
    this.improvementNotation,
    this.group,
    this.evaluatedResource,
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
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String status;
  String type;
  String measure;
  ToOne<Reference>? subject = ToOne<Reference>();
  String? date;
  ToOne<Reference>? reporter = ToOne<Reference>();
  ToOne<Period> period = ToOne<Period>();
  ToOne<CodeableConcept>? improvementNotation = ToOne<CodeableConcept>();
  ToMany<MeasureReportGroup>? group = ToMany<MeasureReportGroup>();
  ToMany<Reference>? evaluatedResource = ToMany<Reference>();
}

@Entity()
class MeasureReportGroup {
  MeasureReportGroup({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.population,
    this.measureScore,
    this.stratifier,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  ToMany<MeasureReportPopulation>? population =
      ToMany<MeasureReportPopulation>();
  ToOne<Quantity>? measureScore = ToOne<Quantity>();
  ToMany<MeasureReportStratifier>? stratifier =
      ToMany<MeasureReportStratifier>();
}

@Entity()
class MeasureReportPopulation {
  MeasureReportPopulation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.count,
    this.subjectResults,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  int? count;
  ToOne<Reference>? subjectResults = ToOne<Reference>();
}

@Entity()
class MeasureReportStratifier {
  MeasureReportStratifier({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.stratum,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<CodeableConcept>? code = ToMany<CodeableConcept>();
  ToMany<MeasureReportStratum>? stratum = ToMany<MeasureReportStratum>();
}

@Entity()
class MeasureReportStratum {
  MeasureReportStratum({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.value,
    this.component,
    this.population,
    this.measureScore,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? value = ToOne<CodeableConcept>();
  ToMany<MeasureReportComponent>? component = ToMany<MeasureReportComponent>();
  ToMany<MeasureReportPopulation>? population =
      ToMany<MeasureReportPopulation>();
  ToOne<Quantity>? measureScore = ToOne<Quantity>();
}

@Entity()
class MeasureReportComponent {
  MeasureReportComponent({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    required this.value,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  ToOne<CodeableConcept> value = ToOne<CodeableConcept>();
}

@Entity()
class MeasureReportPopulation1 {
  MeasureReportPopulation1({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.count,
    this.subjectResults,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  int? count;
  ToOne<Reference>? subjectResults = ToOne<Reference>();
}
