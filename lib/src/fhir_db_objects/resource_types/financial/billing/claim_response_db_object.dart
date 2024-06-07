import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ClaimResponseDbObject {
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
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> subType =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> use = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> useElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> created = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> createdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> insurer = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> requestor = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> request = ToOne<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> outcome = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> outcomeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> disposition = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> dispositionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> preAuthRef = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> preAuthRefElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> preAuthPeriod = ToOne<PeriodDbObject>();
  final ToOne<CodeableConceptDbObject> payeeType =
      ToOne<CodeableConceptDbObject>();
  final ToMany<ClaimResponseItemDbObject> item =
      ToMany<ClaimResponseItemDbObject>();
  final ToMany<ClaimResponseAddItemDbObject> addItem =
      ToMany<ClaimResponseAddItemDbObject>();
  final ToMany<ClaimResponseAdjudicationDbObject> adjudication =
      ToMany<ClaimResponseAdjudicationDbObject>();
  final ToMany<ClaimResponseTotalDbObject> total =
      ToMany<ClaimResponseTotalDbObject>();
  final ToOne<ClaimResponsePaymentDbObject> payment =
      ToOne<ClaimResponsePaymentDbObject>();
  final ToOne<CodeableConceptDbObject> fundsReserve =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> formCode =
      ToOne<CodeableConceptDbObject>();
  final ToOne<AttachmentDbObject> form = ToOne<AttachmentDbObject>();
  final ToMany<ClaimResponseProcessNoteDbObject> processNote =
      ToMany<ClaimResponseProcessNoteDbObject>();
  final ToMany<ReferenceDbObject> communicationRequest =
      ToMany<ReferenceDbObject>();
  final ToMany<ClaimResponseInsuranceDbObject> insurance =
      ToMany<ClaimResponseInsuranceDbObject>();
  final ToMany<ClaimResponseErrorDbObject> error =
      ToMany<ClaimResponseErrorDbObject>();
  ClaimResponseDbObject({required this.id});
}

@Entity()
class ClaimResponseItemDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirPositiveIntDbObject> itemSequence =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> itemSequenceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirPositiveIntDbObject> noteNumber =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> noteNumberElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<ClaimResponseAdjudicationDbObject> adjudication =
      ToMany<ClaimResponseAdjudicationDbObject>();
  final ToMany<ClaimResponseDetailDbObject> detail =
      ToMany<ClaimResponseDetailDbObject>();
  ClaimResponseItemDbObject({required this.id});
}

@Entity()
class ClaimResponseAdjudicationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> category =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> reason =
      ToOne<CodeableConceptDbObject>();
  final ToOne<MoneyDbObject> amount = ToOne<MoneyDbObject>();
  final ToOne<FhirDecimalDbObject> value = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement =
      ToOne<PrimitiveElementDbObject>();
  ClaimResponseAdjudicationDbObject({required this.id});
}

@Entity()
class ClaimResponseDetailDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirPositiveIntDbObject> detailSequence =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> detailSequenceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirPositiveIntDbObject> noteNumber =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> noteNumberElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<ClaimResponseAdjudicationDbObject> adjudication =
      ToMany<ClaimResponseAdjudicationDbObject>();
  final ToMany<ClaimResponseSubDetailDbObject> subDetail =
      ToMany<ClaimResponseSubDetailDbObject>();
  ClaimResponseDetailDbObject({required this.id});
}

@Entity()
class ClaimResponseSubDetailDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirPositiveIntDbObject> subDetailSequence =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> subDetailSequenceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirPositiveIntDbObject> noteNumber =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> noteNumberElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<ClaimResponseAdjudicationDbObject> adjudication =
      ToMany<ClaimResponseAdjudicationDbObject>();
  ClaimResponseSubDetailDbObject({required this.id});
}

@Entity()
class ClaimResponseAddItemDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirPositiveIntDbObject> itemSequence =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> itemSequenceElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirPositiveIntDbObject> detailSequence =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> detailSequenceElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirPositiveIntDbObject> subdetailSequence =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> subdetailSequenceElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> provider = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> productOrService =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> modifier =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> programCode =
      ToMany<CodeableConceptDbObject>();
  final ToOne<FhirDateDbObject> servicedDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> servicedDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> servicedPeriod = ToOne<PeriodDbObject>();
  final ToOne<CodeableConceptDbObject> locationCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<AddressDbObject> locationAddress = ToOne<AddressDbObject>();
  final ToOne<ReferenceDbObject> locationReference = ToOne<ReferenceDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<MoneyDbObject> unitPrice = ToOne<MoneyDbObject>();
  final ToOne<FhirDecimalDbObject> factor = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> factorElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<MoneyDbObject> net = ToOne<MoneyDbObject>();
  final ToOne<CodeableConceptDbObject> bodySite =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> subSite =
      ToMany<CodeableConceptDbObject>();
  final ToMany<FhirPositiveIntDbObject> noteNumber =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> noteNumberElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<ClaimResponseAdjudicationDbObject> adjudication =
      ToMany<ClaimResponseAdjudicationDbObject>();
  final ToMany<ClaimResponseDetail1DbObject> detail =
      ToMany<ClaimResponseDetail1DbObject>();
  ClaimResponseAddItemDbObject({required this.id});
}

@Entity()
class ClaimResponseDetail1DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> productOrService =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> modifier =
      ToMany<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<MoneyDbObject> unitPrice = ToOne<MoneyDbObject>();
  final ToOne<FhirDecimalDbObject> factor = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> factorElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<MoneyDbObject> net = ToOne<MoneyDbObject>();
  final ToMany<FhirPositiveIntDbObject> noteNumber =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> noteNumberElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<ClaimResponseAdjudicationDbObject> adjudication =
      ToMany<ClaimResponseAdjudicationDbObject>();
  final ToMany<ClaimResponseSubDetail1DbObject> subDetail =
      ToMany<ClaimResponseSubDetail1DbObject>();
  ClaimResponseDetail1DbObject({required this.id});
}

@Entity()
class ClaimResponseSubDetail1DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> productOrService =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> modifier =
      ToMany<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<MoneyDbObject> unitPrice = ToOne<MoneyDbObject>();
  final ToOne<FhirDecimalDbObject> factor = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> factorElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<MoneyDbObject> net = ToOne<MoneyDbObject>();
  final ToMany<FhirPositiveIntDbObject> noteNumber =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> noteNumberElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<ClaimResponseAdjudicationDbObject> adjudication =
      ToMany<ClaimResponseAdjudicationDbObject>();
  ClaimResponseSubDetail1DbObject({required this.id});
}

@Entity()
class ClaimResponseTotalDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> category =
      ToOne<CodeableConceptDbObject>();
  final ToOne<MoneyDbObject> amount = ToOne<MoneyDbObject>();
  ClaimResponseTotalDbObject({required this.id});
}

@Entity()
class ClaimResponsePaymentDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<MoneyDbObject> adjustment = ToOne<MoneyDbObject>();
  final ToOne<CodeableConceptDbObject> adjustmentReason =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDateDbObject> date = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<MoneyDbObject> amount = ToOne<MoneyDbObject>();
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  ClaimResponsePaymentDbObject({required this.id});
}

@Entity()
class ClaimResponseProcessNoteDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirPositiveIntDbObject> number =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> numberElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> text = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> language =
      ToOne<CodeableConceptDbObject>();
  ClaimResponseProcessNoteDbObject({required this.id});
}

@Entity()
class ClaimResponseInsuranceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirPositiveIntDbObject> sequence =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> sequenceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> focal = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> focalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> coverage = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> businessArrangement = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> businessArrangementElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> claimResponse = ToOne<ReferenceDbObject>();
  ClaimResponseInsuranceDbObject({required this.id});
}

@Entity()
class ClaimResponseErrorDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirPositiveIntDbObject> itemSequence =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> itemSequenceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> detailSequence =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> detailSequenceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> subDetailSequence =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> subDetailSequenceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  ClaimResponseErrorDbObject({required this.id});
}
