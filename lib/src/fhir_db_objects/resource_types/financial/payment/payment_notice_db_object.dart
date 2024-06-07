import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class PaymentNoticeDbObject {
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
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> request = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> response = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> created = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> createdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> provider = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> payment = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateDbObject> paymentDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> paymentDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> payee = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> recipient = ToOne<ReferenceDbObject>();
  final ToOne<MoneyDbObject> amount = ToOne<MoneyDbObject>();
  final ToOne<CodeableConceptDbObject> paymentStatus =
      ToOne<CodeableConceptDbObject>();
  PaymentNoticeDbObject({required this.id});
}
