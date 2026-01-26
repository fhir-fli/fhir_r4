import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'payment_notice.g.dart';

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
          resourceType: R4ResourceType.PaymentNotice,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PaymentNotice.fromJson(
    Map<String, dynamic> json,
  ) {
    return PaymentNotice(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodes>(
        json,
        'status',
        FinancialResourceStatusCodes.fromJson,
      )!,
      request: JsonParser.parseObject<Reference>(
        json,
        'request',
        Reference.fromJson,
      ),
      response: JsonParser.parseObject<Reference>(
        json,
        'response',
        Reference.fromJson,
      ),
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
      )!,
      provider: JsonParser.parseObject<Reference>(
        json,
        'provider',
        Reference.fromJson,
      ),
      payment: JsonParser.parseObject<Reference>(
        json,
        'payment',
        Reference.fromJson,
      )!,
      paymentDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'paymentDate',
        FhirDate.fromJson,
      ),
      payee: JsonParser.parseObject<Reference>(
        json,
        'payee',
        Reference.fromJson,
      ),
      recipient: JsonParser.parseObject<Reference>(
        json,
        'recipient',
        Reference.fromJson,
      )!,
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
      )!,
      paymentStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'paymentStatus',
        CodeableConcept.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'status',
      status,
    );
    addField(
      'request',
      request,
    );
    addField(
      'response',
      response,
    );
    addField(
      'created',
      created,
    );
    addField(
      'provider',
      provider,
    );
    addField(
      'payment',
      payment,
    );
    addField(
      'paymentDate',
      paymentDate,
    );
    addField(
      'payee',
      payee,
    );
    addField(
      'recipient',
      recipient,
    );
    addField(
      'amount',
      amount,
    );
    addField(
      'paymentStatus',
      paymentStatus,
    );
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
  PaymentNotice clone() => copyWith();

  /// Copy function for [PaymentNotice]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PaymentNoticeCopyWith<PaymentNotice> get copyWith =>
      _$PaymentNoticeCopyWithImpl<PaymentNotice>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PaymentNotice) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      request,
      o.request,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      response,
      o.response,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      created,
      o.created,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      provider,
      o.provider,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      payment,
      o.payment,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      paymentDate,
      o.paymentDate,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      payee,
      o.payee,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      recipient,
      o.recipient,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      paymentStatus,
      o.paymentStatus,
    )) {
      return false;
    }
    return true;
  }
}
