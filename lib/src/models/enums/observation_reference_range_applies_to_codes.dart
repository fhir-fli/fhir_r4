// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate the particular target population the reference range applies to.
class ObservationReferenceRangeAppliesToCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ObservationReferenceRangeAppliesToCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ObservationReferenceRangeAppliesToCodes] from JSON.
  factory ObservationReferenceRangeAppliesToCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationReferenceRangeAppliesToCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObservationReferenceRangeAppliesToCodes cannot be constructed from JSON.',
      );
    }
    return ObservationReferenceRangeAppliesToCodes._(
        value: value, element: element);
  }

  /// value248153007
  static final ObservationReferenceRangeAppliesToCodes value248153007 =
      ObservationReferenceRangeAppliesToCodes._(
    value: '248153007',
  );

  /// value248152002
  static final ObservationReferenceRangeAppliesToCodes value248152002 =
      ObservationReferenceRangeAppliesToCodes._(
    value: '248152002',
  );

  /// value77386006
  static final ObservationReferenceRangeAppliesToCodes value77386006 =
      ObservationReferenceRangeAppliesToCodes._(
    value: '77386006',
  );

  /// For instances where an Element is present but not value

  static final ObservationReferenceRangeAppliesToCodes elementOnly =
      ObservationReferenceRangeAppliesToCodes._(value: '');

  /// List of all enum-like values
  static final List<ObservationReferenceRangeAppliesToCodes> values = [
    value248153007,
    value248152002,
    value77386006,
  ];

  /// Clones the current instance
  @override
  ObservationReferenceRangeAppliesToCodes clone() =>
      ObservationReferenceRangeAppliesToCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ObservationReferenceRangeAppliesToCodes withElement(Element? newElement) {
    return ObservationReferenceRangeAppliesToCodes._(
        value: value, element: newElement);
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
  ObservationReferenceRangeAppliesToCodes copyWith({
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
    return ObservationReferenceRangeAppliesToCodes._(
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
