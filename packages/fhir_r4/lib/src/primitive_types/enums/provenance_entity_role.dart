// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How an entity was used in an activity.
class ProvenanceEntityRole extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ProvenanceEntityRole._({
    required super.validatedValue,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory ProvenanceEntityRole(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return ProvenanceEntityRole._(
      validatedValue: validated,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [ProvenanceEntityRole] with element only
  factory ProvenanceEntityRole.empty() =>
      ProvenanceEntityRole._(validatedValue: '');

  /// Factory constructor to create [ProvenanceEntityRole] from JSON.
  factory ProvenanceEntityRole.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceEntityRole.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ProvenanceEntityRole cannot be constructed from JSON.',
      );
    }
    return ProvenanceEntityRole._(
      validatedValue: value,
      element: element,
    );
  }

  /// derivation
  static final ProvenanceEntityRole derivation = ProvenanceEntityRole._(
    validatedValue: 'derivation',
    system: 'http://hl7.org/fhir/ValueSet/provenance-entity-role'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Derivation'.toFhirString,
  );

  /// revision
  static final ProvenanceEntityRole revision = ProvenanceEntityRole._(
    validatedValue: 'revision',
    system: 'http://hl7.org/fhir/ValueSet/provenance-entity-role'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Revision'.toFhirString,
  );

  /// quotation
  static final ProvenanceEntityRole quotation = ProvenanceEntityRole._(
    validatedValue: 'quotation',
    system: 'http://hl7.org/fhir/ValueSet/provenance-entity-role'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Quotation'.toFhirString,
  );

  /// source
  static final ProvenanceEntityRole source = ProvenanceEntityRole._(
    validatedValue: 'source',
    system: 'http://hl7.org/fhir/ValueSet/provenance-entity-role'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Source'.toFhirString,
  );

  /// removal
  static final ProvenanceEntityRole removal = ProvenanceEntityRole._(
    validatedValue: 'removal',
    system: 'http://hl7.org/fhir/ValueSet/provenance-entity-role'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Removal'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ProvenanceEntityRole elementOnly =
      ProvenanceEntityRole._(validatedValue: '');

  /// List of all enum-like values
  static final List<ProvenanceEntityRole> values = [
    derivation,
    revision,
    quotation,
    source,
    removal,
  ];

  /// Clones the current instance
  @override
  ProvenanceEntityRole clone() => ProvenanceEntityRole._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ProvenanceEntityRole withElement(Element? newElement) {
    return ProvenanceEntityRole._(validatedValue: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ProvenanceEntityRole copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ProvenanceEntityRole._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
