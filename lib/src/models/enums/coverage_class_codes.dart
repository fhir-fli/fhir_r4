// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes Coverage Class codes.
class CoverageClassCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CoverageClassCodes._(super.value, [super.element]);

  /// Factory constructor to create [CoverageClassCodes] from JSON.
  factory CoverageClassCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CoverageClassCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CoverageClassCodes cannot be constructed from JSON.',
      );
    }
    return CoverageClassCodes._(value, element);
  }

  /// group
  static final CoverageClassCodes group = CoverageClassCodes._(
    'group',
  );

  /// subgroup
  static final CoverageClassCodes subgroup = CoverageClassCodes._(
    'subgroup',
  );

  /// plan
  static final CoverageClassCodes plan = CoverageClassCodes._(
    'plan',
  );

  /// subplan
  static final CoverageClassCodes subplan = CoverageClassCodes._(
    'subplan',
  );

  /// class_
  static final CoverageClassCodes class_ = CoverageClassCodes._(
    'class',
  );

  /// subclass
  static final CoverageClassCodes subclass = CoverageClassCodes._(
    'subclass',
  );

  /// sequence
  static final CoverageClassCodes sequence = CoverageClassCodes._(
    'sequence',
  );

  /// rxbin
  static final CoverageClassCodes rxbin = CoverageClassCodes._(
    'rxbin',
  );

  /// rxpcn
  static final CoverageClassCodes rxpcn = CoverageClassCodes._(
    'rxpcn',
  );

  /// rxid
  static final CoverageClassCodes rxid = CoverageClassCodes._(
    'rxid',
  );

  /// rxgroup
  static final CoverageClassCodes rxgroup = CoverageClassCodes._(
    'rxgroup',
  );

  /// For instances where an Element is present but not value

  static final CoverageClassCodes elementOnly = CoverageClassCodes._('');

  /// List of all enum-like values
  static final List<CoverageClassCodes> values = [
    group,
    subgroup,
    plan,
    subplan,
    class_,
    subclass,
    sequence,
    rxbin,
    rxpcn,
    rxid,
    rxgroup,
  ];

  /// Clones the current instance
  @override
  CoverageClassCodes clone() => CoverageClassCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CoverageClassCodes withElement(Element? newElement) {
    return CoverageClassCodes._(value, newElement);
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
  CoverageClassCodes copyWith({
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
    return CoverageClassCodes._(
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
