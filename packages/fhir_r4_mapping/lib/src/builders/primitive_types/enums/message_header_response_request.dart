part of '../primitive_types.dart';

/// Actual enum for MessageHeaderResponseRequest
enum MessageHeaderResponseRequestBuilderEnum {
  /// always
  always,

  /// on-error
  onError,

  /// never
  never,

  /// on-success
  onSuccess,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MessageHeaderResponseRequestBuilderEnum.always:
        return 'always';
      case MessageHeaderResponseRequestBuilderEnum.onError:
        return 'on-error';
      case MessageHeaderResponseRequestBuilderEnum.never:
        return 'never';
      case MessageHeaderResponseRequestBuilderEnum.onSuccess:
        return 'on-success';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MessageHeaderResponseRequestBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return MessageHeaderResponseRequestBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MessageHeaderResponseRequestBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'always':
        return MessageHeaderResponseRequestBuilderEnum.always;
      case 'on-error':
        return MessageHeaderResponseRequestBuilderEnum.onError;
      case 'never':
        return MessageHeaderResponseRequestBuilderEnum.never;
      case 'on-success':
        return MessageHeaderResponseRequestBuilderEnum.onSuccess;
    }
    return null;
  }
}

/// HL7-defined table of codes which identify conditions under which
/// acknowledgments are required to be returned in response to a message.
class MessageHeaderResponseRequestBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MessageHeaderResponseRequestBuilder._({
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
  factory MessageHeaderResponseRequestBuilder(
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
    final valueEnum = MessageHeaderResponseRequestBuilderEnum.fromString(
      valueString,
    );
    return MessageHeaderResponseRequestBuilder._(
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

  /// Create empty [MessageHeaderResponseRequestBuilder]
  /// with element only
  factory MessageHeaderResponseRequestBuilder.empty() =>
      MessageHeaderResponseRequestBuilder._(valueString: null);

  /// Factory constructor to create
  /// [MessageHeaderResponseRequestBuilder] from JSON.
  factory MessageHeaderResponseRequestBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageHeaderResponseRequestBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MessageHeaderResponseRequestBuilder cannot be constructed from JSON.',
      );
    }
    return MessageHeaderResponseRequestBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for MessageHeaderResponseRequestBuilder
  final MessageHeaderResponseRequestBuilderEnum? valueEnum;

  /// always
  static MessageHeaderResponseRequestBuilder always =
      MessageHeaderResponseRequestBuilder._(
    valueString: 'always',
    valueEnum: MessageHeaderResponseRequestBuilderEnum.always,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/messageheader-response-request',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Always',
    ),
  );

  /// on_error
  static MessageHeaderResponseRequestBuilder onError =
      MessageHeaderResponseRequestBuilder._(
    valueString: 'on-error',
    valueEnum: MessageHeaderResponseRequestBuilderEnum.onError,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/messageheader-response-request',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Error/reject conditions only',
    ),
  );

  /// never
  static MessageHeaderResponseRequestBuilder never =
      MessageHeaderResponseRequestBuilder._(
    valueString: 'never',
    valueEnum: MessageHeaderResponseRequestBuilderEnum.never,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/messageheader-response-request',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Never',
    ),
  );

  /// on_success
  static MessageHeaderResponseRequestBuilder onSuccess =
      MessageHeaderResponseRequestBuilder._(
    valueString: 'on-success',
    valueEnum: MessageHeaderResponseRequestBuilderEnum.onSuccess,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/messageheader-response-request',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Successful completion only',
    ),
  );

  /// For instances where an Element is present but not value
  static MessageHeaderResponseRequestBuilder elementOnly =
      MessageHeaderResponseRequestBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<MessageHeaderResponseRequestBuilder> values = [
    always,
    onError,
    never,
    onSuccess,
  ];

  /// Returns the enum value with an element attached
  MessageHeaderResponseRequestBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return MessageHeaderResponseRequestBuilder._(
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
