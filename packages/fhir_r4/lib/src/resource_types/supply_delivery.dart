import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SupplyDelivery]
/// Record of delivery of what is supplied.
class SupplyDelivery extends DomainResource {
  /// Primary constructor for
  /// [SupplyDelivery]

  const SupplyDelivery({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    this.status,
    this.patient,
    this.type,
    this.suppliedItem,
    this.occurrenceX,
    this.supplier,
    this.destination,
    this.receiver,
  }) : super(
          objectPath: 'SupplyDelivery',
          resourceType: R4ResourceType.SupplyDelivery,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SupplyDelivery.empty() => const SupplyDelivery();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SupplyDelivery.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SupplyDelivery';
    return SupplyDelivery(
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
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
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
      status: JsonParser.parsePrimitive<SupplyDeliveryStatus>(
        json,
        'status',
        SupplyDeliveryStatus.fromJson,
        '$objectPath.status',
      ),
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      suppliedItem: JsonParser.parseObject<SupplyDeliverySuppliedItem>(
        json,
        'suppliedItem',
        SupplyDeliverySuppliedItem.fromJson,
        '$objectPath.suppliedItem',
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXSupplyDelivery>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrencePeriod': Period.fromJson,
          'occurrenceTiming': Timing.fromJson,
        },
        objectPath,
      ),
      supplier: JsonParser.parseObject<Reference>(
        json,
        'supplier',
        Reference.fromJson,
        '$objectPath.supplier',
      ),
      destination: JsonParser.parseObject<Reference>(
        json,
        'destination',
        Reference.fromJson,
        '$objectPath.destination',
      ),
      receiver: (json['receiver'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.receiver',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SupplyDelivery]
  /// from a [String] or [YamlMap] object
  factory SupplyDelivery.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SupplyDelivery.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SupplyDelivery.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SupplyDelivery '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SupplyDelivery]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SupplyDelivery.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SupplyDelivery.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SupplyDelivery';

  /// [identifier]
  /// Identifier for the supply delivery event that is used to identify it
  /// across multiple disparate systems.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// event.
  final List<Reference>? basedOn;

  /// [partOf]
  /// A larger event of which this particular event is a component or step.
  final List<Reference>? partOf;

  /// [status]
  /// A code specifying the state of the dispense event.
  final SupplyDeliveryStatus? status;

  /// [patient]
  /// A link to a resource representing the person whom the delivered item is
  /// for.
  final Reference? patient;

  /// [type]
  /// Indicates the type of dispensing event that is performed. Examples
  /// include: Trial Fill, Completion of Trial, Partial Fill, Emergency Fill,
  /// Samples, etc.
  final CodeableConcept? type;

  /// [suppliedItem]
  /// The item that is being delivered or has been supplied.
  final SupplyDeliverySuppliedItem? suppliedItem;

  /// [occurrenceX]
  /// The date or time(s) the activity occurred.
  final OccurrenceXSupplyDelivery? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTime
  FhirDateTime? get occurrenceDateTime => occurrenceX?.isAs<FhirDateTime>();

  /// Getter for [occurrencePeriod] as a Period
  Period? get occurrencePeriod => occurrenceX?.isAs<Period>();

  /// Getter for [occurrenceTiming] as a Timing
  Timing? get occurrenceTiming => occurrenceX?.isAs<Timing>();

  /// [supplier]
  /// The individual responsible for dispensing the medication, supplier or
  /// device.
  final Reference? supplier;

  /// [destination]
  /// Identification of the facility/location where the Supply was shipped
  /// to, as part of the dispense event.
  final Reference? destination;

  /// [receiver]
  /// Identifies the person who picked up the Supply.
  final List<Reference>? receiver;
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
      'basedOn',
      basedOn,
    );
    addField(
      'partOf',
      partOf,
    );
    addField(
      'status',
      status,
    );
    addField(
      'patient',
      patient,
    );
    addField(
      'type',
      type,
    );
    addField(
      'suppliedItem',
      suppliedItem,
    );
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField(
        'occurrence${fhirType.capitalize()}',
        occurrenceX,
      );
    }

    addField(
      'supplier',
      supplier,
    );
    addField(
      'destination',
      destination,
    );
    addField(
      'receiver',
      receiver,
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
      'basedOn',
      'partOf',
      'status',
      'patient',
      'type',
      'suppliedItem',
      'occurrenceX',
      'supplier',
      'destination',
      'receiver',
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
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'suppliedItem':
        if (suppliedItem != null) {
          fields.add(suppliedItem!);
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
      case 'supplier':
        if (supplier != null) {
          fields.add(supplier!);
        }
      case 'destination':
        if (destination != null) {
          fields.add(destination!);
        }
      case 'receiver':
        if (receiver != null) {
          fields.addAll(receiver!);
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
            final newList = [...?contained, child];
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
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
            final newList = [...?identifier, child];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'basedOn':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?basedOn, ...child];
            return copyWith(basedOn: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?basedOn, child];
            return copyWith(basedOn: newList);
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
            final newList = [...?partOf, child];
            return copyWith(partOf: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is SupplyDeliveryStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patient':
        {
          if (child is Reference) {
            return copyWith(patient: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'suppliedItem':
        {
          if (child is SupplyDeliverySuppliedItem) {
            return copyWith(suppliedItem: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrenceX':
        {
          if (child is OccurrenceXSupplyDelivery) {
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
      case 'supplier':
        {
          if (child is Reference) {
            return copyWith(supplier: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'destination':
        {
          if (child is Reference) {
            return copyWith(destination: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'receiver':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?receiver, ...child];
            return copyWith(receiver: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?receiver, child];
            return copyWith(receiver: newList);
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
      case 'basedOn':
        return ['Reference'];
      case 'partOf':
        return ['Reference'];
      case 'status':
        return ['FhirCode'];
      case 'patient':
        return ['Reference'];
      case 'type':
        return ['CodeableConcept'];
      case 'suppliedItem':
        return ['SupplyDeliverySuppliedItem'];
      case 'occurrence':
      case 'occurrenceX':
        return ['FhirDateTime', 'Period', 'Timing'];
      case 'occurrenceDateTime':
        return ['FhirDateTime'];
      case 'occurrencePeriod':
        return ['Period'];
      case 'occurrenceTiming':
        return ['Timing'];
      case 'supplier':
        return ['Reference'];
      case 'destination':
        return ['Reference'];
      case 'receiver':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SupplyDelivery]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  SupplyDelivery createProperty(
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
      case 'basedOn':
        {
          return copyWith(
            basedOn: <Reference>[],
          );
        }
      case 'partOf':
        {
          return copyWith(
            partOf: <Reference>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: SupplyDeliveryStatus.empty(),
          );
        }
      case 'patient':
        {
          return copyWith(
            patient: Reference.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'suppliedItem':
        {
          return copyWith(
            suppliedItem: SupplyDeliverySuppliedItem.empty(),
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
      case 'supplier':
        {
          return copyWith(
            supplier: Reference.empty(),
          );
        }
      case 'destination':
        {
          return copyWith(
            destination: Reference.empty(),
          );
        }
      case 'receiver':
        {
          return copyWith(
            receiver: <Reference>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  SupplyDelivery clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool basedOn = false,
    bool partOf = false,
    bool status = false,
    bool patient = false,
    bool type = false,
    bool suppliedItem = false,
    bool occurrence = false,
    bool supplier = false,
    bool destination = false,
    bool receiver = false,
  }) {
    return SupplyDelivery(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      basedOn: basedOn ? null : this.basedOn,
      partOf: partOf ? null : this.partOf,
      status: status ? null : this.status,
      patient: patient ? null : this.patient,
      type: type ? null : this.type,
      suppliedItem: suppliedItem ? null : this.suppliedItem,
      occurrenceX: occurrence ? null : occurrenceX,
      supplier: supplier ? null : this.supplier,
      destination: destination ? null : this.destination,
      receiver: receiver ? null : this.receiver,
    );
  }

  @override
  SupplyDelivery clone() => throw UnimplementedError();
  @override
  SupplyDelivery copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    SupplyDeliveryStatus? status,
    Reference? patient,
    CodeableConcept? type,
    SupplyDeliverySuppliedItem? suppliedItem,
    OccurrenceXSupplyDelivery? occurrenceX,
    Reference? supplier,
    Reference? destination,
    List<Reference>? receiver,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return SupplyDelivery(
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
      basedOn: basedOn
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.basedOn',
                ),
              )
              .toList() ??
          this.basedOn,
      partOf: partOf
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.partOf',
                ),
              )
              .toList() ??
          this.partOf,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      suppliedItem: suppliedItem?.copyWith(
            objectPath: '$newObjectPath.suppliedItem',
          ) ??
          this.suppliedItem,
      occurrenceX: occurrenceX?.copyWith(
            objectPath: '$newObjectPath.occurrenceX',
          ) as OccurrenceXSupplyDelivery? ??
          this.occurrenceX,
      supplier: supplier?.copyWith(
            objectPath: '$newObjectPath.supplier',
          ) ??
          this.supplier,
      destination: destination?.copyWith(
            objectPath: '$newObjectPath.destination',
          ) ??
          this.destination,
      receiver: receiver
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.receiver',
                ),
              )
              .toList() ??
          this.receiver,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SupplyDelivery) {
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
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      suppliedItem,
      o.suppliedItem,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      occurrenceX,
      o.occurrenceX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      supplier,
      o.supplier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      destination,
      o.destination,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      receiver,
      o.receiver,
    )) {
      return false;
    }
    return true;
  }
}

/// [SupplyDeliverySuppliedItem]
/// The item that is being delivered or has been supplied.
class SupplyDeliverySuppliedItem extends BackboneElement {
  /// Primary constructor for
  /// [SupplyDeliverySuppliedItem]

  const SupplyDeliverySuppliedItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    this.itemX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SupplyDelivery.suppliedItem',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SupplyDeliverySuppliedItem.empty() =>
      const SupplyDeliverySuppliedItem();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SupplyDeliverySuppliedItem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SupplyDelivery.suppliedItem';
    return SupplyDeliverySuppliedItem(
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
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      itemX: JsonParser.parsePolymorphic<ItemXSupplyDeliverySuppliedItem>(
        json,
        {
          'itemCodeableConcept': CodeableConcept.fromJson,
          'itemReference': Reference.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [SupplyDeliverySuppliedItem]
  /// from a [String] or [YamlMap] object
  factory SupplyDeliverySuppliedItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SupplyDeliverySuppliedItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SupplyDeliverySuppliedItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SupplyDeliverySuppliedItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SupplyDeliverySuppliedItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SupplyDeliverySuppliedItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SupplyDeliverySuppliedItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SupplyDeliverySuppliedItem';

  /// [quantity]
  /// The amount of supply that has been dispensed. Includes unit of measure.
  final Quantity? quantity;

  /// [itemX]
  /// Identifies the medication, substance or device being dispensed. This is
  /// either a link to a resource representing the details of the item or a
  /// code that identifies the item from a known list.
  final ItemXSupplyDeliverySuppliedItem? itemX;

  /// Getter for [itemCodeableConcept] as a CodeableConcept
  CodeableConcept? get itemCodeableConcept => itemX?.isAs<CodeableConcept>();

  /// Getter for [itemReference] as a Reference
  Reference? get itemReference => itemX?.isAs<Reference>();
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
      'quantity',
      quantity,
    );
    if (itemX != null) {
      final fhirType = itemX!.fhirType;
      addField(
        'item${fhirType.capitalize()}',
        itemX,
      );
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'quantity',
      'itemX',
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
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'item':
        fields.add(itemX!);
      case 'itemX':
        fields.add(itemX!);
      case 'itemCodeableConcept':
        if (itemX is CodeableConcept) {
          fields.add(itemX!);
        }
      case 'itemReference':
        if (itemX is Reference) {
          fields.add(itemX!);
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
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
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
      case 'itemX':
        {
          if (child is ItemXSupplyDeliverySuppliedItem) {
            return copyWith(itemX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(itemX: child);
            }
            if (child is Reference) {
              return copyWith(itemX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'itemCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(itemX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'itemReference':
        {
          if (child is Reference) {
            return copyWith(itemX: child);
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
      case 'quantity':
        return ['Quantity'];
      case 'item':
      case 'itemX':
        return ['CodeableConcept', 'Reference'];
      case 'itemCodeableConcept':
        return ['CodeableConcept'];
      case 'itemReference':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SupplyDeliverySuppliedItem]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  SupplyDeliverySuppliedItem createProperty(
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
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'item':
      case 'itemX':
      case 'itemCodeableConcept':
        {
          return copyWith(
            itemX: CodeableConcept.empty(),
          );
        }
      case 'itemReference':
        {
          return copyWith(
            itemX: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  SupplyDeliverySuppliedItem clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool quantity = false,
    bool item = false,
  }) {
    return SupplyDeliverySuppliedItem(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      quantity: quantity ? null : this.quantity,
      itemX: item ? null : itemX,
    );
  }

  @override
  SupplyDeliverySuppliedItem clone() => throw UnimplementedError();
  @override
  SupplyDeliverySuppliedItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? quantity,
    ItemXSupplyDeliverySuppliedItem? itemX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SupplyDeliverySuppliedItem(
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
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      itemX: itemX?.copyWith(
            objectPath: '$newObjectPath.itemX',
          ) as ItemXSupplyDeliverySuppliedItem? ??
          this.itemX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SupplyDeliverySuppliedItem) {
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
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      itemX,
      o.itemX,
    )) {
      return false;
    }
    return true;
  }
}
