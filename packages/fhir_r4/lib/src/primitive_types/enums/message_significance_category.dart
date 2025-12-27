part of '../primitive_types.dart';

/// Actual enum for MessageSignificanceCategory
enum MessageSignificanceCategoryEnum {
  /// consequence
  consequence,

  /// currency
  currency,

  /// notification
  notification,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MessageSignificanceCategoryEnum.consequence:
        return 'consequence';
      case MessageSignificanceCategoryEnum.currency:
        return 'currency';
      case MessageSignificanceCategoryEnum.notification:
        return 'notification';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MessageSignificanceCategoryEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return MessageSignificanceCategoryEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MessageSignificanceCategoryEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'consequence':
        return MessageSignificanceCategoryEnum.consequence;
      case 'currency':
        return MessageSignificanceCategoryEnum.currency;
      case 'notification':
        return MessageSignificanceCategoryEnum.notification;
    }
    return null;
  }
}

/// The impact of the content of a message.
class MessageSignificanceCategory extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const MessageSignificanceCategory._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory MessageSignificanceCategory(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = MessageSignificanceCategoryEnum.fromString(valueString);
    return MessageSignificanceCategory._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [MessageSignificanceCategory]
  /// from JSON.
  factory MessageSignificanceCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = MessageSignificanceCategoryEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageSignificanceCategory._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MessageSignificanceCategory cannot be constructed from JSON.',
      );
    }
    return MessageSignificanceCategory._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for MessageSignificanceCategory
  final MessageSignificanceCategoryEnum? valueEnum;

  /// consequence
  static const MessageSignificanceCategory consequence =
      MessageSignificanceCategory._(
    valueString: 'consequence',
    valueEnum: MessageSignificanceCategoryEnum.consequence,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/message-significance-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Consequence',
    ),
  );

  /// currency
  static const MessageSignificanceCategory currency =
      MessageSignificanceCategory._(
    valueString: 'currency',
    valueEnum: MessageSignificanceCategoryEnum.currency,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/message-significance-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Currency',
    ),
  );

  /// notification
  static const MessageSignificanceCategory notification =
      MessageSignificanceCategory._(
    valueString: 'notification',
    valueEnum: MessageSignificanceCategoryEnum.notification,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/message-significance-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Notification',
    ),
  );

  /// List of all enum-like values
  static final List<MessageSignificanceCategory> values = [
    consequence,
    currency,
    notification,
  ];

  /// Returns the enum value with an element attached
  MessageSignificanceCategory withElement(Element? newElement) {
    return MessageSignificanceCategory._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  @override
  MessageSignificanceCategory clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  MessageSignificanceCategoryCopyWithImpl<MessageSignificanceCategory>
      get copyWith =>
          MessageSignificanceCategoryCopyWithImpl<MessageSignificanceCategory>(
            this,
            (v) => v as MessageSignificanceCategory,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class MessageSignificanceCategoryCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  MessageSignificanceCategoryCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      MessageSignificanceCategory(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
