// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indicates whether the event succeeded or failed.
class AuditEventOutcome extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  AuditEventOutcome._({
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
  factory AuditEventOutcome(
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
    return AuditEventOutcome._(
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

  /// Create empty [AuditEventOutcome] with element only
  factory AuditEventOutcome.empty() => AuditEventOutcome._(validatedValue: '');

  /// Factory constructor to create [AuditEventOutcome] from JSON.
  factory AuditEventOutcome.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventOutcome.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventOutcome cannot be constructed from JSON.',
      );
    }
    return AuditEventOutcome._(
      validatedValue: value,
      element: element,
    );
  }

  /// value0
  static final AuditEventOutcome value0 = AuditEventOutcome._(
    validatedValue: '0',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-outcome'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Success'.toFhirString,
  );

  /// value4
  static final AuditEventOutcome value4 = AuditEventOutcome._(
    validatedValue: '4',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-outcome'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Minor failure'.toFhirString,
  );

  /// value8
  static final AuditEventOutcome value8 = AuditEventOutcome._(
    validatedValue: '8',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-outcome'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Serious failure'.toFhirString,
  );

  /// value12
  static final AuditEventOutcome value12 = AuditEventOutcome._(
    validatedValue: '12',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-outcome'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Major failure'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final AuditEventOutcome elementOnly =
      AuditEventOutcome._(validatedValue: '');

  /// List of all enum-like values
  static final List<AuditEventOutcome> values = [
    value0,
    value4,
    value8,
    value12,
  ];

  /// Clones the current instance
  @override
  AuditEventOutcome clone() => AuditEventOutcome._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AuditEventOutcome withElement(Element? newElement) {
    return AuditEventOutcome._(
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
  AuditEventOutcome copyWith({
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
    return AuditEventOutcome._(
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
