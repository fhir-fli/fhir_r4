import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ClaimDbObject {
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
  final ToOne<CodeableConceptDbObject> fundsReserve =
      ToOne<CodeableConceptDbObject>();
  final ToMany<ClaimRelatedDbObject> related = ToMany<ClaimRelatedDbObject>();
  final ToOne<ReferenceDbObject> prescription = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> originalPrescription =
      ToOne<ReferenceDbObject>();
  final ToOne<ClaimPayeeDbObject> payee = ToOne<ClaimPayeeDbObject>();
  final ToOne<ReferenceDbObject> referral = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> facility = ToOne<ReferenceDbObject>();
  final ToMany<ClaimCareTeamDbObject> careTeam =
      ToMany<ClaimCareTeamDbObject>();
  final ToMany<ClaimSupportingInfoDbObject> supportingInfo =
      ToMany<ClaimSupportingInfoDbObject>();
  final ToMany<ClaimDiagnosisDbObject> diagnosis =
      ToMany<ClaimDiagnosisDbObject>();
  final ToMany<ClaimProcedureDbObject> procedure =
      ToMany<ClaimProcedureDbObject>();
  final ToMany<ClaimInsuranceDbObject> insurance =
      ToMany<ClaimInsuranceDbObject>();
  final ToOne<ClaimAccidentDbObject> accident = ToOne<ClaimAccidentDbObject>();
  final ToMany<ClaimItemDbObject> item = ToMany<ClaimItemDbObject>();
  final ToOne<MoneyDbObject> total = ToOne<MoneyDbObject>();
  ClaimDbObject({required this.id});
}

@Entity()
class ClaimRelatedDbObject {
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
  ClaimRelatedDbObject({required this.id});
}

@Entity()
class ClaimPayeeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> party = ToOne<ReferenceDbObject>();
  ClaimPayeeDbObject({required this.id});
}

@Entity()
class ClaimCareTeamDbObject {
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
  ClaimCareTeamDbObject({required this.id});
}

@Entity()
class ClaimSupportingInfoDbObject {
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
  final ToOne<CodeableConceptDbObject> reason =
      ToOne<CodeableConceptDbObject>();
  ClaimSupportingInfoDbObject({required this.id});
}

@Entity()
class ClaimDiagnosisDbObject {
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
  ClaimDiagnosisDbObject({required this.id});
}

@Entity()
class ClaimProcedureDbObject {
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
  ClaimProcedureDbObject({required this.id});
}

@Entity()
class ClaimInsuranceDbObject {
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
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<ReferenceDbObject> coverage = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> businessArrangement = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> businessArrangementElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> preAuthRef = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> preAuthRefElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> claimResponse = ToOne<ReferenceDbObject>();
  ClaimInsuranceDbObject({required this.id});
}

@Entity()
class ClaimAccidentDbObject {
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
  ClaimAccidentDbObject({required this.id});
}

@Entity()
class ClaimItemDbObject {
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
  final ToMany<ClaimDetailDbObject> detail = ToMany<ClaimDetailDbObject>();
  ClaimItemDbObject({required this.id});
}

@Entity()
class ClaimDetailDbObject {
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
  final ToMany<ClaimSubDetailDbObject> subDetail =
      ToMany<ClaimSubDetailDbObject>();
  ClaimDetailDbObject({required this.id});
}

@Entity()
class ClaimSubDetailDbObject {
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
  ClaimSubDetailDbObject({required this.id});
}
