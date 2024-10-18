// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Lifecycle status of the questionnaire response.
enum QuestionnaireResponseStatus {
  /// Display: In Progress
  /// Definition: This QuestionnaireResponse has been partially filled out with answers but changes or additions are still expected to be made to it.
  in_progress('in-progress'),

  /// Display: Completed
  /// Definition: This QuestionnaireResponse has been filled out with answers and the current content is regarded as definitive.
  completed('completed'),

  /// Display: Amended
  /// Definition: This QuestionnaireResponse has been filled out with answers, then marked as complete, yet changes or additions have been made to it afterwards.
  amended('amended'),

  /// Display: Entered in Error
  /// Definition: This QuestionnaireResponse was entered in error and voided.
  entered_in_error('entered-in-error'),

  /// Display: Stopped
  /// Definition: This QuestionnaireResponse has been partially filled out with answers but has been abandoned. It is unknown whether changes or additions are expected to be made to it.
  stopped('stopped'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const QuestionnaireResponseStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [QuestionnaireResponseStatus] instances.
  static QuestionnaireResponseStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireResponseStatus.elementOnly.withElement(element);
    }
    return QuestionnaireResponseStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  QuestionnaireResponseStatus withElement(Element? newElement) {
    return QuestionnaireResponseStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
