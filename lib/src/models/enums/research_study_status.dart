// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Codes that convey the current status of the research study.
class ResearchStudyStatus extends FhirCode {
  // Private constructor for internal use (like enum)
  ResearchStudyStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [ResearchStudyStatus] from JSON.
  factory ResearchStudyStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResearchStudyStatus cannot be constructed from JSON.',
      );
    }
    return ResearchStudyStatus._(
      value,
      element: element,
    );
  }

  /// active
  static final ResearchStudyStatus active = ResearchStudyStatus._(
    'active',
  );

  /// administratively_completed
  static final ResearchStudyStatus administratively_completed =
      ResearchStudyStatus._(
    'administratively-completed',
  );

  /// approved
  static final ResearchStudyStatus approved = ResearchStudyStatus._(
    'approved',
  );

  /// closed_to_accrual
  static final ResearchStudyStatus closed_to_accrual = ResearchStudyStatus._(
    'closed-to-accrual',
  );

  /// closed_to_accrual_and_intervention
  static final ResearchStudyStatus closed_to_accrual_and_intervention =
      ResearchStudyStatus._(
    'closed-to-accrual-and-intervention',
  );

  /// completed
  static final ResearchStudyStatus completed = ResearchStudyStatus._(
    'completed',
  );

  /// disapproved
  static final ResearchStudyStatus disapproved = ResearchStudyStatus._(
    'disapproved',
  );

  /// in_review
  static final ResearchStudyStatus in_review = ResearchStudyStatus._(
    'in-review',
  );

  /// temporarily_closed_to_accrual
  static final ResearchStudyStatus temporarily_closed_to_accrual =
      ResearchStudyStatus._(
    'temporarily-closed-to-accrual',
  );

  /// temporarily_closed_to_accrual_and_intervention
  static final ResearchStudyStatus
      temporarily_closed_to_accrual_and_intervention = ResearchStudyStatus._(
    'temporarily-closed-to-accrual-and-intervention',
  );

  /// withdrawn
  static final ResearchStudyStatus withdrawn = ResearchStudyStatus._(
    'withdrawn',
  );

  /// For instances where an Element is present but not value

  static final ResearchStudyStatus elementOnly = ResearchStudyStatus._('');

  /// List of all enum-like values
  static final List<ResearchStudyStatus> values = [
    active,
    administratively_completed,
    approved,
    closed_to_accrual,
    closed_to_accrual_and_intervention,
    completed,
    disapproved,
    in_review,
    temporarily_closed_to_accrual,
    temporarily_closed_to_accrual_and_intervention,
    withdrawn,
  ];

  /// Clones the current instance
  @override
  ResearchStudyStatus clone() => ResearchStudyStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ResearchStudyStatus withElement(Element? newElement) {
    return ResearchStudyStatus._(
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
  ResearchStudyStatus copyWith({
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
    return ResearchStudyStatus._(
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
