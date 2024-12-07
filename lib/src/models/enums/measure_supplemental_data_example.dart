// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Supplemental data in a population for measuring purposes.
class MeasureSupplementalDataExample extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MeasureSupplementalDataExample._(super.value, [super.element]);

  /// Factory constructor to create [MeasureSupplementalDataExample] from JSON.
  factory MeasureSupplementalDataExample.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureSupplementalDataExample.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MeasureSupplementalDataExample cannot be constructed from JSON.',
      );
    }
    return MeasureSupplementalDataExample._(value, element);
  }

  /// age
  static final MeasureSupplementalDataExample age =
      MeasureSupplementalDataExample._(
    'age',
  );

  /// gender
  static final MeasureSupplementalDataExample gender =
      MeasureSupplementalDataExample._(
    'gender',
  );

  /// ethnicity
  static final MeasureSupplementalDataExample ethnicity =
      MeasureSupplementalDataExample._(
    'ethnicity',
  );

  /// payer
  static final MeasureSupplementalDataExample payer =
      MeasureSupplementalDataExample._(
    'payer',
  );

  /// For instances where an Element is present but not value

  static final MeasureSupplementalDataExample elementOnly =
      MeasureSupplementalDataExample._('');

  /// List of all enum-like values
  static final List<MeasureSupplementalDataExample> values = [
    age,
    gender,
    ethnicity,
    payer,
  ];

  /// Clones the current instance
  @override
  MeasureSupplementalDataExample clone() => MeasureSupplementalDataExample._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MeasureSupplementalDataExample withElement(Element? newElement) {
    return MeasureSupplementalDataExample._(value, newElement);
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
  MeasureSupplementalDataExample copyWith({
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
    return MeasureSupplementalDataExample._(
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
