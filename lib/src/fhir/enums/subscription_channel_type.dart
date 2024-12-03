// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of method used to execute a subscription.
class SubscriptionChannelType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SubscriptionChannelType._(super.value, [super.element]);

  /// Factory constructor to create [SubscriptionChannelType] from JSON.
  factory SubscriptionChannelType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionChannelType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'SubscriptionChannelType cannot be constructed from JSON.');
    }
    return SubscriptionChannelType._(value, element);
  }

  /// rest_hook
  static final SubscriptionChannelType rest_hook = SubscriptionChannelType._(
    'rest-hook',
  );

  /// websocket
  static final SubscriptionChannelType websocket = SubscriptionChannelType._(
    'websocket',
  );

  /// email
  static final SubscriptionChannelType email = SubscriptionChannelType._(
    'email',
  );

  /// sms
  static final SubscriptionChannelType sms = SubscriptionChannelType._(
    'sms',
  );

  /// message
  static final SubscriptionChannelType message = SubscriptionChannelType._(
    'message',
  );

  /// For instances where an Element is present but not value

  static final SubscriptionChannelType elementOnly =
      SubscriptionChannelType._('');

  /// List of all enum-like values
  static final List<SubscriptionChannelType> values = [
    rest_hook,
    websocket,
    email,
    sms,
    message,
  ];

  /// Clones the current instance
  @override
  SubscriptionChannelType clone() => SubscriptionChannelType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SubscriptionChannelType setElement(
    String name,
    dynamic elementValue,
  ) {
    return SubscriptionChannelType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SubscriptionChannelType withElement(Element? newElement) {
    return SubscriptionChannelType._(value, newElement);
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
  SubscriptionChannelType copyWith({
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
    return SubscriptionChannelType._(
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
