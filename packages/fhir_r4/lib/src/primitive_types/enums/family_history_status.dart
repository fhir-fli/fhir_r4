// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A code that identifies the status of the family history record.
class FamilyHistoryStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  FamilyHistoryStatus._({
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
  factory FamilyHistoryStatus(
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
    return FamilyHistoryStatus._(
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

  /// Create empty [FamilyHistoryStatus] with element only
  factory FamilyHistoryStatus.empty() =>
      FamilyHistoryStatus._(validatedValue: '');

  /// Factory constructor to create [FamilyHistoryStatus] from JSON.
  factory FamilyHistoryStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FamilyHistoryStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FamilyHistoryStatus cannot be constructed from JSON.',
      );
    }
    return FamilyHistoryStatus._(
      validatedValue: value,
      element: element,
    );
  }

  /// partial
  static final FamilyHistoryStatus partial = FamilyHistoryStatus._(
    validatedValue: 'partial',
    system: 'http://hl7.org/fhir/ValueSet/history-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Partial'.toFhirString,
  );

  /// completed
  static final FamilyHistoryStatus completed = FamilyHistoryStatus._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/history-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// entered_in_error
  static final FamilyHistoryStatus entered_in_error = FamilyHistoryStatus._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/history-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// health_unknown
  static final FamilyHistoryStatus health_unknown = FamilyHistoryStatus._(
    validatedValue: 'health-unknown',
    system: 'http://hl7.org/fhir/ValueSet/history-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Health Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final FamilyHistoryStatus elementOnly =
      FamilyHistoryStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<FamilyHistoryStatus> values = [
    partial,
    completed,
    entered_in_error,
    health_unknown,
  ];

  /// Clones the current instance
  @override
  FamilyHistoryStatus clone() => FamilyHistoryStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FamilyHistoryStatus withElement(Element? newElement) {
    return FamilyHistoryStatus._(validatedValue: value, element: newElement);
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
  FamilyHistoryStatus copyWith({
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
    return FamilyHistoryStatus._(
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
