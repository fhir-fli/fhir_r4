import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [BodyStructure] /// Record details about an anatomical structure. This resource may be used
/// when a coded concept does not provide the necessary detail needed for the
/// use case.
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

  /// [identifier] /// Identifier for this instance of the anatomical structure.
  final List<Identifier>? identifier;

  /// [active] /// Whether this body site is in active use.
  final FhirBoolean? active;
  final Element? activeElement;

  /// [morphology] /// The kind of structure being represented by the body structure at
  /// `BodyStructure.location`. This can define both normal and abnormal
  /// morphologies.
  final CodeableConcept? morphology;

  /// [location] /// The anatomical location or region of the specimen, lesion, or body
  /// structure.
  final CodeableConcept? location;

  /// [locationQualifier] /// Qualifier to refine the anatomical location. These include qualifiers for
  /// laterality, relative location, directionality, number, and plane.
  final List<CodeableConcept>? locationQualifier;

  /// [description] /// A summary, characterization or explanation of the body structure.
  final FhirString? description;
  final Element? descriptionElement;

  /// [image] /// Image or images used to identify a location.
  final List<Attachment>? image;

  /// [patient] /// The person to which the body site belongs.
  final Reference patient;
  @override
  BodyStructure clone() => throw UnimplementedError();
  BodyStructure copy({
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
    FhirBoolean? active,
    Element? activeElement,
    CodeableConcept? morphology,
    CodeableConcept? location,
    List<CodeableConcept>? locationQualifier,
    FhirString? description,
    Element? descriptionElement,
    List<Attachment>? image,
    Reference? patient,
  }) {
    return BodyStructure(
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
      active: active ?? this.active,
      activeElement: activeElement ?? this.activeElement,
      morphology: morphology ?? this.morphology,
      location: location ?? this.location,
      locationQualifier: locationQualifier ?? this.locationQualifier,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      image: image ?? this.image,
      patient: patient ?? this.patient,
    );
  }
}
