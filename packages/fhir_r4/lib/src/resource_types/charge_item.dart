import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ChargeItem]
/// The resource ChargeItem describes the provision of healthcare provider
/// products for a certain patient, therefore referring not only to the
/// product, but containing in addition details of the provision, like
/// date, time, amounts and participating organizations and persons. Main
/// Usage of the ChargeItem is to enable the billing process and internal
/// cost allocation.
class ChargeItem extends DomainResource {
  /// Primary constructor for
  /// [ChargeItem]

  const ChargeItem({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.definitionUri,
    this.definitionCanonical,
    required this.status,
    this.partOf,
    required this.code,
    required this.subject,
    this.context,
    this.occurrenceX,
    this.performer,
    this.performingOrganization,
    this.requestingOrganization,
    this.costCenter,
    this.quantity,
    this.bodysite,
    this.factorOverride,
    this.priceOverride,
    this.overrideReason,
    this.enterer,
    this.enteredDate,
    this.reason,
    this.service,
    this.productX,
    this.account,
    this.note,
    this.supportingInformation,
  }) : super(
          objectPath: 'ChargeItem',
          resourceType: R4ResourceType.ChargeItem,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ChargeItem.empty() => ChargeItem(
        status: ChargeItemStatus.values.first,
        code: CodeableConcept.empty(),
        subject: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ChargeItem';
    return ChargeItem(
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
      definitionUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'definitionUri',
        FhirUri.fromJson,
        '$objectPath.definitionUri',
      ),
      definitionCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'definitionCanonical',
        FhirCanonical.fromJson,
        '$objectPath.definitionCanonical',
      ),
      status: JsonParser.parsePrimitive<ChargeItemStatus>(
        json,
        'status',
        ChargeItemStatus.fromJson,
        '$objectPath.status',
      )!,
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      )!,
      context: JsonParser.parseObject<Reference>(
        json,
        'context',
        Reference.fromJson,
        '$objectPath.context',
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXChargeItem>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrencePeriod': Period.fromJson,
          'occurrenceTiming': Timing.fromJson,
        },
        objectPath,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ChargeItemPerformer>(
            (v) => ChargeItemPerformer.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      performingOrganization: JsonParser.parseObject<Reference>(
        json,
        'performingOrganization',
        Reference.fromJson,
        '$objectPath.performingOrganization',
      ),
      requestingOrganization: JsonParser.parseObject<Reference>(
        json,
        'requestingOrganization',
        Reference.fromJson,
        '$objectPath.requestingOrganization',
      ),
      costCenter: JsonParser.parseObject<Reference>(
        json,
        'costCenter',
        Reference.fromJson,
        '$objectPath.costCenter',
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      bodysite: (json['bodysite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.bodysite',
              },
            ),
          )
          .toList(),
      factorOverride: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factorOverride',
        FhirDecimal.fromJson,
        '$objectPath.factorOverride',
      ),
      priceOverride: JsonParser.parseObject<Money>(
        json,
        'priceOverride',
        Money.fromJson,
        '$objectPath.priceOverride',
      ),
      overrideReason: JsonParser.parsePrimitive<FhirString>(
        json,
        'overrideReason',
        FhirString.fromJson,
        '$objectPath.overrideReason',
      ),
      enterer: JsonParser.parseObject<Reference>(
        json,
        'enterer',
        Reference.fromJson,
        '$objectPath.enterer',
      ),
      enteredDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'enteredDate',
        FhirDateTime.fromJson,
        '$objectPath.enteredDate',
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reason',
              },
            ),
          )
          .toList(),
      service: (json['service'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.service',
              },
            ),
          )
          .toList(),
      productX: JsonParser.parsePolymorphic<ProductXChargeItem>(
        json,
        {
          'productReference': Reference.fromJson,
          'productCodeableConcept': CodeableConcept.fromJson,
        },
        objectPath,
      ),
      account: (json['account'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.account',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInformation',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ChargeItem]
  /// from a [String] or [YamlMap] object
  factory ChargeItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ChargeItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ChargeItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ChargeItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ChargeItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ChargeItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ChargeItem';

  /// [identifier]
  /// Identifiers assigned to this event performer or other systems.
  final List<Identifier>? identifier;

  /// [definitionUri]
  /// References the (external) source of pricing information, rules of
  /// application for the code this ChargeItem uses.
  final List<FhirUri>? definitionUri;

  /// [definitionCanonical]
  /// References the source of pricing information, rules of application for
  /// the code this ChargeItem uses.
  final List<FhirCanonical>? definitionCanonical;

  /// [status]
  /// The current state of the ChargeItem.
  final ChargeItemStatus status;

  /// [partOf]
  /// ChargeItems can be grouped to larger ChargeItems covering the whole
  /// set.
  final List<Reference>? partOf;

  /// [code]
  /// A code that identifies the charge, like a billing code.
  final CodeableConcept code;

  /// [subject]
  /// The individual or set of individuals the action is being or was
  /// performed on.
  final Reference subject;

  /// [context]
  /// The encounter or episode of care that establishes the context for this
  /// event.
  final Reference? context;

  /// [occurrenceX]
  /// Date/time(s) or duration when the charged service was applied.
  final OccurrenceXChargeItem? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTime
  FhirDateTime? get occurrenceDateTime => occurrenceX?.isAs<FhirDateTime>();

  /// Getter for [occurrencePeriod] as a Period
  Period? get occurrencePeriod => occurrenceX?.isAs<Period>();

  /// Getter for [occurrenceTiming] as a Timing
  Timing? get occurrenceTiming => occurrenceX?.isAs<Timing>();

  /// [performer]
  /// Indicates who or what performed or participated in the charged service.
  final List<ChargeItemPerformer>? performer;

  /// [performingOrganization]
  /// The organization requesting the service.
  final Reference? performingOrganization;

  /// [requestingOrganization]
  /// The organization performing the service.
  final Reference? requestingOrganization;

  /// [costCenter]
  /// The financial cost center permits the tracking of charge attribution.
  final Reference? costCenter;

  /// [quantity]
  /// Quantity of which the charge item has been serviced.
  final Quantity? quantity;

  /// [bodysite]
  /// The anatomical location where the related service has been applied.
  final List<CodeableConcept>? bodysite;

  /// [factorOverride]
  /// Factor overriding the factor determined by the rules associated with
  /// the code.
  final FhirDecimal? factorOverride;

  /// [priceOverride]
  /// Total price of the charge overriding the list price associated with the
  /// code.
  final Money? priceOverride;

  /// [overrideReason]
  /// If the list price or the rule-based factor associated with the code is
  /// overridden, this attribute can capture a text to indicate the reason
  /// for this action.
  final FhirString? overrideReason;

  /// [enterer]
  /// The device, practitioner, etc. who entered the charge item.
  final Reference? enterer;

  /// [enteredDate]
  /// Date the charge item was entered.
  final FhirDateTime? enteredDate;

  /// [reason]
  /// Describes why the event occurred in coded or textual form.
  final List<CodeableConcept>? reason;

  /// [service]
  /// Indicated the rendered service that caused this charge.
  final List<Reference>? service;

  /// [productX]
  /// Identifies the device, food, drug or other product being charged either
  /// by type code or reference to an instance.
  final ProductXChargeItem? productX;

  /// Getter for [productReference] as a Reference
  Reference? get productReference => productX?.isAs<Reference>();

  /// Getter for [productCodeableConcept] as a CodeableConcept
  CodeableConcept? get productCodeableConcept =>
      productX?.isAs<CodeableConcept>();

  /// [account]
  /// Account into which this ChargeItems belongs.
  final List<Reference>? account;

  /// [note]
  /// Comments made about the event by the performer, subject or other
  /// participants.
  final List<Annotation>? note;

  /// [supportingInformation]
  /// Further information supporting this charge.
  final List<Reference>? supportingInformation;
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
      'definitionUri',
      definitionUri,
    );
    addField(
      'definitionCanonical',
      definitionCanonical,
    );
    addField(
      'status',
      status,
    );
    addField(
      'partOf',
      partOf,
    );
    addField(
      'code',
      code,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'context',
      context,
    );
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField(
        'occurrence${fhirType.capitalize()}',
        occurrenceX,
      );
    }

    addField(
      'performer',
      performer,
    );
    addField(
      'performingOrganization',
      performingOrganization,
    );
    addField(
      'requestingOrganization',
      requestingOrganization,
    );
    addField(
      'costCenter',
      costCenter,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'bodysite',
      bodysite,
    );
    addField(
      'factorOverride',
      factorOverride,
    );
    addField(
      'priceOverride',
      priceOverride,
    );
    addField(
      'overrideReason',
      overrideReason,
    );
    addField(
      'enterer',
      enterer,
    );
    addField(
      'enteredDate',
      enteredDate,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'service',
      service,
    );
    if (productX != null) {
      final fhirType = productX!.fhirType;
      addField(
        'product${fhirType.capitalize()}',
        productX,
      );
    }

    addField(
      'account',
      account,
    );
    addField(
      'note',
      note,
    );
    addField(
      'supportingInformation',
      supportingInformation,
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
      'definitionUri',
      'definitionCanonical',
      'status',
      'partOf',
      'code',
      'subject',
      'context',
      'occurrenceX',
      'performer',
      'performingOrganization',
      'requestingOrganization',
      'costCenter',
      'quantity',
      'bodysite',
      'factorOverride',
      'priceOverride',
      'overrideReason',
      'enterer',
      'enteredDate',
      'reason',
      'service',
      'productX',
      'account',
      'note',
      'supportingInformation',
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
      case 'definitionUri':
        if (definitionUri != null) {
          fields.addAll(definitionUri!);
        }
      case 'definitionCanonical':
        if (definitionCanonical != null) {
          fields.addAll(definitionCanonical!);
        }
      case 'status':
        fields.add(status);
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'code':
        fields.add(code);
      case 'subject':
        fields.add(subject);
      case 'context':
        if (context != null) {
          fields.add(context!);
        }
      case 'occurrence':
        fields.add(occurrenceX!);
      case 'occurrenceX':
        fields.add(occurrenceX!);
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTime) {
          fields.add(occurrenceX!);
        }
      case 'occurrencePeriod':
        if (occurrenceX is Period) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceTiming':
        if (occurrenceX is Timing) {
          fields.add(occurrenceX!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'performingOrganization':
        if (performingOrganization != null) {
          fields.add(performingOrganization!);
        }
      case 'requestingOrganization':
        if (requestingOrganization != null) {
          fields.add(requestingOrganization!);
        }
      case 'costCenter':
        if (costCenter != null) {
          fields.add(costCenter!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'bodysite':
        if (bodysite != null) {
          fields.addAll(bodysite!);
        }
      case 'factorOverride':
        if (factorOverride != null) {
          fields.add(factorOverride!);
        }
      case 'priceOverride':
        if (priceOverride != null) {
          fields.add(priceOverride!);
        }
      case 'overrideReason':
        if (overrideReason != null) {
          fields.add(overrideReason!);
        }
      case 'enterer':
        if (enterer != null) {
          fields.add(enterer!);
        }
      case 'enteredDate':
        if (enteredDate != null) {
          fields.add(enteredDate!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'service':
        if (service != null) {
          fields.addAll(service!);
        }
      case 'product':
        fields.add(productX!);
      case 'productX':
        fields.add(productX!);
      case 'productReference':
        if (productX is Reference) {
          fields.add(productX!);
        }
      case 'productCodeableConcept':
        if (productX is CodeableConcept) {
          fields.add(productX!);
        }
      case 'account':
        if (account != null) {
          fields.addAll(account!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'supportingInformation':
        if (supportingInformation != null) {
          fields.addAll(supportingInformation!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [
              ...?contained,
              child,
            ];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [
              ...?identifier,
              child,
            ];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definitionUri':
        {
          if (child is List<FhirUri>) {
            // Add all elements from passed list
            final newList = [...?definitionUri, ...child];
            return copyWith(definitionUri: newList);
          } else if (child is FhirUri) {
            // Add single element to existing list or create new list
            final newList = [
              ...?definitionUri,
              child,
            ];
            return copyWith(definitionUri: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definitionCanonical':
        {
          if (child is List<FhirCanonical>) {
            // Add all elements from passed list
            final newList = [...?definitionCanonical, ...child];
            return copyWith(definitionCanonical: newList);
          } else if (child is FhirCanonical) {
            // Add single element to existing list or create new list
            final newList = [
              ...?definitionCanonical,
              child,
            ];
            return copyWith(definitionCanonical: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is ChargeItemStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'partOf':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?partOf, ...child];
            return copyWith(partOf: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?partOf,
              child,
            ];
            return copyWith(partOf: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subject':
        {
          if (child is Reference) {
            return copyWith(subject: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'context':
        {
          if (child is Reference) {
            return copyWith(context: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrenceX':
        {
          if (child is OccurrenceXChargeItem) {
            return copyWith(occurrenceX: child);
          } else {
            if (child is FhirDateTime) {
              return copyWith(occurrenceX: child);
            }
            if (child is Period) {
              return copyWith(occurrenceX: child);
            }
            if (child is Timing) {
              return copyWith(occurrenceX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrenceFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(occurrenceX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrencePeriod':
        {
          if (child is Period) {
            return copyWith(occurrenceX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrenceTiming':
        {
          if (child is Timing) {
            return copyWith(occurrenceX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performer':
        {
          if (child is List<ChargeItemPerformer>) {
            // Add all elements from passed list
            final newList = [...?performer, ...child];
            return copyWith(performer: newList);
          } else if (child is ChargeItemPerformer) {
            // Add single element to existing list or create new list
            final newList = [
              ...?performer,
              child,
            ];
            return copyWith(performer: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performingOrganization':
        {
          if (child is Reference) {
            return copyWith(performingOrganization: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'requestingOrganization':
        {
          if (child is Reference) {
            return copyWith(requestingOrganization: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'costCenter':
        {
          if (child is Reference) {
            return copyWith(costCenter: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'bodysite':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?bodysite, ...child];
            return copyWith(bodysite: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?bodysite,
              child,
            ];
            return copyWith(bodysite: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factorOverride':
        {
          if (child is FhirDecimal) {
            return copyWith(factorOverride: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'priceOverride':
        {
          if (child is Money) {
            return copyWith(priceOverride: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'overrideReason':
        {
          if (child is FhirString) {
            return copyWith(overrideReason: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'enterer':
        {
          if (child is Reference) {
            return copyWith(enterer: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'enteredDate':
        {
          if (child is FhirDateTime) {
            return copyWith(enteredDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reason':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?reason, ...child];
            return copyWith(reason: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?reason,
              child,
            ];
            return copyWith(reason: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'service':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?service, ...child];
            return copyWith(service: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?service,
              child,
            ];
            return copyWith(service: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productX':
        {
          if (child is ProductXChargeItem) {
            return copyWith(productX: child);
          } else {
            if (child is Reference) {
              return copyWith(productX: child);
            }
            if (child is CodeableConcept) {
              return copyWith(productX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productReference':
        {
          if (child is Reference) {
            return copyWith(productX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(productX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'account':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?account, ...child];
            return copyWith(account: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?account,
              child,
            ];
            return copyWith(account: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            // Add all elements from passed list
            final newList = [...?note, ...child];
            return copyWith(note: newList);
          } else if (child is Annotation) {
            // Add single element to existing list or create new list
            final newList = [
              ...?note,
              child,
            ];
            return copyWith(note: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'supportingInformation':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?supportingInformation, ...child];
            return copyWith(supportingInformation: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?supportingInformation,
              child,
            ];
            return copyWith(supportingInformation: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'definitionUri':
        return ['FhirUri'];
      case 'definitionCanonical':
        return ['FhirCanonical'];
      case 'status':
        return ['FhirCode'];
      case 'partOf':
        return ['Reference'];
      case 'code':
        return ['CodeableConcept'];
      case 'subject':
        return ['Reference'];
      case 'context':
        return ['Reference'];
      case 'occurrence':
      case 'occurrenceX':
        return [
          'FhirDateTime',
          'Period',
          'Timing',
        ];
      case 'occurrenceDateTime':
        return ['FhirDateTime'];
      case 'occurrencePeriod':
        return ['Period'];
      case 'occurrenceTiming':
        return ['Timing'];
      case 'performer':
        return ['ChargeItemPerformer'];
      case 'performingOrganization':
        return ['Reference'];
      case 'requestingOrganization':
        return ['Reference'];
      case 'costCenter':
        return ['Reference'];
      case 'quantity':
        return ['Quantity'];
      case 'bodysite':
        return ['CodeableConcept'];
      case 'factorOverride':
        return ['FhirDecimal'];
      case 'priceOverride':
        return ['Money'];
      case 'overrideReason':
        return ['FhirString'];
      case 'enterer':
        return ['Reference'];
      case 'enteredDate':
        return ['FhirDateTime'];
      case 'reason':
        return ['CodeableConcept'];
      case 'service':
        return ['Reference'];
      case 'product':
      case 'productX':
        return [
          'Reference',
          'CodeableConcept',
        ];
      case 'productReference':
        return ['Reference'];
      case 'productCodeableConcept':
        return ['CodeableConcept'];
      case 'account':
        return ['Reference'];
      case 'note':
        return ['Annotation'];
      case 'supportingInformation':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ChargeItem]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ChargeItem createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'definitionUri':
        {
          return copyWith(
            definitionUri: <FhirUri>[],
          );
        }
      case 'definitionCanonical':
        {
          return copyWith(
            definitionCanonical: <FhirCanonical>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: ChargeItemStatus.empty(),
          );
        }
      case 'partOf':
        {
          return copyWith(
            partOf: <Reference>[],
          );
        }
      case 'code':
        {
          return copyWith(
            code: CodeableConcept.empty(),
          );
        }
      case 'subject':
        {
          return copyWith(
            subject: Reference.empty(),
          );
        }
      case 'context':
        {
          return copyWith(
            context: Reference.empty(),
          );
        }
      case 'occurrence':
      case 'occurrenceX':
      case 'occurrenceDateTime':
        {
          return copyWith(
            occurrenceX: FhirDateTime.empty(),
          );
        }
      case 'occurrencePeriod':
        {
          return copyWith(
            occurrenceX: Period.empty(),
          );
        }
      case 'occurrenceTiming':
        {
          return copyWith(
            occurrenceX: Timing.empty(),
          );
        }
      case 'performer':
        {
          return copyWith(
            performer: <ChargeItemPerformer>[],
          );
        }
      case 'performingOrganization':
        {
          return copyWith(
            performingOrganization: Reference.empty(),
          );
        }
      case 'requestingOrganization':
        {
          return copyWith(
            requestingOrganization: Reference.empty(),
          );
        }
      case 'costCenter':
        {
          return copyWith(
            costCenter: Reference.empty(),
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'bodysite':
        {
          return copyWith(
            bodysite: <CodeableConcept>[],
          );
        }
      case 'factorOverride':
        {
          return copyWith(
            factorOverride: FhirDecimal.empty(),
          );
        }
      case 'priceOverride':
        {
          return copyWith(
            priceOverride: Money.empty(),
          );
        }
      case 'overrideReason':
        {
          return copyWith(
            overrideReason: FhirString.empty(),
          );
        }
      case 'enterer':
        {
          return copyWith(
            enterer: Reference.empty(),
          );
        }
      case 'enteredDate':
        {
          return copyWith(
            enteredDate: FhirDateTime.empty(),
          );
        }
      case 'reason':
        {
          return copyWith(
            reason: <CodeableConcept>[],
          );
        }
      case 'service':
        {
          return copyWith(
            service: <Reference>[],
          );
        }
      case 'product':
      case 'productX':
      case 'productReference':
        {
          return copyWith(
            productX: Reference.empty(),
          );
        }
      case 'productCodeableConcept':
        {
          return copyWith(
            productX: CodeableConcept.empty(),
          );
        }
      case 'account':
        {
          return copyWith(
            account: <Reference>[],
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      case 'supportingInformation':
        {
          return copyWith(
            supportingInformation: <Reference>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ChargeItem clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool definitionUri = false,
    bool definitionCanonical = false,
    bool partOf = false,
    bool context = false,
    bool occurrence = false,
    bool performer = false,
    bool performingOrganization = false,
    bool requestingOrganization = false,
    bool costCenter = false,
    bool quantity = false,
    bool bodysite = false,
    bool factorOverride = false,
    bool priceOverride = false,
    bool overrideReason = false,
    bool enterer = false,
    bool enteredDate = false,
    bool reason = false,
    bool service = false,
    bool product = false,
    bool account = false,
    bool note = false,
    bool supportingInformation = false,
  }) {
    return ChargeItem(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      definitionUri: definitionUri ? null : this.definitionUri,
      definitionCanonical:
          definitionCanonical ? null : this.definitionCanonical,
      status: status,
      partOf: partOf ? null : this.partOf,
      code: code,
      subject: subject,
      context: context ? null : this.context,
      occurrenceX: occurrence ? null : occurrenceX,
      performer: performer ? null : this.performer,
      performingOrganization:
          performingOrganization ? null : this.performingOrganization,
      requestingOrganization:
          requestingOrganization ? null : this.requestingOrganization,
      costCenter: costCenter ? null : this.costCenter,
      quantity: quantity ? null : this.quantity,
      bodysite: bodysite ? null : this.bodysite,
      factorOverride: factorOverride ? null : this.factorOverride,
      priceOverride: priceOverride ? null : this.priceOverride,
      overrideReason: overrideReason ? null : this.overrideReason,
      enterer: enterer ? null : this.enterer,
      enteredDate: enteredDate ? null : this.enteredDate,
      reason: reason ? null : this.reason,
      service: service ? null : this.service,
      productX: product ? null : productX,
      account: account ? null : this.account,
      note: note ? null : this.note,
      supportingInformation:
          supportingInformation ? null : this.supportingInformation,
    );
  }

  @override
  ChargeItem clone() => throw UnimplementedError();
  @override
  ChargeItem copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirUri>? definitionUri,
    List<FhirCanonical>? definitionCanonical,
    ChargeItemStatus? status,
    List<Reference>? partOf,
    CodeableConcept? code,
    Reference? subject,
    Reference? context,
    OccurrenceXChargeItem? occurrenceX,
    List<ChargeItemPerformer>? performer,
    Reference? performingOrganization,
    Reference? requestingOrganization,
    Reference? costCenter,
    Quantity? quantity,
    List<CodeableConcept>? bodysite,
    FhirDecimal? factorOverride,
    Money? priceOverride,
    FhirString? overrideReason,
    Reference? enterer,
    FhirDateTime? enteredDate,
    List<CodeableConcept>? reason,
    List<Reference>? service,
    ProductXChargeItem? productX,
    List<Reference>? account,
    List<Annotation>? note,
    List<Reference>? supportingInformation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return ChargeItem(
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
      definitionUri: definitionUri
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.definitionUri',
                ),
              )
              .toList() ??
          this.definitionUri,
      definitionCanonical: definitionCanonical
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.definitionCanonical',
                ),
              )
              .toList() ??
          this.definitionCanonical,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      partOf: partOf
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.partOf',
                ),
              )
              .toList() ??
          this.partOf,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      context: context?.copyWith(
            objectPath: '$newObjectPath.context',
          ) ??
          this.context,
      occurrenceX: occurrenceX?.copyWith(
            objectPath: '$newObjectPath.occurrenceX',
          ) as OccurrenceXChargeItem? ??
          this.occurrenceX,
      performer: performer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.performer',
                ),
              )
              .toList() ??
          this.performer,
      performingOrganization: performingOrganization?.copyWith(
            objectPath: '$newObjectPath.performingOrganization',
          ) ??
          this.performingOrganization,
      requestingOrganization: requestingOrganization?.copyWith(
            objectPath: '$newObjectPath.requestingOrganization',
          ) ??
          this.requestingOrganization,
      costCenter: costCenter?.copyWith(
            objectPath: '$newObjectPath.costCenter',
          ) ??
          this.costCenter,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      bodysite: bodysite
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.bodysite',
                ),
              )
              .toList() ??
          this.bodysite,
      factorOverride: factorOverride?.copyWith(
            objectPath: '$newObjectPath.factorOverride',
          ) ??
          this.factorOverride,
      priceOverride: priceOverride?.copyWith(
            objectPath: '$newObjectPath.priceOverride',
          ) ??
          this.priceOverride,
      overrideReason: overrideReason?.copyWith(
            objectPath: '$newObjectPath.overrideReason',
          ) ??
          this.overrideReason,
      enterer: enterer?.copyWith(
            objectPath: '$newObjectPath.enterer',
          ) ??
          this.enterer,
      enteredDate: enteredDate?.copyWith(
            objectPath: '$newObjectPath.enteredDate',
          ) ??
          this.enteredDate,
      reason: reason
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reason',
                ),
              )
              .toList() ??
          this.reason,
      service: service
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.service',
                ),
              )
              .toList() ??
          this.service,
      productX: productX?.copyWith(
            objectPath: '$newObjectPath.productX',
          ) as ProductXChargeItem? ??
          this.productX,
      account: account
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.account',
                ),
              )
              .toList() ??
          this.account,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      supportingInformation: supportingInformation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supportingInformation',
                ),
              )
              .toList() ??
          this.supportingInformation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ChargeItem) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
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
    if (!listEquals<FhirUri>(
      definitionUri,
      o.definitionUri,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      definitionCanonical,
      o.definitionCanonical,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      context,
      o.context,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      occurrenceX,
      o.occurrenceX,
    )) {
      return false;
    }
    if (!listEquals<ChargeItemPerformer>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      performingOrganization,
      o.performingOrganization,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requestingOrganization,
      o.requestingOrganization,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      costCenter,
      o.costCenter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      bodysite,
      o.bodysite,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factorOverride,
      o.factorOverride,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priceOverride,
      o.priceOverride,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      overrideReason,
      o.overrideReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      enterer,
      o.enterer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      enteredDate,
      o.enteredDate,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      service,
      o.service,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productX,
      o.productX,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      account,
      o.account,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      supportingInformation,
      o.supportingInformation,
    )) {
      return false;
    }
    return true;
  }
}

/// [ChargeItemPerformer]
/// Indicates who or what performed or participated in the charged service.
class ChargeItemPerformer extends BackboneElement {
  /// Primary constructor for
  /// [ChargeItemPerformer]

  const ChargeItemPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ChargeItem.performer',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ChargeItemPerformer.empty() => ChargeItemPerformer(
        actor: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemPerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ChargeItem.performer';
    return ChargeItemPerformer(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
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
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
        '$objectPath.function',
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
        '$objectPath.actor',
      )!,
    );
  }

  /// Deserialize [ChargeItemPerformer]
  /// from a [String] or [YamlMap] object
  factory ChargeItemPerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ChargeItemPerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ChargeItemPerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ChargeItemPerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ChargeItemPerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemPerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ChargeItemPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ChargeItemPerformer';

  /// [function_]
  /// Describes the type of performance or participation(e.g. primary
  /// surgeon, anesthesiologiest, etc.).
  final CodeableConcept? function_;

  /// [actor]
  /// The device, practitioner, etc. who performed or participated in the
  /// service.
  final Reference actor;
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

    addField(
      'id',
      id,
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
      'function',
      function_,
    );
    addField(
      'actor',
      actor,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'function',
      'actor',
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
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
        }
      case 'actor':
        fields.add(actor);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'function':
        {
          if (child is CodeableConcept) {
            return copyWith(function_: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'actor':
        {
          if (child is Reference) {
            return copyWith(actor: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'function':
        return ['CodeableConcept'];
      case 'actor':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ChargeItemPerformer]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ChargeItemPerformer createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'function':
        {
          return copyWith(
            function_: CodeableConcept.empty(),
          );
        }
      case 'actor':
        {
          return copyWith(
            actor: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ChargeItemPerformer clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool function_ = false,
  }) {
    return ChargeItemPerformer(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      function_: function_ ? null : this.function_,
      actor: actor,
    );
  }

  @override
  ChargeItemPerformer clone() => throw UnimplementedError();
  @override
  ChargeItemPerformer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ChargeItemPerformer(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
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
      function_: function_?.copyWith(
            objectPath: '$newObjectPath.function',
          ) ??
          this.function_,
      actor: actor?.copyWith(
            objectPath: '$newObjectPath.actor',
          ) ??
          this.actor,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ChargeItemPerformer) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      function_,
      o.function_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actor,
      o.actor,
    )) {
      return false;
    }
    return true;
  }
}
