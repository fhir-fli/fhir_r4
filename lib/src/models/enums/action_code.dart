// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Provides examples of actions to be performed.
class ActionCode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ActionCode._(super.value, [super.element]);

  /// Factory constructor to create [ActionCode] from JSON.
  factory ActionCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionCode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionCode cannot be constructed from JSON.',
      );
    }
    return ActionCode._(value, element);
  }

  /// send_message
  static final ActionCode send_message = ActionCode._(
    'send-message',
  );

  /// collect_information
  static final ActionCode collect_information = ActionCode._(
    'collect-information',
  );

  /// prescribe_medication
  static final ActionCode prescribe_medication = ActionCode._(
    'prescribe-medication',
  );

  /// recommend_immunization
  static final ActionCode recommend_immunization = ActionCode._(
    'recommend-immunization',
  );

  /// order_service
  static final ActionCode order_service = ActionCode._(
    'order-service',
  );

  /// propose_diagnosis
  static final ActionCode propose_diagnosis = ActionCode._(
    'propose-diagnosis',
  );

  /// record_detected_issue
  static final ActionCode record_detected_issue = ActionCode._(
    'record-detected-issue',
  );

  /// record_inference
  static final ActionCode record_inference = ActionCode._(
    'record-inference',
  );

  /// report_flag
  static final ActionCode report_flag = ActionCode._(
    'report-flag',
  );

  /// For instances where an Element is present but not value

  static final ActionCode elementOnly = ActionCode._('');

  /// List of all enum-like values
  static final List<ActionCode> values = [
    send_message,
    collect_information,
    prescribe_medication,
    recommend_immunization,
    order_service,
    propose_diagnosis,
    record_detected_issue,
    record_inference,
    report_flag,
  ];

  /// Clones the current instance
  @override
  ActionCode clone() => ActionCode._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ActionCode withElement(Element? newElement) {
    return ActionCode._(value, newElement);
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
  ActionCode copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ActionCode._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
