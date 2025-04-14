// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for MessageheaderResponseRequest
enum MessageheaderResponseRequestBuilderEnum {
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
      case MessageheaderResponseRequestBuilderEnum.always:
        return 'always';
      case MessageheaderResponseRequestBuilderEnum.onError:
        return 'on-error';
      case MessageheaderResponseRequestBuilderEnum.never:
        return 'never';
      case MessageheaderResponseRequestBuilderEnum.onSuccess:
        return 'on-success';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MessageheaderResponseRequestBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return MessageheaderResponseRequestBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MessageheaderResponseRequestBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'always':
        return MessageheaderResponseRequestBuilderEnum.always;
      case 'on-error':
        return MessageheaderResponseRequestBuilderEnum.onError;
      case 'never':
        return MessageheaderResponseRequestBuilderEnum.never;
      case 'on-success':
        return MessageheaderResponseRequestBuilderEnum.onSuccess;
    }
    return null;
  }
}

/// HL7-defined table of codes which identify conditions under which
/// acknowledgments are required to be returned in response to a message.
class MessageheaderResponseRequestBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MessageheaderResponseRequestBuilder._({
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
  factory MessageheaderResponseRequestBuilder(
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
    final valueEnum = MessageheaderResponseRequestBuilderEnum.fromString(
      valueString,
    );
    return MessageheaderResponseRequestBuilder._(
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

  /// Create empty [MessageheaderResponseRequestBuilder]
  /// with element only
  factory MessageheaderResponseRequestBuilder.empty() =>
      MessageheaderResponseRequestBuilder._(valueString: null);

  /// Factory constructor to create
  /// [MessageheaderResponseRequestBuilder] from JSON.
  factory MessageheaderResponseRequestBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageheaderResponseRequestBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MessageheaderResponseRequestBuilder cannot be constructed from JSON.',
      );
    }
    return MessageheaderResponseRequestBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for MessageheaderResponseRequestBuilder
  final MessageheaderResponseRequestBuilderEnum? valueEnum;

  /// always
  static MessageheaderResponseRequestBuilder always =
      MessageheaderResponseRequestBuilder._(
    valueString: 'always',
    valueEnum: MessageheaderResponseRequestBuilderEnum.always,
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
  static MessageheaderResponseRequestBuilder onError =
      MessageheaderResponseRequestBuilder._(
    valueString: 'on-error',
    valueEnum: MessageheaderResponseRequestBuilderEnum.onError,
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
  static MessageheaderResponseRequestBuilder never =
      MessageheaderResponseRequestBuilder._(
    valueString: 'never',
    valueEnum: MessageheaderResponseRequestBuilderEnum.never,
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
  static MessageheaderResponseRequestBuilder onSuccess =
      MessageheaderResponseRequestBuilder._(
    valueString: 'on-success',
    valueEnum: MessageheaderResponseRequestBuilderEnum.onSuccess,
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
  static MessageheaderResponseRequestBuilder elementOnly =
      MessageheaderResponseRequestBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<MessageheaderResponseRequestBuilder> values = [
    always,
    onError,
    never,
    onSuccess,
  ];

  /// Returns the enum value with an element attached
  MessageheaderResponseRequestBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return MessageheaderResponseRequestBuilder._(
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
