import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MedicationStatement]
/// A record of a medication that is being consumed by a patient. A
/// MedicationStatement may indicate that the patient may be taking the
/// medication now or has taken the medication in the past or will be
/// taking the medication in the future. The source of this information can
/// be the patient, significant other (such as a family member or spouse),
/// or a clinician. A common scenario where this information is captured is
/// during the history taking process during a patient visit or stay. The
/// medication information may come from sources such as the patient's
/// memory, from a prescription bottle, or from a list of medications the
/// patient, clinician or other party maintains.
///
/// The primary difference between a medication statement and a medication
/// administration is that the medication administration has complete
/// administration information and is based on actual administration
/// information from the person who administered the medication. A
/// medication statement is often, if not always, less specific. There is
/// no required date/time when the medication was administered, in fact we
/// only know that a source has reported the patient is taking this
/// medication, where details such as time, quantity, or rate or even
/// medication product may be incomplete or missing or less precise. As
/// stated earlier, the medication statement information may come from the
/// patient's memory, from a prescription bottle or from a list of
/// medications the patient, clinician or other party maintains. Medication
/// administration is more formal and is not missing detailed information.
class MedicationStatement extends DomainResource {
  /// Primary constructor for
  /// [MedicationStatement]

  const MedicationStatement({
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
    required this.status,
    this.statusReason,
    this.category,
    required this.medicationX,
    required this.subject,
    this.context,
    this.effectiveX,
    this.dateAsserted,
    this.informationSource,
    this.derivedFrom,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.dosage,
  }) : super(
          objectPath: 'MedicationStatement',
          resourceType: R4ResourceType.MedicationStatement,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationStatement.empty() => MedicationStatement(
        status: MedicationStatementStatusCodes.values.first,
        medicationX: CodeableConcept.empty(),
        subject: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationStatement.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationStatement';
    return MedicationStatement(
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
      status: JsonParser.parsePrimitive<MedicationStatementStatusCodes>(
        json,
        'status',
        MedicationStatementStatusCodes.fromJson,
        '$objectPath.status',
      )!,
      statusReason: (json['statusReason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.statusReason',
              },
            ),
          )
          .toList(),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      ),
      medicationX: JsonParser.parsePolymorphic<MedicationXMedicationStatement>(
        json,
        {
          'medicationCodeableConcept': CodeableConcept.fromJson,
          'medicationReference': Reference.fromJson,
        },
        objectPath,
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
      effectiveX: JsonParser.parsePolymorphic<EffectiveXMedicationStatement>(
        json,
        {
          'effectiveDateTime': FhirDateTime.fromJson,
          'effectivePeriod': Period.fromJson,
        },
        objectPath,
      ),
      dateAsserted: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'dateAsserted',
        FhirDateTime.fromJson,
        '$objectPath.dateAsserted',
      ),
      informationSource: JsonParser.parseObject<Reference>(
        json,
        'informationSource',
        Reference.fromJson,
        '$objectPath.informationSource',
      ),
      derivedFrom: (json['derivedFrom'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.derivedFrom',
              },
            ),
          )
          .toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonCode',
              },
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonReference',
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
      dosage: (json['dosage'] as List<dynamic>?)
          ?.map<Dosage>(
            (v) => Dosage.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dosage',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationStatement]
  /// from a [String] or [YamlMap] object
  factory MedicationStatement.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationStatement.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationStatement.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationStatement '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationStatement]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationStatement.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationStatement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationStatement';

  /// [identifier]
  /// Identifiers associated with this Medication Statement that are defined
  /// by business processes and/or used to refer to it when a direct URL
  /// reference to the resource itself is not appropriate. They are business
  /// identifiers assigned to this resource by the performer or other systems
  /// and remain constant as the resource is updated and propagates from
  /// server to server.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// event.
  final List<Reference>? basedOn;

  /// [partOf]
  /// A larger event of which this particular event is a component or step.
  final List<Reference>? partOf;

  /// [status]
  /// A code representing the patient or other source's judgment about the
  /// state of the medication used that this statement is about. Generally,
  /// this will be active or completed.
  final MedicationStatementStatusCodes status;

  /// [statusReason]
  /// Captures the reason for the current state of the MedicationStatement.
  final List<CodeableConcept>? statusReason;

  /// [category]
  /// Indicates where the medication is expected to be consumed or
  /// administered.
  final CodeableConcept? category;

  /// [medicationX]
  /// Identifies the medication being administered. This is either a link to
  /// a resource representing the details of the medication or a simple
  /// attribute carrying a code that identifies the medication from a known
  /// list of medications.
  final MedicationXMedicationStatement medicationX;

  /// Getter for [medicationCodeableConcept] as a CodeableConcept
  CodeableConcept? get medicationCodeableConcept =>
      medicationX.isAs<CodeableConcept>();

  /// Getter for [medicationReference] as a Reference
  Reference? get medicationReference => medicationX.isAs<Reference>();

  /// [subject]
  /// The person, animal or group who is/was taking the medication.
  final Reference subject;

  /// [context]
  /// The encounter or episode of care that establishes the context for this
  /// MedicationStatement.
  final Reference? context;

  /// [effectiveX]
  /// The interval of time during which it is being asserted that the patient
  /// is/was/will be taking the medication (or was not taking, when the
  /// MedicationStatement.taken element is No).
  final EffectiveXMedicationStatement? effectiveX;

  /// Getter for [effectiveDateTime] as a FhirDateTime
  FhirDateTime? get effectiveDateTime => effectiveX?.isAs<FhirDateTime>();

  /// Getter for [effectivePeriod] as a Period
  Period? get effectivePeriod => effectiveX?.isAs<Period>();

  /// [dateAsserted]
  /// The date when the medication statement was asserted by the information
  /// source.
  final FhirDateTime? dateAsserted;

  /// [informationSource]
  /// The person or organization that provided the information about the
  /// taking of this medication. Note: Use derivedFrom when a
  /// MedicationStatement is derived from other resources, e.g. Claim or
  /// MedicationRequest.
  final Reference? informationSource;

  /// [derivedFrom]
  /// Allows linking the MedicationStatement to the underlying
  /// MedicationRequest, or to other information that supports or is used to
  /// derive the MedicationStatement.
  final List<Reference>? derivedFrom;

  /// [reasonCode]
  /// A reason for why the medication is being/was taken.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Condition or observation that supports why the medication is being/was
  /// taken.
  final List<Reference>? reasonReference;

  /// [note]
  /// Provides extra information about the medication statement that is not
  /// conveyed by the other attributes.
  final List<Annotation>? note;

  /// [dosage]
  /// Indicates how the medication is/was or should be taken by the patient.
  final List<Dosage>? dosage;
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
      'statusReason',
      statusReason,
    );
    addField(
      'category',
      category,
    );
    final medicationXFhirType = medicationX.fhirType;
    addField(
      'medication${medicationXFhirType.capitalize()}',
      medicationX,
    );

    addField(
      'subject',
      subject,
    );
    addField(
      'context',
      context,
    );
    if (effectiveX != null) {
      final fhirType = effectiveX!.fhirType;
      addField(
        'effective${fhirType.capitalize()}',
        effectiveX,
      );
    }

    addField(
      'dateAsserted',
      dateAsserted,
    );
    addField(
      'informationSource',
      informationSource,
    );
    addField(
      'derivedFrom',
      derivedFrom,
    );
    addField(
      'reasonCode',
      reasonCode,
    );
    addField(
      'reasonReference',
      reasonReference,
    );
    addField(
      'note',
      note,
    );
    addField(
      'dosage',
      dosage,
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
      'statusReason',
      'category',
      'medicationX',
      'subject',
      'context',
      'effectiveX',
      'dateAsserted',
      'informationSource',
      'derivedFrom',
      'reasonCode',
      'reasonReference',
      'note',
      'dosage',
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
        fields.add(status);
      case 'statusReason':
        if (statusReason != null) {
          fields.addAll(statusReason!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'medication':
        fields.add(medicationX);
      case 'medicationX':
        fields.add(medicationX);
      case 'medicationCodeableConcept':
        if (medicationX is CodeableConcept) {
          fields.add(medicationX);
        }
      case 'medicationReference':
        if (medicationX is Reference) {
          fields.add(medicationX);
        }
      case 'subject':
        fields.add(subject);
      case 'context':
        if (context != null) {
          fields.add(context!);
        }
      case 'effective':
        fields.add(effectiveX!);
      case 'effectiveX':
        fields.add(effectiveX!);
      case 'effectiveDateTime':
        if (effectiveX is FhirDateTime) {
          fields.add(effectiveX!);
        }
      case 'effectivePeriod':
        if (effectiveX is Period) {
          fields.add(effectiveX!);
        }
      case 'dateAsserted':
        if (dateAsserted != null) {
          fields.add(dateAsserted!);
        }
      case 'informationSource':
        if (informationSource != null) {
          fields.add(informationSource!);
        }
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.addAll(derivedFrom!);
        }
      case 'reasonCode':
        if (reasonCode != null) {
          fields.addAll(reasonCode!);
        }
      case 'reasonReference':
        if (reasonReference != null) {
          fields.addAll(reasonReference!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'dosage':
        if (dosage != null) {
          fields.addAll(dosage!);
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
          if (child is MedicationStatementStatusCodes) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statusReason':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?statusReason, ...child];
            return copyWith(statusReason: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?statusReason, child];
            return copyWith(statusReason: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConcept) {
            return copyWith(category: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'medicationX':
        {
          if (child is MedicationXMedicationStatement) {
            return copyWith(medicationX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(medicationX: child);
            }
            if (child is Reference) {
              return copyWith(medicationX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'medicationCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(medicationX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'medicationReference':
        {
          if (child is Reference) {
            return copyWith(medicationX: child);
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
      case 'effectiveX':
        {
          if (child is EffectiveXMedicationStatement) {
            return copyWith(effectiveX: child);
          } else {
            if (child is FhirDateTime) {
              return copyWith(effectiveX: child);
            }
            if (child is Period) {
              return copyWith(effectiveX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effectiveFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(effectiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectivePeriod':
        {
          if (child is Period) {
            return copyWith(effectiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dateAsserted':
        {
          if (child is FhirDateTime) {
            return copyWith(dateAsserted: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'informationSource':
        {
          if (child is Reference) {
            return copyWith(informationSource: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'derivedFrom':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?derivedFrom, ...child];
            return copyWith(derivedFrom: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?derivedFrom, child];
            return copyWith(derivedFrom: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reasonCode':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?reasonCode, ...child];
            return copyWith(reasonCode: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?reasonCode, child];
            return copyWith(reasonCode: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reasonReference':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?reasonReference, ...child];
            return copyWith(reasonReference: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?reasonReference, child];
            return copyWith(reasonReference: newList);
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
            final newList = [...?note, child];
            return copyWith(note: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dosage':
        {
          if (child is List<Dosage>) {
            // Add all elements from passed list
            final newList = [...?dosage, ...child];
            return copyWith(dosage: newList);
          } else if (child is Dosage) {
            // Add single element to existing list or create new list
            final newList = [...?dosage, child];
            return copyWith(dosage: newList);
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
      case 'statusReason':
        return ['CodeableConcept'];
      case 'category':
        return ['CodeableConcept'];
      case 'medication':
      case 'medicationX':
        return ['CodeableConcept', 'Reference'];
      case 'medicationCodeableConcept':
        return ['CodeableConcept'];
      case 'medicationReference':
        return ['Reference'];
      case 'subject':
        return ['Reference'];
      case 'context':
        return ['Reference'];
      case 'effective':
      case 'effectiveX':
        return ['FhirDateTime', 'Period'];
      case 'effectiveDateTime':
        return ['FhirDateTime'];
      case 'effectivePeriod':
        return ['Period'];
      case 'dateAsserted':
        return ['FhirDateTime'];
      case 'informationSource':
        return ['Reference'];
      case 'derivedFrom':
        return ['Reference'];
      case 'reasonCode':
        return ['CodeableConcept'];
      case 'reasonReference':
        return ['Reference'];
      case 'note':
        return ['Annotation'];
      case 'dosage':
        return ['Dosage'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationStatement]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationStatement createProperty(
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
            status: MedicationStatementStatusCodes.empty(),
          );
        }
      case 'statusReason':
        {
          return copyWith(
            statusReason: <CodeableConcept>[],
          );
        }
      case 'category':
        {
          return copyWith(
            category: CodeableConcept.empty(),
          );
        }
      case 'medication':
      case 'medicationX':
      case 'medicationCodeableConcept':
        {
          return copyWith(
            medicationX: CodeableConcept.empty(),
          );
        }
      case 'medicationReference':
        {
          return copyWith(
            medicationX: Reference.empty(),
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
      case 'effective':
      case 'effectiveX':
      case 'effectiveDateTime':
        {
          return copyWith(
            effectiveX: FhirDateTime.empty(),
          );
        }
      case 'effectivePeriod':
        {
          return copyWith(
            effectiveX: Period.empty(),
          );
        }
      case 'dateAsserted':
        {
          return copyWith(
            dateAsserted: FhirDateTime.empty(),
          );
        }
      case 'informationSource':
        {
          return copyWith(
            informationSource: Reference.empty(),
          );
        }
      case 'derivedFrom':
        {
          return copyWith(
            derivedFrom: <Reference>[],
          );
        }
      case 'reasonCode':
        {
          return copyWith(
            reasonCode: <CodeableConcept>[],
          );
        }
      case 'reasonReference':
        {
          return copyWith(
            reasonReference: <Reference>[],
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      case 'dosage':
        {
          return copyWith(
            dosage: <Dosage>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationStatement clear({
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
    bool statusReason = false,
    bool category = false,
    bool context = false,
    bool effective = false,
    bool dateAsserted = false,
    bool informationSource = false,
    bool derivedFrom = false,
    bool reasonCode = false,
    bool reasonReference = false,
    bool note = false,
    bool dosage = false,
  }) {
    return MedicationStatement(
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
      status: status,
      statusReason: statusReason ? null : this.statusReason,
      category: category ? null : this.category,
      medicationX: medicationX,
      subject: subject,
      context: context ? null : this.context,
      effectiveX: effective ? null : effectiveX,
      dateAsserted: dateAsserted ? null : this.dateAsserted,
      informationSource: informationSource ? null : this.informationSource,
      derivedFrom: derivedFrom ? null : this.derivedFrom,
      reasonCode: reasonCode ? null : this.reasonCode,
      reasonReference: reasonReference ? null : this.reasonReference,
      note: note ? null : this.note,
      dosage: dosage ? null : this.dosage,
    );
  }

  @override
  MedicationStatement clone() => throw UnimplementedError();
  @override
  MedicationStatement copyWith({
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
    MedicationStatementStatusCodes? status,
    List<CodeableConcept>? statusReason,
    CodeableConcept? category,
    MedicationXMedicationStatement? medicationX,
    Reference? subject,
    Reference? context,
    EffectiveXMedicationStatement? effectiveX,
    FhirDateTime? dateAsserted,
    Reference? informationSource,
    List<Reference>? derivedFrom,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    List<Dosage>? dosage,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return MedicationStatement(
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
      statusReason: statusReason
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.statusReason',
                ),
              )
              .toList() ??
          this.statusReason,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      medicationX: medicationX?.copyWith(
            objectPath: '$newObjectPath.medicationX',
          ) as MedicationXMedicationStatement? ??
          this.medicationX,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      context: context?.copyWith(
            objectPath: '$newObjectPath.context',
          ) ??
          this.context,
      effectiveX: effectiveX?.copyWith(
            objectPath: '$newObjectPath.effectiveX',
          ) as EffectiveXMedicationStatement? ??
          this.effectiveX,
      dateAsserted: dateAsserted?.copyWith(
            objectPath: '$newObjectPath.dateAsserted',
          ) ??
          this.dateAsserted,
      informationSource: informationSource?.copyWith(
            objectPath: '$newObjectPath.informationSource',
          ) ??
          this.informationSource,
      derivedFrom: derivedFrom
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.derivedFrom',
                ),
              )
              .toList() ??
          this.derivedFrom,
      reasonCode: reasonCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonCode',
                ),
              )
              .toList() ??
          this.reasonCode,
      reasonReference: reasonReference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonReference',
                ),
              )
              .toList() ??
          this.reasonReference,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      dosage: dosage
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.dosage',
                ),
              )
              .toList() ??
          this.dosage,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationStatement) {
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
    if (!listEquals<CodeableConcept>(
      statusReason,
      o.statusReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      medicationX,
      o.medicationX,
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
      effectiveX,
      o.effectiveX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dateAsserted,
      o.dateAsserted,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      informationSource,
      o.informationSource,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<Dosage>(
      dosage,
      o.dosage,
    )) {
      return false;
    }
    return true;
  }
}
