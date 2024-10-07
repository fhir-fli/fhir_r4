import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [EnrollmentResponse] /// This resource provides enrollment and plan details from the processing of
/// an EnrollmentRequest resource.
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

  /// [identifier] /// The Response business identifier.
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  final FhirCode? status;
  final Element? statusElement;

  /// [request] /// Original request resource reference.
  final Reference? request;

  /// [outcome] /// Processing status: error, complete.
  final FhirCode? outcome;
  final Element? outcomeElement;

  /// [disposition] /// A description of the status of the adjudication.
  final FhirString? disposition;
  final Element? dispositionElement;

  /// [created] /// The date when the enclosed suite of services were performed or completed.
  final FhirDateTime? created;
  final Element? createdElement;

  /// [organization] /// The Insurer who produced this adjudicated response.
  final Reference? organization;

  /// [requestProvider] /// The practitioner who is responsible for the services rendered to the
  /// patient.
  final Reference? requestProvider;
  @override
  EnrollmentResponse clone() => throw UnimplementedError();
  EnrollmentResponse copy({
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
    Reference? request,
    FhirCode? outcome,
    Element? outcomeElement,
    FhirString? disposition,
    Element? dispositionElement,
    FhirDateTime? created,
    Element? createdElement,
    Reference? organization,
    Reference? requestProvider,
  }) {
    return EnrollmentResponse(
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
      request: request ?? this.request,
      outcome: outcome ?? this.outcome,
      outcomeElement: outcomeElement ?? this.outcomeElement,
      disposition: disposition ?? this.disposition,
      dispositionElement: dispositionElement ?? this.dispositionElement,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      organization: organization ?? this.organization,
      requestProvider: requestProvider ?? this.requestProvider,
    );
  }
}
