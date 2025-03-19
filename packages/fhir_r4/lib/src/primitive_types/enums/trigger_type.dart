// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of trigger.
class TriggerType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  TriggerType._({
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
  factory TriggerType(
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
    return TriggerType._(
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

  /// Create empty [TriggerType] with element only
  factory TriggerType.empty() => TriggerType._(validatedValue: '');

  /// Factory constructor to create [TriggerType] from JSON.
  factory TriggerType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TriggerType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('TriggerType cannot be constructed from JSON.');
    }
    return TriggerType._(validatedValue: value, element: element);
  }

  /// named_event
  static final TriggerType named_event = TriggerType._(
    validatedValue: 'named-event',
    system: 'http://hl7.org/fhir/ValueSet/trigger-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Named Event'.toFhirString,
  );

  /// periodic
  static final TriggerType periodic = TriggerType._(
    validatedValue: 'periodic',
    system: 'http://hl7.org/fhir/ValueSet/trigger-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Periodic'.toFhirString,
  );

  /// data_changed
  static final TriggerType data_changed = TriggerType._(
    validatedValue: 'data-changed',
    system: 'http://hl7.org/fhir/ValueSet/trigger-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Data Changed'.toFhirString,
  );

  /// data_added
  static final TriggerType data_added = TriggerType._(
    validatedValue: 'data-added',
    system: 'http://hl7.org/fhir/ValueSet/trigger-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Data Added'.toFhirString,
  );

  /// data_modified
  static final TriggerType data_modified = TriggerType._(
    validatedValue: 'data-modified',
    system: 'http://hl7.org/fhir/ValueSet/trigger-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Data Updated'.toFhirString,
  );

  /// data_removed
  static final TriggerType data_removed = TriggerType._(
    validatedValue: 'data-removed',
    system: 'http://hl7.org/fhir/ValueSet/trigger-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Data Removed'.toFhirString,
  );

  /// data_accessed
  static final TriggerType data_accessed = TriggerType._(
    validatedValue: 'data-accessed',
    system: 'http://hl7.org/fhir/ValueSet/trigger-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Data Accessed'.toFhirString,
  );

  /// data_access_ended
  static final TriggerType data_access_ended = TriggerType._(
    validatedValue: 'data-access-ended',
    system: 'http://hl7.org/fhir/ValueSet/trigger-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Data Access Ended'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final TriggerType elementOnly = TriggerType._(validatedValue: '');

  /// List of all enum-like values
  static final List<TriggerType> values = [
    named_event,
    periodic,
    data_changed,
    data_added,
    data_modified,
    data_removed,
    data_accessed,
    data_access_ended,
  ];

  /// Clones the current instance
  @override
  TriggerType clone() => TriggerType._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TriggerType withElement(Element? newElement) {
    return TriggerType._(validatedValue: value, element: newElement);
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
  TriggerType copyWith({
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
    return TriggerType._(
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
