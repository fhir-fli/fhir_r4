// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indicator for type of action performed during the event that generated
/// the event.
class AuditEventAction extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  AuditEventAction._({
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
  factory AuditEventAction(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return AuditEventAction._(
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

  /// Create empty [AuditEventAction] with element only
  factory AuditEventAction.empty() => AuditEventAction._(valueString: '');

  /// Factory constructor to create [AuditEventAction]
  /// from JSON.
  factory AuditEventAction.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventAction.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventAction cannot be constructed from JSON.',
      );
    }
    return AuditEventAction._(
      valueString: value,
      element: element,
    );
  }

  /// C
  static final AuditEventAction C = AuditEventAction._(
    valueString: 'C',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-action'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Create'.toFhirString,
  );

  /// R
  static final AuditEventAction R = AuditEventAction._(
    valueString: 'R',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-action'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Read/View/Print'.toFhirString,
  );

  /// U
  static final AuditEventAction U = AuditEventAction._(
    valueString: 'U',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-action'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Update'.toFhirString,
  );

  /// D
  static final AuditEventAction D = AuditEventAction._(
    valueString: 'D',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-action'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Delete'.toFhirString,
  );

  /// E
  static final AuditEventAction E = AuditEventAction._(
    valueString: 'E',
    system: 'http://hl7.org/fhir/ValueSet/audit-event-action'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Execute'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final AuditEventAction elementOnly =
      AuditEventAction._(valueString: '');

  /// List of all enum-like values
  static final List<AuditEventAction> values = [
    C,
    R,
    U,
    D,
    E,
  ];

  /// Clones the current instance
  @override
  AuditEventAction clone() => AuditEventAction._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AuditEventAction withElement(Element? newElement) {
    return AuditEventAction._(
      valueString: valueString,
      element: newElement,
    );
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
  AuditEventAction copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for AuditEventAction: $newValue',
      );
    }
    return AuditEventAction._(
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
