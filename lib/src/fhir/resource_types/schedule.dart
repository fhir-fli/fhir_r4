import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Schedule extends DomainResource {
  final List<Identifier>? identifier;
  final FhirBoolean? active;
  final Element? activeElement;
  final List<CodeableConcept>? serviceCategory;
  final List<CodeableConcept>? serviceType;
  final List<CodeableConcept>? specialty;
  final List<Reference> actor;
  final Period? planningHorizon;
  final FhirString? comment;
  final Element? commentElement;

  Schedule({
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
    this.active,
this.activeElement,
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    required this.actor,
    this.planningHorizon,
    this.comment,
this.commentElement,
  }) : super(resourceType: R4ResourceType.Schedule);

@override
Schedule clone() => throw UnimplementedError();
}

