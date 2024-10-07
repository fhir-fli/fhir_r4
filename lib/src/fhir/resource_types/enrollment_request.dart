import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class EnrollmentRequest extends DomainResource {
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
  }) : super(resourceType: R4ResourceType.EnrollmentRequest);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final FhirDateTime? created;
  final Element? createdElement;
  final Reference? insurer;
  final Reference? provider;
  final Reference? candidate;
  final Reference? coverage;
  @override
  EnrollmentRequest clone() => throw UnimplementedError();
}
