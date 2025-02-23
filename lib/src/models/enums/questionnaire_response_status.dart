// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Lifecycle status of the questionnaire response.
class QuestionnaireResponseStatus extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  QuestionnaireResponseStatus._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [QuestionnaireResponseStatus] with element only
  factory QuestionnaireResponseStatus.empty() =>
      QuestionnaireResponseStatus._('');

  /// Factory constructor to create [QuestionnaireResponseStatus] from JSON.
  factory QuestionnaireResponseStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireResponseStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireResponseStatus cannot be constructed from JSON.',
      );
    }
    return QuestionnaireResponseStatus._(
      value,
      element: element,
    );
  }

  /// in_progress
  static final QuestionnaireResponseStatus in_progress =
      QuestionnaireResponseStatus._(
    'in-progress',
    system:
        'http://hl7.org/fhir/ValueSet/questionnaire-answers-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Progress'.toFhirString,
  );

  /// completed
  static final QuestionnaireResponseStatus completed =
      QuestionnaireResponseStatus._(
    'completed',
    system:
        'http://hl7.org/fhir/ValueSet/questionnaire-answers-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// amended
  static final QuestionnaireResponseStatus amended =
      QuestionnaireResponseStatus._(
    'amended',
    system:
        'http://hl7.org/fhir/ValueSet/questionnaire-answers-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Amended'.toFhirString,
  );

  /// entered_in_error
  static final QuestionnaireResponseStatus entered_in_error =
      QuestionnaireResponseStatus._(
    'entered-in-error',
    system:
        'http://hl7.org/fhir/ValueSet/questionnaire-answers-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// stopped
  static final QuestionnaireResponseStatus stopped =
      QuestionnaireResponseStatus._(
    'stopped',
    system:
        'http://hl7.org/fhir/ValueSet/questionnaire-answers-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Stopped'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final QuestionnaireResponseStatus elementOnly =
      QuestionnaireResponseStatus._('');

  /// List of all enum-like values
  static final List<QuestionnaireResponseStatus> values = [
    in_progress,
    completed,
    amended,
    entered_in_error,
    stopped,
  ];

  /// Clones the current instance
  @override
  QuestionnaireResponseStatus clone() => QuestionnaireResponseStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  QuestionnaireResponseStatus withElement(Element? newElement) {
    return QuestionnaireResponseStatus._(
      value,
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
  QuestionnaireResponseStatus copyWith({
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
    return QuestionnaireResponseStatus._(
      newValue ?? value,
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
