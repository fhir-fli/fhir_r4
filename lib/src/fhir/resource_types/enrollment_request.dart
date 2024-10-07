import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [EnrollmentRequest] /// This resource provides the insurance enrollment details to the insurer
/// regarding a specified coverage.
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

  /// [identifier] /// The Response business identifier.
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  final FhirCode? status;
  final Element? statusElement;

  /// [created] /// The date when this resource was created.
  final FhirDateTime? created;
  final Element? createdElement;

  /// [insurer] /// The Insurer who is target of the request.
  final Reference? insurer;

  /// [provider] /// The practitioner who is responsible for the services rendered to the
  /// patient.
  final Reference? provider;

  /// [candidate] /// Patient Resource.
  final Reference? candidate;

  /// [coverage] /// Reference to the program or plan identification, underwriter or payor.
  final Reference? coverage;
  @override
  EnrollmentRequest clone() => throw UnimplementedError();
  EnrollmentRequest copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    FhirDateTime? created,
    Element? createdElement,
    Reference? insurer,
    Reference? provider,
    Reference? candidate,
    Reference? coverage,
  }) {
    return EnrollmentRequest(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      insurer: insurer ?? this.insurer,
      provider: provider ?? this.provider,
      candidate: candidate ?? this.candidate,
      coverage: coverage ?? this.coverage,
    );
  }
}
