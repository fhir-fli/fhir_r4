// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The type of network access point of this agent in the audit event.
class AuditEventAgentNetworkType extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  AuditEventAgentNetworkType._(
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

  /// Create empty [AuditEventAgentNetworkType] with element only
  factory AuditEventAgentNetworkType.empty() =>
      AuditEventAgentNetworkType._('');

  /// Factory constructor to create [AuditEventAgentNetworkType] from JSON.
  factory AuditEventAgentNetworkType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventAgentNetworkType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventAgentNetworkType cannot be constructed from JSON.',
      );
    }
    return AuditEventAgentNetworkType._(
      value,
      element: element,
    );
  }

  /// value1
  static final AuditEventAgentNetworkType value1 = AuditEventAgentNetworkType._(
    '1',
    system: 'http://hl7.org/fhir/ValueSet/network-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Machine Name'.toFhirString,
  );

  /// value2
  static final AuditEventAgentNetworkType value2 = AuditEventAgentNetworkType._(
    '2',
    system: 'http://hl7.org/fhir/ValueSet/network-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'IP Address'.toFhirString,
  );

  /// value3
  static final AuditEventAgentNetworkType value3 = AuditEventAgentNetworkType._(
    '3',
    system: 'http://hl7.org/fhir/ValueSet/network-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Telephone Number'.toFhirString,
  );

  /// value4
  static final AuditEventAgentNetworkType value4 = AuditEventAgentNetworkType._(
    '4',
    system: 'http://hl7.org/fhir/ValueSet/network-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Email address'.toFhirString,
  );

  /// value5
  static final AuditEventAgentNetworkType value5 = AuditEventAgentNetworkType._(
    '5',
    system: 'http://hl7.org/fhir/ValueSet/network-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'URI'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final AuditEventAgentNetworkType elementOnly =
      AuditEventAgentNetworkType._('');

  /// List of all enum-like values
  static final List<AuditEventAgentNetworkType> values = [
    value1,
    value2,
    value3,
    value4,
    value5,
  ];

  /// Clones the current instance
  @override
  AuditEventAgentNetworkType clone() => AuditEventAgentNetworkType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AuditEventAgentNetworkType withElement(Element? newElement) {
    return AuditEventAgentNetworkType._(
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
  AuditEventAgentNetworkType copyWith({
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
    return AuditEventAgentNetworkType._(
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
