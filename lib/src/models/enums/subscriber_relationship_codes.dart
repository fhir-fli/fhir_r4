// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes codes for the relationship between the Subscriber and the Beneficiary (insured/covered party/patient).
class SubscriberRelationshipCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SubscriberRelationshipCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [SubscriberRelationshipCodes] from JSON.
  factory SubscriberRelationshipCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriberRelationshipCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriberRelationshipCodes cannot be constructed from JSON.',
      );
    }
    return SubscriberRelationshipCodes._(value, element: element);
  }

  /// child
  static final SubscriberRelationshipCodes child =
      SubscriberRelationshipCodes._(
    'child',
  );

  /// parent
  static final SubscriberRelationshipCodes parent =
      SubscriberRelationshipCodes._(
    'parent',
  );

  /// spouse
  static final SubscriberRelationshipCodes spouse =
      SubscriberRelationshipCodes._(
    'spouse',
  );

  /// common
  static final SubscriberRelationshipCodes common =
      SubscriberRelationshipCodes._(
    'common',
  );

  /// other
  static final SubscriberRelationshipCodes other =
      SubscriberRelationshipCodes._(
    'other',
  );

  /// self
  static final SubscriberRelationshipCodes self = SubscriberRelationshipCodes._(
    'self',
  );

  /// injured
  static final SubscriberRelationshipCodes injured =
      SubscriberRelationshipCodes._(
    'injured',
  );

  /// For instances where an Element is present but not value

  static final SubscriberRelationshipCodes elementOnly =
      SubscriberRelationshipCodes._('');

  /// List of all enum-like values
  static final List<SubscriberRelationshipCodes> values = [
    child,
    parent,
    spouse,
    common,
    other,
    self,
    injured,
  ];

  /// Clones the current instance
  @override
  SubscriberRelationshipCodes clone() => SubscriberRelationshipCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SubscriberRelationshipCodes withElement(Element? newElement) {
    return SubscriberRelationshipCodes._(value, element: newElement);
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
  SubscriberRelationshipCodes copyWith({
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
    return SubscriberRelationshipCodes._(
      newValue ?? value,
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
