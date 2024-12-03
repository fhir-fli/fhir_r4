// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Benefit Term codes.
class BenefitTermCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  BenefitTermCodes._(super.value, [super.element]);

  /// Factory constructor to create [BenefitTermCodes] from JSON.
  factory BenefitTermCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BenefitTermCodes.elementOnly.withElement(element);
    }
    return BenefitTermCodes._(value, element);
  }

  /// annual
  static final BenefitTermCodes annual = BenefitTermCodes._(
    'annual',
  );

  /// day
  static final BenefitTermCodes day = BenefitTermCodes._(
    'day',
  );

  /// lifetime
  static final BenefitTermCodes lifetime = BenefitTermCodes._(
    'lifetime',
  );

  /// For instances where an Element is present but not value

  static final BenefitTermCodes elementOnly = BenefitTermCodes._('');

  /// List of all enum-like values
  static final List<BenefitTermCodes> values = [
    annual,
    day,
    lifetime,
  ];

  /// Clones the current instance
  @override
  BenefitTermCodes clone() =>
      BenefitTermCodes._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  BenefitTermCodes setElement(String name, dynamic elementValue) {
    return BenefitTermCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  BenefitTermCodes withElement(Element? newElement) {
    return BenefitTermCodes._(value, newElement);
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
  BenefitTermCodes copyWith({
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
    return BenefitTermCodes._(
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
