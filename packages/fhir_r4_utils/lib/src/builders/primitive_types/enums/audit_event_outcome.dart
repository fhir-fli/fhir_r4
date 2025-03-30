// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indicates whether the event succeeded or failed.
class AuditEventOutcomeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AuditEventOutcomeBuilder._({
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
  factory AuditEventOutcomeBuilder(
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
    return AuditEventOutcomeBuilder._(
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

  /// Create empty [AuditEventOutcomeBuilder] with element only
  factory AuditEventOutcomeBuilder.empty() =>
      AuditEventOutcomeBuilder._(validatedValue: '');

  /// Factory constructor to create [AuditEventOutcomeBuilder]
  /// from JSON.
  factory AuditEventOutcomeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventOutcomeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventOutcomeBuilder cannot be constructed from JSON.',
      );
    }
    return AuditEventOutcomeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// value0
  static AuditEventOutcomeBuilder value0 = AuditEventOutcomeBuilder._(
    validatedValue: '0',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-outcome'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Success'.toFhirStringBuilder,
  );

  /// value4
  static AuditEventOutcomeBuilder value4 = AuditEventOutcomeBuilder._(
    validatedValue: '4',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-outcome'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Minor failure'.toFhirStringBuilder,
  );

  /// value8
  static AuditEventOutcomeBuilder value8 = AuditEventOutcomeBuilder._(
    validatedValue: '8',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-outcome'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Serious failure'.toFhirStringBuilder,
  );

  /// value12
  static AuditEventOutcomeBuilder value12 = AuditEventOutcomeBuilder._(
    validatedValue: '12',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-outcome'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Major failure'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static AuditEventOutcomeBuilder elementOnly =
      AuditEventOutcomeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<AuditEventOutcomeBuilder> values = [
    value0,
    value4,
    value8,
    value12,
  ];

  /// Clones the current instance
  @override
  AuditEventOutcomeBuilder clone() => AuditEventOutcomeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  AuditEventOutcomeBuilder withElement(ElementBuilder? newElement) {
    return AuditEventOutcomeBuilder._(
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
  AuditEventOutcomeBuilder copyWith({
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
    return AuditEventOutcomeBuilder._(
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
