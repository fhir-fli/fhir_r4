import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CoverageEligibilityRequestItem {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<FhirPositiveInt> supportingInfoSequence;
  final List<PrimitiveElement> SupportingInfoSequence;
  final CodeableConcept category;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final Reference provider;
  final Quantity quantity;
  final Money unitPrice;
  final Reference facility;
  final List<CoverageEligibilityRequestDiagnosis> diagnosis;
  final List<Reference> detail;
  const CoverageEligibilityRequestItem({
    this.id,
    this.extension,
    this.modifierExtension,
    this.supportingInfoSequence,
    this.SupportingInfoSequence,
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
}
