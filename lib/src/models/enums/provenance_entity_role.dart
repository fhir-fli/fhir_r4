// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// How an entity was used in an activity.
class ProvenanceEntityRole extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  ProvenanceEntityRole._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [ProvenanceEntityRole] with element only
  factory ProvenanceEntityRole.empty() => ProvenanceEntityRole._('');

  /// Factory constructor to create [ProvenanceEntityRole] from JSON.
  factory ProvenanceEntityRole.fromJson(
    Map<String, dynamic> json,
  ) {
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
      value,
      element: element,
    );
  }

  /// derivation
  static final ProvenanceEntityRole derivation = ProvenanceEntityRole._(
    'derivation',
    system: 'http://hl7.org/fhir/ValueSet/provenance-entity-role'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Derivation'.toFhirString,
  );

  /// revision
  static final ProvenanceEntityRole revision = ProvenanceEntityRole._(
    'revision',
    system: 'http://hl7.org/fhir/ValueSet/provenance-entity-role'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Revision'.toFhirString,
  );

  /// quotation
  static final ProvenanceEntityRole quotation = ProvenanceEntityRole._(
    'quotation',
    system: 'http://hl7.org/fhir/ValueSet/provenance-entity-role'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Quotation'.toFhirString,
  );

  /// source
  static final ProvenanceEntityRole source = ProvenanceEntityRole._(
    'source',
    system: 'http://hl7.org/fhir/ValueSet/provenance-entity-role'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Source'.toFhirString,
  );

  /// removal
  static final ProvenanceEntityRole removal = ProvenanceEntityRole._(
    'removal',
    system: 'http://hl7.org/fhir/ValueSet/provenance-entity-role'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Removal'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final ProvenanceEntityRole elementOnly = ProvenanceEntityRole._('');

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
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ProvenanceEntityRole withElement(Element? newElement) {
    return ProvenanceEntityRole._(
      value,
      element: newElement,
    );
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
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
