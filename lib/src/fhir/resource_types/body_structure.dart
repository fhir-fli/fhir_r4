import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
