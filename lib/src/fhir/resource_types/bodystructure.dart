import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class BodyStructure extends DomainResource {
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
  }): super(resourceType: R4ResourceType.BodyStructure);

@override
BodyStructure clone() => this;

}



