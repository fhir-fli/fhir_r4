// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes that reflect the current state of a clinical impression within
/// its overall lifecycle.
class ClinicalImpressionStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ClinicalImpressionStatus._({
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
  factory ClinicalImpressionStatus(
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
    return ClinicalImpressionStatus._(
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

  /// Create empty [ClinicalImpressionStatus] with element only
  factory ClinicalImpressionStatus.empty() =>
      ClinicalImpressionStatus._(valueString: '');

  /// Factory constructor to create [ClinicalImpressionStatus] from JSON.
  factory ClinicalImpressionStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalImpressionStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ClinicalImpressionStatus cannot be constructed from JSON.',
      );
    }
    return ClinicalImpressionStatus._(
      valueString: value,
      element: element,
    );
  }

  /// preparation
  static final ClinicalImpressionStatus preparation =
      ClinicalImpressionStatus._(
    valueString: 'preparation',
    system: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Preparation'.toFhirString,
  );

  /// in_progress
  static final ClinicalImpressionStatus in_progress =
      ClinicalImpressionStatus._(
    valueString: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Progress'.toFhirString,
  );

  /// not_done
  static final ClinicalImpressionStatus not_done = ClinicalImpressionStatus._(
    valueString: 'not-done',
    system: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Done'.toFhirString,
  );

  /// on_hold
  static final ClinicalImpressionStatus on_hold = ClinicalImpressionStatus._(
    valueString: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// stopped
  static final ClinicalImpressionStatus stopped = ClinicalImpressionStatus._(
    valueString: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Stopped'.toFhirString,
  );

  /// completed
  static final ClinicalImpressionStatus completed = ClinicalImpressionStatus._(
    valueString: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// entered_in_error
  static final ClinicalImpressionStatus entered_in_error =
      ClinicalImpressionStatus._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// unknown
  static final ClinicalImpressionStatus unknown = ClinicalImpressionStatus._(
    valueString: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ClinicalImpressionStatus elementOnly =
      ClinicalImpressionStatus._(valueString: '');

  /// List of all enum-like values
  static final List<ClinicalImpressionStatus> values = [
    preparation,
    in_progress,
    not_done,
    on_hold,
    stopped,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  ClinicalImpressionStatus clone() => ClinicalImpressionStatus._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ClinicalImpressionStatus withElement(Element? newElement) {
    return ClinicalImpressionStatus._(
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
  ClinicalImpressionStatus copyWith({
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
          'Invalid input for ClinicalImpressionStatus: $newValue');
    }
    return ClinicalImpressionStatus._(
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
