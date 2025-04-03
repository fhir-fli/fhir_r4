// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indicator for type of action performed during the event that generated
/// the event.
class AuditEventActionBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AuditEventActionBuilder._({
    required super.valueString,
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
  factory AuditEventActionBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return AuditEventActionBuilder._(
      valueString: valueString,
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

  /// Create empty [AuditEventActionBuilder] with element only
  factory AuditEventActionBuilder.empty() =>
      AuditEventActionBuilder._(valueString: '');

  /// Factory constructor to create [AuditEventActionBuilder]
  /// from JSON.
  factory AuditEventActionBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventActionBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventActionBuilder cannot be constructed from JSON.',
      );
    }
    return AuditEventActionBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// C
  static AuditEventActionBuilder C = AuditEventActionBuilder._(
    valueString: 'C',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-action'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Create'.toFhirStringBuilder,
  );

  /// R
  static AuditEventActionBuilder R = AuditEventActionBuilder._(
    valueString: 'R',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-action'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Read/View/Print'.toFhirStringBuilder,
  );

  /// U
  static AuditEventActionBuilder U = AuditEventActionBuilder._(
    valueString: 'U',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-action'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Update'.toFhirStringBuilder,
  );

  /// D
  static AuditEventActionBuilder D = AuditEventActionBuilder._(
    valueString: 'D',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-action'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Delete'.toFhirStringBuilder,
  );

  /// E
  static AuditEventActionBuilder E = AuditEventActionBuilder._(
    valueString: 'E',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-action'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Execute'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static AuditEventActionBuilder elementOnly =
      AuditEventActionBuilder._(valueString: '');

  /// List of all enum-like values
  static List<AuditEventActionBuilder> values = [
    C,
    R,
    U,
    D,
    E,
  ];

  /// Clones the current instance
  @override
  AuditEventActionBuilder clone() => AuditEventActionBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  AuditEventActionBuilder withElement(ElementBuilder? newElement) {
    return AuditEventActionBuilder._(
        valueString: valueString, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  AuditEventActionBuilder copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for AuditEventAction: $newValue');
    }
    return AuditEventActionBuilder._(
      valueString: newValue ?? valueString,
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
