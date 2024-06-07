import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ExplanationOfBenefitDbObject {
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
  final ToOne<PeriodDbObject> billablePeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirDateTimeDbObject> created = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> createdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> enterer = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> insurer = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> provider = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> priority =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> fundsReserveRequested =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> fundsReserve =
      ToOne<CodeableConceptDbObject>();
  final ToMany<ExplanationOfBenefitRelatedDbObject> related =
      ToMany<ExplanationOfBenefitRelatedDbObject>();
  final ToOne<ReferenceDbObject> prescription = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> originalPrescription =
      ToOne<ReferenceDbObject>();
  final ToOne<ExplanationOfBenefitPayeeDbObject> payee =
      ToOne<ExplanationOfBenefitPayeeDbObject>();
  final ToOne<ReferenceDbObject> referral = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> facility = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> claim = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> claimResponse = ToOne<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> outcome = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> outcomeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> disposition = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> dispositionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> preAuthRef = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> preAuthRefElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<PeriodDbObject> preAuthRefPeriod = ToMany<PeriodDbObject>();
  final ToMany<ExplanationOfBenefitCareTeamDbObject> careTeam =
      ToMany<ExplanationOfBenefitCareTeamDbObject>();
  final ToMany<ExplanationOfBenefitSupportingInfoDbObject> supportingInfo =
      ToMany<ExplanationOfBenefitSupportingInfoDbObject>();
  final ToMany<ExplanationOfBenefitDiagnosisDbObject> diagnosis =
      ToMany<ExplanationOfBenefitDiagnosisDbObject>();
  final ToMany<ExplanationOfBenefitProcedureDbObject> procedure =
      ToMany<ExplanationOfBenefitProcedureDbObject>();
  final ToOne<FhirPositiveIntDbObject> precedence =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> precedenceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ExplanationOfBenefitInsuranceDbObject> insurance =
      ToMany<ExplanationOfBenefitInsuranceDbObject>();
  final ToOne<ExplanationOfBenefitAccidentDbObject> accident =
      ToOne<ExplanationOfBenefitAccidentDbObject>();
  final ToMany<ExplanationOfBenefitItemDbObject> item =
      ToMany<ExplanationOfBenefitItemDbObject>();
  final ToMany<ExplanationOfBenefitAddItemDbObject> addItem =
      ToMany<ExplanationOfBenefitAddItemDbObject>();
  final ToMany<ExplanationOfBenefitAdjudicationDbObject> adjudication =
      ToMany<ExplanationOfBenefitAdjudicationDbObject>();
  final ToMany<ExplanationOfBenefitTotalDbObject> total =
      ToMany<ExplanationOfBenefitTotalDbObject>();
  final ToOne<ExplanationOfBenefitPaymentDbObject> payment =
      ToOne<ExplanationOfBenefitPaymentDbObject>();
  final ToOne<CodeableConceptDbObject> formCode =
      ToOne<CodeableConceptDbObject>();
  final ToOne<AttachmentDbObject> form = ToOne<AttachmentDbObject>();
  final ToMany<ExplanationOfBenefitProcessNoteDbObject> processNote =
      ToMany<ExplanationOfBenefitProcessNoteDbObject>();
  final ToOne<PeriodDbObject> benefitPeriod = ToOne<PeriodDbObject>();
  final ToMany<ExplanationOfBenefitBenefitBalanceDbObject> benefitBalance =
      ToMany<ExplanationOfBenefitBenefitBalanceDbObject>();
  ExplanationOfBenefitDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitRelatedDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> claim = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> relationship =
      ToOne<CodeableConceptDbObject>();
  final ToOne<IdentifierDbObject> reference = ToOne<IdentifierDbObject>();
  ExplanationOfBenefitRelatedDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitPayeeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> party = ToOne<ReferenceDbObject>();
  ExplanationOfBenefitPayeeDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitCareTeamDbObject {
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
  final ToOne<ReferenceDbObject> provider = ToOne<ReferenceDbObject>();
  final ToOne<FhirBooleanDbObject> responsible = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> responsibleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> role = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> qualification =
      ToOne<CodeableConceptDbObject>();
  ExplanationOfBenefitCareTeamDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitSupportingInfoDbObject {
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
  final ToOne<CodeableConceptDbObject> category =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDateDbObject> timingDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> timingDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> timingPeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirBooleanDbObject> valueBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBooleanElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> valueString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<QuantityDbObject> valueQuantity = ToOne<QuantityDbObject>();
  final ToOne<AttachmentDbObject> valueAttachment = ToOne<AttachmentDbObject>();
  final ToOne<ReferenceDbObject> valueReference = ToOne<ReferenceDbObject>();
  final ToOne<CodingDbObject> reason = ToOne<CodingDbObject>();
  ExplanationOfBenefitSupportingInfoDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitDiagnosisDbObject {
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
  final ToOne<CodeableConceptDbObject> diagnosisCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> diagnosisReference =
      ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> type =
      ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> onAdmission =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> packageCode =
      ToOne<CodeableConceptDbObject>();
  ExplanationOfBenefitDiagnosisDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitProcedureDbObject {
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
  final ToMany<CodeableConceptDbObject> type =
      ToMany<CodeableConceptDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> procedureCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> procedureReference =
      ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> udi = ToMany<ReferenceDbObject>();
  ExplanationOfBenefitProcedureDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitInsuranceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirBooleanDbObject> focal = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> focalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> coverage = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> preAuthRef = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> preAuthRefElement =
      ToMany<PrimitiveElementDbObject>();
  ExplanationOfBenefitInsuranceDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitAccidentDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirDateDbObject> date = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<AddressDbObject> locationAddress = ToOne<AddressDbObject>();
  final ToOne<ReferenceDbObject> locationReference = ToOne<ReferenceDbObject>();
  ExplanationOfBenefitAccidentDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitItemDbObject {
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
  final ToMany<FhirPositiveIntDbObject> careTeamSequence =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> careTeamSequenceElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirPositiveIntDbObject> diagnosisSequence =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> diagnosisSequenceElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirPositiveIntDbObject> procedureSequence =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> procedureSequenceElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirPositiveIntDbObject> informationSequence =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> informationSequenceElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> revenue =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> category =
      ToOne<CodeableConceptDbObject>();
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
  final ToMany<ReferenceDbObject> udi = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> bodySite =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> subSite =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> encounter = ToMany<ReferenceDbObject>();
  final ToMany<FhirPositiveIntDbObject> noteNumber =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> noteNumberElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<ExplanationOfBenefitAdjudicationDbObject> adjudication =
      ToMany<ExplanationOfBenefitAdjudicationDbObject>();
  final ToMany<ExplanationOfBenefitDetailDbObject> detail =
      ToMany<ExplanationOfBenefitDetailDbObject>();
  ExplanationOfBenefitItemDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitAdjudicationDbObject {
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
  ExplanationOfBenefitAdjudicationDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitDetailDbObject {
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
  final ToOne<CodeableConceptDbObject> revenue =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> category =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> productOrService =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> modifier =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> programCode =
      ToMany<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<MoneyDbObject> unitPrice = ToOne<MoneyDbObject>();
  final ToOne<FhirDecimalDbObject> factor = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> factorElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<MoneyDbObject> net = ToOne<MoneyDbObject>();
  final ToMany<ReferenceDbObject> udi = ToMany<ReferenceDbObject>();
  final ToMany<FhirPositiveIntDbObject> noteNumber =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> noteNumberElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<ExplanationOfBenefitAdjudicationDbObject> adjudication =
      ToMany<ExplanationOfBenefitAdjudicationDbObject>();
  final ToMany<ExplanationOfBenefitSubDetailDbObject> subDetail =
      ToMany<ExplanationOfBenefitSubDetailDbObject>();
  ExplanationOfBenefitDetailDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitSubDetailDbObject {
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
  final ToOne<CodeableConceptDbObject> revenue =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> category =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> productOrService =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> modifier =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> programCode =
      ToMany<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<MoneyDbObject> unitPrice = ToOne<MoneyDbObject>();
  final ToOne<FhirDecimalDbObject> factor = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> factorElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<MoneyDbObject> net = ToOne<MoneyDbObject>();
  final ToMany<ReferenceDbObject> udi = ToMany<ReferenceDbObject>();
  final ToMany<FhirPositiveIntDbObject> noteNumber =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> noteNumberElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<ExplanationOfBenefitAdjudicationDbObject> adjudication =
      ToMany<ExplanationOfBenefitAdjudicationDbObject>();
  ExplanationOfBenefitSubDetailDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitAddItemDbObject {
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
  final ToMany<FhirPositiveIntDbObject> subDetailSequence =
      ToMany<FhirPositiveIntDbObject>();
  final ToMany<PrimitiveElementDbObject> subDetailSequenceElement =
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
  final ToMany<ExplanationOfBenefitAdjudicationDbObject> adjudication =
      ToMany<ExplanationOfBenefitAdjudicationDbObject>();
  final ToMany<ExplanationOfBenefitDetail1DbObject> detail =
      ToMany<ExplanationOfBenefitDetail1DbObject>();
  ExplanationOfBenefitAddItemDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitDetail1DbObject {
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
  final ToMany<ExplanationOfBenefitAdjudicationDbObject> adjudication =
      ToMany<ExplanationOfBenefitAdjudicationDbObject>();
  final ToMany<ExplanationOfBenefitSubDetail1DbObject> subDetail =
      ToMany<ExplanationOfBenefitSubDetail1DbObject>();
  ExplanationOfBenefitDetail1DbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitSubDetail1DbObject {
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
  final ToMany<ExplanationOfBenefitAdjudicationDbObject> adjudication =
      ToMany<ExplanationOfBenefitAdjudicationDbObject>();
  ExplanationOfBenefitSubDetail1DbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitTotalDbObject {
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
  ExplanationOfBenefitTotalDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitPaymentDbObject {
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
  ExplanationOfBenefitPaymentDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitProcessNoteDbObject {
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
  ExplanationOfBenefitProcessNoteDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitBenefitBalanceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> category =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> excluded = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> excludedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> network =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> unit = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> term = ToOne<CodeableConceptDbObject>();
  final ToMany<ExplanationOfBenefitFinancialDbObject> financial =
      ToMany<ExplanationOfBenefitFinancialDbObject>();
  ExplanationOfBenefitBenefitBalanceDbObject({required this.id});
}

@Entity()
class ExplanationOfBenefitFinancialDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirUnsignedIntDbObject> allowedUnsignedInt =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> allowedUnsignedIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> allowedString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> allowedStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<MoneyDbObject> allowedMoney = ToOne<MoneyDbObject>();
  final ToOne<FhirUnsignedIntDbObject> usedUnsignedInt =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> usedUnsignedIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<MoneyDbObject> usedMoney = ToOne<MoneyDbObject>();
  ExplanationOfBenefitFinancialDbObject({required this.id});
}
