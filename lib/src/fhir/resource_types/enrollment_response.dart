import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class EnrollmentResponse extends DomainResource {
  EnrollmentResponse({
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
    this.request,
    this.outcome,
    this.outcomeElement,
    this.disposition,
    this.dispositionElement,
    this.created,
    this.createdElement,
    this.organization,
    this.requestProvider,
  }) : super(resourceType: R4ResourceType.EnrollmentResponse);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final Reference? request;
  final FhirCode? outcome;
  final Element? outcomeElement;
  final FhirString? disposition;
  final Element? dispositionElement;
  final FhirDateTime? created;
  final Element? createdElement;
  final Reference? organization;
  final Reference? requestProvider;
  @override
  EnrollmentResponse clone() => throw UnimplementedError();
}
