import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class BodyStructure extends DomainResource {
  BodyStructure({
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
    this.morphology,
    this.location,
    this.locationQualifier,
    this.description,
    this.descriptionElement,
    this.image,
    required this.patient,
  }) : super(resourceType: R4ResourceType.BodyStructure);

  final List<Identifier>? identifier;
  final FhirBoolean? active;
  final Element? activeElement;
  final CodeableConcept? morphology;
  final CodeableConcept? location;
  final List<CodeableConcept>? locationQualifier;
  final FhirString? description;
  final Element? descriptionElement;
  final List<Attachment>? image;
  final Reference patient;
  @override
  BodyStructure clone() => throw UnimplementedError();
}
