// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The methods of referral can be used when referring to a specific HealthCareService resource.
class ReferralMethod extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ReferralMethod._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ReferralMethod] from JSON.
  factory ReferralMethod.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferralMethod.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ReferralMethod cannot be constructed from JSON.',
      );
    }
    return ReferralMethod._(value, element: element);
  }

  /// fax
  static final ReferralMethod fax = ReferralMethod._(
    'fax',
  );

  /// phone
  static final ReferralMethod phone = ReferralMethod._(
    'phone',
  );

  /// elec
  static final ReferralMethod elec = ReferralMethod._(
    'elec',
  );

  /// semail
  static final ReferralMethod semail = ReferralMethod._(
    'semail',
  );

  /// mail
  static final ReferralMethod mail = ReferralMethod._(
    'mail',
  );

  /// For instances where an Element is present but not value

  static final ReferralMethod elementOnly = ReferralMethod._('');

  /// List of all enum-like values
  static final List<ReferralMethod> values = [
    fax,
    phone,
    elec,
    semail,
    mail,
  ];

  /// Clones the current instance
  @override
  ReferralMethod clone() => ReferralMethod._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ReferralMethod withElement(Element? newElement) {
    return ReferralMethod._(
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
  ReferralMethod copyWith({
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
    return ReferralMethod._(
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
