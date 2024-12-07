// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes describing the purpose or content of the communication.
class CommunicationTopic extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CommunicationTopic._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [CommunicationTopic] from JSON.
  factory CommunicationTopic.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommunicationTopic.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CommunicationTopic cannot be constructed from JSON.',
      );
    }
    return CommunicationTopic._(value: value, element: element);
  }

  /// prescription_refill_request
  static final CommunicationTopic prescription_refill_request =
      CommunicationTopic._(
    value: 'prescription-refill-request',
  );

  /// progress_update
  static final CommunicationTopic progress_update = CommunicationTopic._(
    value: 'progress-update',
  );

  /// report_labs
  static final CommunicationTopic report_labs = CommunicationTopic._(
    value: 'report-labs',
  );

  /// appointment_reminder
  static final CommunicationTopic appointment_reminder = CommunicationTopic._(
    value: 'appointment-reminder',
  );

  /// phone_consult
  static final CommunicationTopic phone_consult = CommunicationTopic._(
    value: 'phone-consult',
  );

  /// summary_report
  static final CommunicationTopic summary_report = CommunicationTopic._(
    value: 'summary-report',
  );

  /// For instances where an Element is present but not value

  static final CommunicationTopic elementOnly = CommunicationTopic._(value: '');

  /// List of all enum-like values
  static final List<CommunicationTopic> values = [
    prescription_refill_request,
    progress_update,
    report_labs,
    appointment_reminder,
    phone_consult,
    summary_report,
  ];

  /// Clones the current instance
  @override
  CommunicationTopic clone() => CommunicationTopic._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CommunicationTopic withElement(Element? newElement) {
    return CommunicationTopic._(value: value, element: newElement);
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
  CommunicationTopic copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return CommunicationTopic._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
