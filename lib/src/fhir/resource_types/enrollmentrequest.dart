import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class EnrollmentRequest extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final FhirDateTime? created;
  final Element? createdElement;
  final Reference? insurer;
  final Reference? provider;
  final Reference? candidate;
  final Reference? coverage;

  EnrollmentRequest({
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
    this.status,
    this.statusElement,
    this.created,
    this.createdElement,
    this.insurer,
    this.provider,
    this.candidate,
    this.coverage,
  }): super(resourceType: R4ResourceType.EnrollmentRequest);

@override
EnrollmentRequest clone() => this;

}



