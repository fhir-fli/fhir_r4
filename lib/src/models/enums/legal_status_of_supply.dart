// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The prescription supply types appropriate to a medicinal product
class LegalStatusOfSupply extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  LegalStatusOfSupply._(super.value, [super.element]);

  /// Factory constructor to create [LegalStatusOfSupply] from JSON.
  factory LegalStatusOfSupply.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LegalStatusOfSupply.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LegalStatusOfSupply cannot be constructed from JSON.',
      );
    }
    return LegalStatusOfSupply._(value, element);
  }

  /// value100000072076
  static final LegalStatusOfSupply value100000072076 = LegalStatusOfSupply._(
    '100000072076',
  );

  /// value100000072077
  static final LegalStatusOfSupply value100000072077 = LegalStatusOfSupply._(
    '100000072077',
  );

  /// value100000072078
  static final LegalStatusOfSupply value100000072078 = LegalStatusOfSupply._(
    '100000072078',
  );

  /// value100000072079
  static final LegalStatusOfSupply value100000072079 = LegalStatusOfSupply._(
    '100000072079',
  );

  /// value100000072084
  static final LegalStatusOfSupply value100000072084 = LegalStatusOfSupply._(
    '100000072084',
  );

  /// value100000072085
  static final LegalStatusOfSupply value100000072085 = LegalStatusOfSupply._(
    '100000072085',
  );

  /// value100000072086
  static final LegalStatusOfSupply value100000072086 = LegalStatusOfSupply._(
    '100000072086',
  );

  /// value100000157313
  static final LegalStatusOfSupply value100000157313 = LegalStatusOfSupply._(
    '100000157313',
  );

  /// For instances where an Element is present but not value

  static final LegalStatusOfSupply elementOnly = LegalStatusOfSupply._('');

  /// List of all enum-like values
  static final List<LegalStatusOfSupply> values = [
    value100000072076,
    value100000072077,
    value100000072078,
    value100000072079,
    value100000072084,
    value100000072085,
    value100000072086,
    value100000157313,
  ];

  /// Clones the current instance
  @override
  LegalStatusOfSupply clone() => LegalStatusOfSupply._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  LegalStatusOfSupply withElement(Element? newElement) {
    return LegalStatusOfSupply._(value, newElement);
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
  LegalStatusOfSupply copyWith({
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
    return LegalStatusOfSupply._(
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
