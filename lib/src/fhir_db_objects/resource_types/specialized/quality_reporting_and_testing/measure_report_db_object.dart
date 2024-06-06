import 'package:objectbox/objectbox.dart';
@Entity()
class MeasureReportDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<R4ResourceTypeDbObject> resourceType = ToOne<R4ResourceTypeDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> measure = ToOne<FhirCanonicalDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> reporter = ToOne<ReferenceDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToOne<CodeableConceptDbObject> improvementNotation = ToOne<CodeableConceptDbObject>();
  final ToMany<MeasureReportGroupDbObject> group = ToMany<MeasureReportGroupDbObject>();
  final ToMany<ReferenceDbObject> evaluatedResource = ToMany<ReferenceDbObject>();
  MeasureReportDbObject({required this.id});
}
@Entity()
class MeasureReportGroupDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToMany<MeasureReportPopulationDbObject> population = ToMany<MeasureReportPopulationDbObject>();
  final ToOne<QuantityDbObject> measureScore = ToOne<QuantityDbObject>();
  final ToMany<MeasureReportStratifierDbObject> stratifier = ToMany<MeasureReportStratifierDbObject>();
  MeasureReportGroupDbObject({required this.id});
}
@Entity()
class MeasureReportPopulationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirIntegerDbObject> count = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> countElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> subjectResults = ToOne<ReferenceDbObject>();
  MeasureReportPopulationDbObject({required this.id});
}
@Entity()
class MeasureReportStratifierDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<CodeableConceptDbObject> code = ToMany<CodeableConceptDbObject>();
  final ToMany<MeasureReportStratumDbObject> stratum = ToMany<MeasureReportStratumDbObject>();
  MeasureReportStratifierDbObject({required this.id});
}
@Entity()
class MeasureReportStratumDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> value = ToOne<CodeableConceptDbObject>();
  final ToMany<MeasureReportComponentDbObject> component = ToMany<MeasureReportComponentDbObject>();
  final ToMany<MeasureReportPopulation1DbObject> population = ToMany<MeasureReportPopulation1DbObject>();
  final ToOne<QuantityDbObject> measureScore = ToOne<QuantityDbObject>();
  MeasureReportStratumDbObject({required this.id});
}
@Entity()
class MeasureReportComponentDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> value = ToOne<CodeableConceptDbObject>();
  MeasureReportComponentDbObject({required this.id});
}
@Entity()
class MeasureReportPopulation1DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirIntegerDbObject> count = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> countElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> subjectResults = ToOne<ReferenceDbObject>();
  MeasureReportPopulation1DbObject({required this.id});
}
