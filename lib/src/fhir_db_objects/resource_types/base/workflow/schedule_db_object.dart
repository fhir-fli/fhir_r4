import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ScheduleDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirBooleanDbObject> active = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> activeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> serviceCategory =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> serviceType =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> specialty =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> actor = ToMany<ReferenceDbObject>();
  final ToOne<PeriodDbObject> planningHorizon = ToOne<PeriodDbObject>();
  final ToOne<StringDbObject> comment = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> commentElement =
      ToOne<PrimitiveElementDbObject>();
  ScheduleDbObject({required this.id});
}
