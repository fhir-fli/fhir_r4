// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Identifies the style of unique identifier used to identify a namespace.
class NamingSystemIdentifierType extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  NamingSystemIdentifierType._(
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

  /// Create empty [NamingSystemIdentifierType] with element only
  factory NamingSystemIdentifierType.empty() =>
      NamingSystemIdentifierType._('');

  /// Factory constructor to create [NamingSystemIdentifierType] from JSON.
  factory NamingSystemIdentifierType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemIdentifierType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NamingSystemIdentifierType cannot be constructed from JSON.',
      );
    }
    return NamingSystemIdentifierType._(
      value,
      element: element,
    );
  }

  /// oid
  static final NamingSystemIdentifierType oid = NamingSystemIdentifierType._(
    'oid',
    system:
        'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OID'.toFhirString,
  );

  /// uuid
  static final NamingSystemIdentifierType uuid = NamingSystemIdentifierType._(
    'uuid',
    system:
        'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'UUID'.toFhirString,
  );

  /// uri
  static final NamingSystemIdentifierType uri = NamingSystemIdentifierType._(
    'uri',
    system:
        'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'URI'.toFhirString,
  );

  /// other
  static final NamingSystemIdentifierType other = NamingSystemIdentifierType._(
    'other',
    system:
        'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Other'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final NamingSystemIdentifierType elementOnly =
      NamingSystemIdentifierType._('');

  /// List of all enum-like values
  static final List<NamingSystemIdentifierType> values = [
    oid,
    uuid,
    uri,
    other,
  ];

  /// Clones the current instance
  @override
  NamingSystemIdentifierType clone() => NamingSystemIdentifierType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  NamingSystemIdentifierType withElement(Element? newElement) {
    return NamingSystemIdentifierType._(
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
  NamingSystemIdentifierType copyWith({
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
    return NamingSystemIdentifierType._(
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
