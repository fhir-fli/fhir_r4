// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to express the usage type of an EpisodeOfCare record.
class EpisodeOfCareType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EpisodeOfCareType._(super.value, [super.element]);

  /// Factory constructor to create [EpisodeOfCareType] from JSON.
  factory EpisodeOfCareType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EpisodeOfCareType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EpisodeOfCareType cannot be constructed from JSON.',
      );
    }
    return EpisodeOfCareType._(value, element);
  }

  /// hacc
  static final EpisodeOfCareType hacc = EpisodeOfCareType._(
    'hacc',
  );

  /// pac
  static final EpisodeOfCareType pac = EpisodeOfCareType._(
    'pac',
  );

  /// diab
  static final EpisodeOfCareType diab = EpisodeOfCareType._(
    'diab',
  );

  /// da
  static final EpisodeOfCareType da = EpisodeOfCareType._(
    'da',
  );

  /// cacp
  static final EpisodeOfCareType cacp = EpisodeOfCareType._(
    'cacp',
  );

  /// For instances where an Element is present but not value

  static final EpisodeOfCareType elementOnly = EpisodeOfCareType._('');

  /// List of all enum-like values
  static final List<EpisodeOfCareType> values = [
    hacc,
    pac,
    diab,
    da,
    cacp,
  ];

  /// Clones the current instance
  @override
  EpisodeOfCareType clone() => EpisodeOfCareType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  EpisodeOfCareType setElement(
    String name,
    dynamic elementValue,
  ) {
    return EpisodeOfCareType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  EpisodeOfCareType withElement(Element? newElement) {
    return EpisodeOfCareType._(value, newElement);
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
  EpisodeOfCareType copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return EpisodeOfCareType._(
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
