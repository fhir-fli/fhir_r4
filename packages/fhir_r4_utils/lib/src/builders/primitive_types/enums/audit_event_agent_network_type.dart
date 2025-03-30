// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of network access point of this agent in the audit event.
class AuditEventAgentNetworkTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AuditEventAgentNetworkTypeBuilder._({
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
  factory AuditEventAgentNetworkTypeBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return AuditEventAgentNetworkTypeBuilder._(
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

  /// Create empty [AuditEventAgentNetworkTypeBuilder] with element only
  factory AuditEventAgentNetworkTypeBuilder.empty() =>
      AuditEventAgentNetworkTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [AuditEventAgentNetworkTypeBuilder]
  /// from JSON.
  factory AuditEventAgentNetworkTypeBuilder.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventAgentNetworkTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventAgentNetworkTypeBuilder cannot be constructed from JSON.',
      );
    }
    return AuditEventAgentNetworkTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// value1
  static AuditEventAgentNetworkTypeBuilder value1 =
      AuditEventAgentNetworkTypeBuilder._(
    validatedValue: '1',
    system: 'http://hl7.org/fhir/ValueSet/network-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Machine Name'.toFhirStringBuilder,
  );

  /// value2
  static AuditEventAgentNetworkTypeBuilder value2 =
      AuditEventAgentNetworkTypeBuilder._(
    validatedValue: '2',
    system: 'http://hl7.org/fhir/ValueSet/network-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'IP Address'.toFhirStringBuilder,
  );

  /// value3
  static AuditEventAgentNetworkTypeBuilder value3 =
      AuditEventAgentNetworkTypeBuilder._(
    validatedValue: '3',
    system: 'http://hl7.org/fhir/ValueSet/network-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Telephone Number'.toFhirStringBuilder,
  );

  /// value4
  static AuditEventAgentNetworkTypeBuilder value4 =
      AuditEventAgentNetworkTypeBuilder._(
    validatedValue: '4',
    system: 'http://hl7.org/fhir/ValueSet/network-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Email address'.toFhirStringBuilder,
  );

  /// value5
  static AuditEventAgentNetworkTypeBuilder value5 =
      AuditEventAgentNetworkTypeBuilder._(
    validatedValue: '5',
    system: 'http://hl7.org/fhir/ValueSet/network-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'URI'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static AuditEventAgentNetworkTypeBuilder elementOnly =
      AuditEventAgentNetworkTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<AuditEventAgentNetworkTypeBuilder> values = [
    value1,
    value2,
    value3,
    value4,
    value5,
  ];

  /// Clones the current instance
  @override
  AuditEventAgentNetworkTypeBuilder clone() =>
      AuditEventAgentNetworkTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  AuditEventAgentNetworkTypeBuilder withElement(ElementBuilder? newElement) {
    return AuditEventAgentNetworkTypeBuilder._(
        validatedValue: value, element: newElement);
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
  AuditEventAgentNetworkTypeBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
    return AuditEventAgentNetworkTypeBuilder._(
      validatedValue: newValue ?? value,
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
