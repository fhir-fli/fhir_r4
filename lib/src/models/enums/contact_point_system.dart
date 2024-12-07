// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Telecommunications form for contact point.
class ContactPointSystem extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ContactPointSystem._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ContactPointSystem] from JSON.
  factory ContactPointSystem.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactPointSystem.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContactPointSystem cannot be constructed from JSON.',
      );
    }
    return ContactPointSystem._(value: value, element: element);
  }

  /// phone
  static final ContactPointSystem phone = ContactPointSystem._(
    value: 'phone',
  );

  /// fax
  static final ContactPointSystem fax = ContactPointSystem._(
    value: 'fax',
  );

  /// email
  static final ContactPointSystem email = ContactPointSystem._(
    value: 'email',
  );

  /// pager
  static final ContactPointSystem pager = ContactPointSystem._(
    value: 'pager',
  );

  /// url
  static final ContactPointSystem url = ContactPointSystem._(
    value: 'url',
  );

  /// sms
  static final ContactPointSystem sms = ContactPointSystem._(
    value: 'sms',
  );

  /// other
  static final ContactPointSystem other = ContactPointSystem._(
    value: 'other',
  );

  /// For instances where an Element is present but not value

  static final ContactPointSystem elementOnly = ContactPointSystem._(value: '');

  /// List of all enum-like values
  static final List<ContactPointSystem> values = [
    phone,
    fax,
    email,
    pager,
    url,
    sms,
    other,
  ];

  /// Clones the current instance
  @override
  ContactPointSystem clone() => ContactPointSystem._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContactPointSystem withElement(Element? newElement) {
    return ContactPointSystem._(value: value, element: newElement);
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
  ContactPointSystem copyWith({
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
    return ContactPointSystem._(
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
