// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How a capability statement is intended to be used.
class CapabilityStatementKindBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CapabilityStatementKindBuilder._({
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
  factory CapabilityStatementKindBuilder(
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
    return CapabilityStatementKindBuilder._(
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

  /// Create empty [CapabilityStatementKindBuilder] with element only
  factory CapabilityStatementKindBuilder.empty() =>
      CapabilityStatementKindBuilder._(validatedValue: '');

  /// Factory constructor to create [CapabilityStatementKindBuilder]
  /// from JSON.
  factory CapabilityStatementKindBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CapabilityStatementKindBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CapabilityStatementKindBuilder cannot be constructed from JSON.',
      );
    }
    return CapabilityStatementKindBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// instance
  static CapabilityStatementKindBuilder instance =
      CapabilityStatementKindBuilder._(
    validatedValue: 'instance',
    system: 'http://hl7.org/fhir/ValueSet/capability-statement-kind'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Instance'.toFhirStringBuilder,
  );

  /// capability
  static CapabilityStatementKindBuilder capability =
      CapabilityStatementKindBuilder._(
    validatedValue: 'capability',
    system: 'http://hl7.org/fhir/ValueSet/capability-statement-kind'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Capability'.toFhirStringBuilder,
  );

  /// requirements
  static CapabilityStatementKindBuilder requirements =
      CapabilityStatementKindBuilder._(
    validatedValue: 'requirements',
    system: 'http://hl7.org/fhir/ValueSet/capability-statement-kind'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Requirements'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static CapabilityStatementKindBuilder elementOnly =
      CapabilityStatementKindBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<CapabilityStatementKindBuilder> values = [
    instance,
    capability,
    requirements,
  ];

  /// Clones the current instance
  @override
  CapabilityStatementKindBuilder clone() => CapabilityStatementKindBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  CapabilityStatementKindBuilder withElement(ElementBuilder? newElement) {
    return CapabilityStatementKindBuilder._(
        validatedValue: value, element: newElement,);
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
  CapabilityStatementKindBuilder copyWith({
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
    return CapabilityStatementKindBuilder._(
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
