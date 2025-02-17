import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [PaymentNotice]
/// This resource provides the status of the payment for goods and services
/// rendered, and the request and response resource references.
class PaymentNotice extends DomainResource {
  /// Primary constructor for
  /// [PaymentNotice]

  const PaymentNotice({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.request,
    this.response,
    required this.created,
    this.provider,
    required this.payment,
    this.paymentDate,
    this.payee,
    required this.recipient,
    required this.amount,
    this.paymentStatus,
  }) : super(
          objectPath: 'PaymentNotice',
          resourceType: R4ResourceType.PaymentNotice,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory PaymentNotice.empty() => PaymentNotice(
        status: FinancialResourceStatusCodes.values.first,
        created: FhirDateTime.empty(),
        payment: Reference.empty(),
        recipient: Reference.empty(),
        amount: Money.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PaymentNotice.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PaymentNotice';
    return PaymentNotice(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodes>(
        json,
        'status',
        FinancialResourceStatusCodes.fromJson,
        '$objectPath.status',
      )!,
      request: JsonParser.parseObject<Reference>(
        json,
        'request',
        Reference.fromJson,
        '$objectPath.request',
      ),
      response: JsonParser.parseObject<Reference>(
        json,
        'response',
        Reference.fromJson,
        '$objectPath.response',
      ),
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
        '$objectPath.created',
      )!,
      provider: JsonParser.parseObject<Reference>(
        json,
        'provider',
        Reference.fromJson,
        '$objectPath.provider',
      ),
      payment: JsonParser.parseObject<Reference>(
        json,
        'payment',
        Reference.fromJson,
        '$objectPath.payment',
      )!,
      paymentDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'paymentDate',
        FhirDate.fromJson,
        '$objectPath.paymentDate',
      ),
      payee: JsonParser.parseObject<Reference>(
        json,
        'payee',
        Reference.fromJson,
        '$objectPath.payee',
      ),
      recipient: JsonParser.parseObject<Reference>(
        json,
        'recipient',
        Reference.fromJson,
        '$objectPath.recipient',
      )!,
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
        '$objectPath.amount',
      )!,
      paymentStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'paymentStatus',
        CodeableConcept.fromJson,
        '$objectPath.paymentStatus',
      ),
    );
  }

  /// Deserialize [PaymentNotice]
  /// from a [String] or [YamlMap] object
  factory PaymentNotice.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PaymentNotice.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PaymentNotice.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PaymentNotice '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PaymentNotice]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PaymentNotice.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PaymentNotice.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PaymentNotice';

  /// [identifier]
  /// A unique identifier assigned to this payment notice.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of the resource instance.
  final FinancialResourceStatusCodes status;

  /// [request]
  /// Reference of resource for which payment is being made.
  final Reference? request;

  /// [response]
  /// Reference of response to resource for which payment is being made.
  final Reference? response;

  /// [created]
  /// The date when this resource was created.
  final FhirDateTime created;

  /// [provider]
  /// The practitioner who is responsible for the services rendered to the
  /// patient.
  final Reference? provider;

  /// [payment]
  /// A reference to the payment which is the subject of this notice.
  final Reference payment;

  /// [paymentDate]
  /// The date when the above payment action occurred.
  final FhirDate? paymentDate;

  /// [payee]
  /// The party who will receive or has received payment that is the subject
  /// of this notification.
  final Reference? payee;

  /// [recipient]
  /// The party who is notified of the payment status.
  final Reference recipient;

  /// [amount]
  /// The amount sent to the payee.
  final Money amount;

  /// [paymentStatus]
  /// A code indicating whether payment has been sent or cleared.
  final CodeableConcept? paymentStatus;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('status', status);
    addField('request', request);
    addField('response', response);
    addField('created', created);
    addField('provider', provider);
    addField('payment', payment);
    addField('paymentDate', paymentDate);
    addField('payee', payee);
    addField('recipient', recipient);
    addField('amount', amount);
    addField('paymentStatus', paymentStatus);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'status',
      'request',
      'response',
      'created',
      'provider',
      'payment',
      'paymentDate',
      'payee',
      'recipient',
      'amount',
      'paymentStatus',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'status':
        fields.add(status);
      case 'request':
        if (request != null) {
          fields.add(request!);
        }
      case 'response':
        if (response != null) {
          fields.add(response!);
        }
      case 'created':
        fields.add(created);
      case 'provider':
        if (provider != null) {
          fields.add(provider!);
        }
      case 'payment':
        fields.add(payment);
      case 'paymentDate':
        if (paymentDate != null) {
          fields.add(paymentDate!);
        }
      case 'payee':
        if (payee != null) {
          fields.add(payee!);
        }
      case 'recipient':
        fields.add(recipient);
      case 'amount':
        fields.add(amount);
      case 'paymentStatus':
        if (paymentStatus != null) {
          fields.add(paymentStatus!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  PaymentNotice clone() => throw UnimplementedError();
  @override
  PaymentNotice copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FinancialResourceStatusCodes? status,
    Reference? request,
    Reference? response,
    FhirDateTime? created,
    Reference? provider,
    Reference? payment,
    FhirDate? paymentDate,
    Reference? payee,
    Reference? recipient,
    Money? amount,
    CodeableConcept? paymentStatus,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return PaymentNotice(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      request: request?.copyWith(
            objectPath: '$newObjectPath.request',
          ) ??
          this.request,
      response: response?.copyWith(
            objectPath: '$newObjectPath.response',
          ) ??
          this.response,
      created: created?.copyWith(
            objectPath: '$newObjectPath.created',
          ) ??
          this.created,
      provider: provider?.copyWith(
            objectPath: '$newObjectPath.provider',
          ) ??
          this.provider,
      payment: payment?.copyWith(
            objectPath: '$newObjectPath.payment',
          ) ??
          this.payment,
      paymentDate: paymentDate?.copyWith(
            objectPath: '$newObjectPath.paymentDate',
          ) ??
          this.paymentDate,
      payee: payee?.copyWith(
            objectPath: '$newObjectPath.payee',
          ) ??
          this.payee,
      recipient: recipient?.copyWith(
            objectPath: '$newObjectPath.recipient',
          ) ??
          this.recipient,
      amount: amount?.copyWith(
            objectPath: '$newObjectPath.amount',
          ) ??
          this.amount,
      paymentStatus: paymentStatus?.copyWith(
            objectPath: '$newObjectPath.paymentStatus',
          ) ??
          this.paymentStatus,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PaymentNotice) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(request, o.request)) {
      return false;
    }
    if (!equalsDeepWithNull(response, o.response)) {
      return false;
    }
    if (!equalsDeepWithNull(created, o.created)) {
      return false;
    }
    if (!equalsDeepWithNull(provider, o.provider)) {
      return false;
    }
    if (!equalsDeepWithNull(payment, o.payment)) {
      return false;
    }
    if (!equalsDeepWithNull(paymentDate, o.paymentDate)) {
      return false;
    }
    if (!equalsDeepWithNull(payee, o.payee)) {
      return false;
    }
    if (!equalsDeepWithNull(recipient, o.recipient)) {
      return false;
    }
    if (!equalsDeepWithNull(amount, o.amount)) {
      return false;
    }
    if (!equalsDeepWithNull(paymentStatus, o.paymentStatus)) {
      return false;
    }
    return true;
  }
}
