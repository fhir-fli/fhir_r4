// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of network access point of this agent in the audit event.
class AuditEventAgentNetworkType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  AuditEventAgentNetworkType._({
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
  factory AuditEventAgentNetworkType(
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
    return AuditEventAgentNetworkType._(
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

  /// Create empty [AuditEventAgentNetworkType] with element only
  factory AuditEventAgentNetworkType.empty() =>
      AuditEventAgentNetworkType._(validatedValue: '');

  /// Factory constructor to create [AuditEventAgentNetworkType] from JSON.
  factory AuditEventAgentNetworkType.fromJson(Map<String, dynamic> json) {
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
      validatedValue: value,
      element: element,
    );
  }

  /// value1
  static final AuditEventAgentNetworkType value1 = AuditEventAgentNetworkType._(
    validatedValue: '1',
    system: 'http://hl7.org/fhir/ValueSet/network-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Machine Name'.toFhirString,
  );

  /// value2
  static final AuditEventAgentNetworkType value2 = AuditEventAgentNetworkType._(
    validatedValue: '2',
    system: 'http://hl7.org/fhir/ValueSet/network-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'IP Address'.toFhirString,
  );

  /// value3
  static final AuditEventAgentNetworkType value3 = AuditEventAgentNetworkType._(
    validatedValue: '3',
    system: 'http://hl7.org/fhir/ValueSet/network-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Telephone Number'.toFhirString,
  );

  /// value4
  static final AuditEventAgentNetworkType value4 = AuditEventAgentNetworkType._(
    validatedValue: '4',
    system: 'http://hl7.org/fhir/ValueSet/network-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Email address'.toFhirString,
  );

  /// value5
  static final AuditEventAgentNetworkType value5 = AuditEventAgentNetworkType._(
    validatedValue: '5',
    system: 'http://hl7.org/fhir/ValueSet/network-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'URI'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final AuditEventAgentNetworkType elementOnly =
      AuditEventAgentNetworkType._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AuditEventAgentNetworkType withElement(Element? newElement) {
    return AuditEventAgentNetworkType._(
      validatedValue: value,
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
