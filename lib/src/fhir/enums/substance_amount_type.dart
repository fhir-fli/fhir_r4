// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The relationship between two substance types.
class SubstanceAmountType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SubstanceAmountType._(super.value, [super.element]);

  /// Factory constructor to create [SubstanceAmountType] from JSON.
  factory SubstanceAmountType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceAmountType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubstanceAmountType cannot be constructed from JSON.',
      );
    }
    return SubstanceAmountType._(value, element);
  }

  /// Average
  static final SubstanceAmountType Average = SubstanceAmountType._(
    'Average',
  );

  /// Approximately
  static final SubstanceAmountType Approximately = SubstanceAmountType._(
    'Approximately',
  );

  /// LessThan
  static final SubstanceAmountType LessThan = SubstanceAmountType._(
    'LessThan',
  );

  /// MoreThan
  static final SubstanceAmountType MoreThan = SubstanceAmountType._(
    'MoreThan',
  );

  /// For instances where an Element is present but not value

  static final SubstanceAmountType elementOnly = SubstanceAmountType._('');

  /// List of all enum-like values
  static final List<SubstanceAmountType> values = [
    Average,
    Approximately,
    LessThan,
    MoreThan,
  ];

  /// Clones the current instance
  @override
  SubstanceAmountType clone() => SubstanceAmountType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SubstanceAmountType setElement(
    String name,
    dynamic elementValue,
  ) {
    return SubstanceAmountType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SubstanceAmountType withElement(Element? newElement) {
    return SubstanceAmountType._(value, newElement);
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
  SubstanceAmountType copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return SubstanceAmountType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
