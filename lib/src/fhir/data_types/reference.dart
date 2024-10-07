import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Reference] /// A reference from one resource to another.
class Reference extends DataType {
  Reference({
    super.id,
    super.extension_,
    this.reference,
    this.referenceElement,
    this.type,
    this.typeElement,
    this.identifier,
    this.display,
    this.displayElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [reference] /// A reference to a location at which the other resource is found. The
  /// reference may be a relative reference, in which case it is relative to the
  /// service base URL, or an absolute URL that resolves to the location where
  /// the resource is found. The reference may be version specific or not. If the
  /// reference is not to a FHIR RESTful server, then it should be assumed to be
  /// version specific. Internal fragment references (start with '#') refer to
  /// contained resources.
  final FhirString? reference;
  final Element? referenceElement;

  /// [type] /// The expected type of the target of the reference. If both Reference.type
  /// and Reference.reference are populated and Reference.reference is a FHIR
  /// URL, both SHALL be consistent.
  ///
  /// The type is the Canonical URL of Resource Definition that is the type this
  /// reference refers to. References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition/ e.g. "Patient" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/Patient. Absolute URLs are only
  /// allowed for logical models (and can only be used in references in logical
  /// models, not resources).
  final FhirUri? type;
  final Element? typeElement;

  /// [identifier] /// An identifier for the target resource. This is used when there is no way to
  /// reference the other resource directly, either because the entity it
  /// represents is not available through a FHIR server, or because there is no
  /// way for the author of the resource to convert a known identifier to an
  /// actual location. There is no requirement that a Reference.identifier point
  /// to something that is actually exposed as a FHIR instance, but it SHALL
  /// point to a business concept that would be expected to be exposed as a FHIR
  /// instance, and that instance would need to be of a FHIR resource type
  /// allowed by the reference.
  final Identifier? identifier;

  /// [display] /// Plain text narrative that identifies the resource in addition to the
  /// resource reference.
  final FhirString? display;
  final Element? displayElement;
  @override
  Reference clone() => throw UnimplementedError();
  Reference copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? reference,
    Element? referenceElement,
    FhirUri? type,
    Element? typeElement,
    Identifier? identifier,
    FhirString? display,
    Element? displayElement,
  }) {
    return Reference(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      reference: reference ?? this.reference,
      referenceElement: referenceElement ?? this.referenceElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      identifier: identifier ?? this.identifier,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
    );
  }
}
