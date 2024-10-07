import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class CoverageEligibilityRequest extends DomainResource {
  CoverageEligibilityRequest({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusElement,
    this.priority,
    required this.purpose,
    this.purposeElement,
    required this.patient,
    this.servicedDate,
    this.servicedDateElement,
    this.servicedPeriod,
    required this.created,
    this.createdElement,
    this.enterer,
    this.provider,
    required this.insurer,
    this.facility,
    this.supportingInfo,
    this.insurance,
    this.item,
  }) : super(resourceType: R4ResourceType.CoverageEligibilityRequest);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept? priority;
  final List<FhirCode> purpose;
  final List<Element>? purposeElement;
  final Reference patient;
  final FhirDate? servicedDate;
  final Element? servicedDateElement;
  final Period? servicedPeriod;
  final FhirDateTime created;
  final Element? createdElement;
  final Reference? enterer;
  final Reference? provider;
  final Reference insurer;
  final Reference? facility;
  final List<CoverageEligibilityRequestSupportingInfo>? supportingInfo;
  final List<CoverageEligibilityRequestInsurance>? insurance;
  final List<CoverageEligibilityRequestItem>? item;
  @override
  CoverageEligibilityRequest clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CoverageEligibilityRequestSupportingInfo extends BackboneElement {
  CoverageEligibilityRequestSupportingInfo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    required this.information,
    this.appliesToAll,
    this.appliesToAllElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirPositiveInt sequence;
  final Element? sequenceElement;
  final Reference information;
  final FhirBoolean? appliesToAll;
  final Element? appliesToAllElement;
  @override
  CoverageEligibilityRequestSupportingInfo clone() =>
      throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CoverageEligibilityRequestInsurance extends BackboneElement {
  CoverageEligibilityRequestInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.focal,
    this.focalElement,
    required this.coverage,
    this.businessArrangement,
    this.businessArrangementElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirBoolean? focal;
  final Element? focalElement;
  final Reference coverage;
  final FhirString? businessArrangement;
  final Element? businessArrangementElement;
  @override
  CoverageEligibilityRequestInsurance clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CoverageEligibilityRequestItem extends BackboneElement {
  CoverageEligibilityRequestItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.supportingInfoSequence,
    this.supportingInfoSequenceElement,
    this.category,
    this.productOrService,
    this.modifier,
    this.provider,
    this.quantity,
    this.unitPrice,
    this.facility,
    this.diagnosis,
    this.detail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<FhirPositiveInt>? supportingInfoSequence;
  final List<Element>? supportingInfoSequenceElement;
  final CodeableConcept? category;
  final CodeableConcept? productOrService;
  final List<CodeableConcept>? modifier;
  final Reference? provider;
  final Quantity? quantity;
  final Money? unitPrice;
  final Reference? facility;
  final List<CoverageEligibilityRequestDiagnosis>? diagnosis;
  final List<Reference>? detail;
  @override
  CoverageEligibilityRequestItem clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CoverageEligibilityRequestDiagnosis extends BackboneElement {
  CoverageEligibilityRequestDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.diagnosisCodeableConcept,
    this.diagnosisReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? diagnosisCodeableConcept;
  final Reference? diagnosisReference;
  @override
  CoverageEligibilityRequestDiagnosis clone() => throw UnimplementedError();
}
