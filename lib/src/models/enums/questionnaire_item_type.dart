// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Distinguishes groups from questions and display text and indicates data type for questions.
class QuestionnaireItemType extends FhirCode {
  // Private constructor for internal use (like enum)
  QuestionnaireItemType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [QuestionnaireItemType] from JSON.
  factory QuestionnaireItemType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireItemType cannot be constructed from JSON.',
      );
    }
    return QuestionnaireItemType._(
      value,
      element: element,
    );
  }

  /// group
  static final QuestionnaireItemType group = QuestionnaireItemType._(
    'group',
  );

  /// display
  static final QuestionnaireItemType display = QuestionnaireItemType._(
    'display',
  );

  /// question
  static final QuestionnaireItemType question = QuestionnaireItemType._(
    'question',
  );

  /// boolean
  static final QuestionnaireItemType boolean = QuestionnaireItemType._(
    'boolean',
  );

  /// decimal
  static final QuestionnaireItemType decimal = QuestionnaireItemType._(
    'decimal',
  );

  /// integer
  static final QuestionnaireItemType integer = QuestionnaireItemType._(
    'integer',
  );

  /// date
  static final QuestionnaireItemType date = QuestionnaireItemType._(
    'date',
  );

  /// dateTime
  static final QuestionnaireItemType dateTime = QuestionnaireItemType._(
    'dateTime',
  );

  /// time
  static final QuestionnaireItemType time = QuestionnaireItemType._(
    'time',
  );

  /// string
  static final QuestionnaireItemType string = QuestionnaireItemType._(
    'string',
  );

  /// text
  static final QuestionnaireItemType text = QuestionnaireItemType._(
    'text',
  );

  /// url
  static final QuestionnaireItemType url = QuestionnaireItemType._(
    'url',
  );

  /// choice
  static final QuestionnaireItemType choice = QuestionnaireItemType._(
    'choice',
  );

  /// open_choice
  static final QuestionnaireItemType open_choice = QuestionnaireItemType._(
    'open-choice',
  );

  /// attachment
  static final QuestionnaireItemType attachment = QuestionnaireItemType._(
    'attachment',
  );

  /// reference
  static final QuestionnaireItemType reference = QuestionnaireItemType._(
    'reference',
  );

  /// quantity
  static final QuestionnaireItemType quantity = QuestionnaireItemType._(
    'quantity',
  );

  /// For instances where an Element is present but not value

  static final QuestionnaireItemType elementOnly = QuestionnaireItemType._('');

  /// List of all enum-like values
  static final List<QuestionnaireItemType> values = [
    group,
    display,
    question,
    boolean,
    decimal,
    integer,
    date,
    dateTime,
    time,
    string,
    text,
    url,
    choice,
    open_choice,
    attachment,
    reference,
    quantity,
  ];

  /// Clones the current instance
  @override
  QuestionnaireItemType clone() => QuestionnaireItemType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  QuestionnaireItemType withElement(Element? newElement) {
    return QuestionnaireItemType._(
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
  QuestionnaireItemType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return QuestionnaireItemType._(
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
