// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for MessageSignificanceCategory
enum MessageSignificanceCategoryBuilderEnum {
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
      case MessageSignificanceCategoryBuilderEnum.consequence:
        return 'consequence';
      case MessageSignificanceCategoryBuilderEnum.currency:
        return 'currency';
      case MessageSignificanceCategoryBuilderEnum.notification:
        return 'notification';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MessageSignificanceCategoryBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return MessageSignificanceCategoryBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MessageSignificanceCategoryBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'consequence':
        return MessageSignificanceCategoryBuilderEnum.consequence;
      case 'currency':
        return MessageSignificanceCategoryBuilderEnum.currency;
      case 'notification':
        return MessageSignificanceCategoryBuilderEnum.notification;
    }
    return null;
  }
}

/// The impact of the content of a message.
class MessageSignificanceCategoryBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MessageSignificanceCategoryBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory MessageSignificanceCategoryBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = MessageSignificanceCategoryBuilderEnum.fromString(
      valueString,
    );
    return MessageSignificanceCategoryBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [MessageSignificanceCategoryBuilder]
  /// with element only
  factory MessageSignificanceCategoryBuilder.empty() =>
      MessageSignificanceCategoryBuilder._(valueString: null);

  /// Factory constructor to create
  /// [MessageSignificanceCategoryBuilder] from JSON.
  factory MessageSignificanceCategoryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageSignificanceCategoryBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MessageSignificanceCategoryBuilder cannot be constructed from JSON.',
      );
    }
    return MessageSignificanceCategoryBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for MessageSignificanceCategoryBuilder
  final MessageSignificanceCategoryBuilderEnum? valueEnum;

  /// consequence
  static MessageSignificanceCategoryBuilder consequence =
      MessageSignificanceCategoryBuilder._(
    valueString: 'consequence',
    valueEnum: MessageSignificanceCategoryBuilderEnum.consequence,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/message-significance-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Consequence',
    ),
  );

  /// currency
  static MessageSignificanceCategoryBuilder currency =
      MessageSignificanceCategoryBuilder._(
    valueString: 'currency',
    valueEnum: MessageSignificanceCategoryBuilderEnum.currency,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/message-significance-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Currency',
    ),
  );

  /// notification
  static MessageSignificanceCategoryBuilder notification =
      MessageSignificanceCategoryBuilder._(
    valueString: 'notification',
    valueEnum: MessageSignificanceCategoryBuilderEnum.notification,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/message-significance-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Notification',
    ),
  );

  /// For instances where an Element is present but not value
  static MessageSignificanceCategoryBuilder elementOnly =
      MessageSignificanceCategoryBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<MessageSignificanceCategoryBuilder> values = [
    consequence,
    currency,
    notification,
  ];

  /// Returns the enum value with an element attached
  MessageSignificanceCategoryBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return MessageSignificanceCategoryBuilder._(
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
}
