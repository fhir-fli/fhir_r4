import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        MedicationStatement,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [MedicationStatementBuilder]
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
class MedicationStatementBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [MedicationStatementBuilder]

  MedicationStatementBuilder({
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
    this.statusReason,
    this.category,
    this.medicationX,
    this.subject,
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
  /// For Builder classes, no fields are required
  factory MedicationStatementBuilder.empty() => MedicationStatementBuilder(
        status: MedicationStatementStatusCodesBuilder.values.first,
        medicationX: CodeableConceptBuilder.empty(),
        subject: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationStatementBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationStatement';
    return MedicationStatementBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<MedicationStatementStatusCodesBuilder>(
        json,
        'status',
        MedicationStatementStatusCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      statusReason: (json['statusReason'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.statusReason',
              },
            ),
          )
          .toList(),
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      medicationX:
          JsonParser.parsePolymorphic<MedicationXMedicationStatementBuilder>(
        json,
        {
          'medicationCodeableConcept': CodeableConceptBuilder.fromJson,
          'medicationReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      context: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'context',
        ReferenceBuilder.fromJson,
        '$objectPath.context',
      ),
      effectiveX:
          JsonParser.parsePolymorphic<EffectiveXMedicationStatementBuilder>(
        json,
        {
          'effectiveDateTime': FhirDateTimeBuilder.fromJson,
          'effectivePeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      dateAsserted: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'dateAsserted',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.dateAsserted',
      ),
      informationSource: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'informationSource',
        ReferenceBuilder.fromJson,
        '$objectPath.informationSource',
      ),
      derivedFrom: (json['derivedFrom'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.derivedFrom',
              },
            ),
          )
          .toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonCode',
              },
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonReference',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      dosage: (json['dosage'] as List<dynamic>?)
          ?.map<DosageBuilder>(
            (v) => DosageBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dosage',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationStatementBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationStatementBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationStatementBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationStatementBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationStatementBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationStatementBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationStatementBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationStatementBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [basedOn]
  /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// event.
  List<ReferenceBuilder>? basedOn;

  /// [partOf]
  /// A larger event of which this particular event is a component or step.
  List<ReferenceBuilder>? partOf;

  /// [status]
  /// A code representing the patient or other source's judgment about the
  /// state of the medication used that this statement is about. Generally,
  /// this will be active or completed.
  MedicationStatementStatusCodesBuilder? status;

  /// [statusReason]
  /// Captures the reason for the current state of the MedicationStatement.
  List<CodeableConceptBuilder>? statusReason;

  /// [category]
  /// Indicates where the medication is expected to be consumed or
  /// administered.
  CodeableConceptBuilder? category;

  /// [medicationX]
  /// Identifies the medication being administered. This is either a link to
  /// a resource representing the details of the medication or a simple
  /// attribute carrying a code that identifies the medication from a known
  /// list of medications.
  MedicationXMedicationStatementBuilder? medicationX;

  /// Getter for [medicationCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get medicationCodeableConcept =>
      medicationX?.isAs<CodeableConceptBuilder>();

  /// Getter for [medicationReference] as a ReferenceBuilder
  ReferenceBuilder? get medicationReference =>
      medicationX?.isAs<ReferenceBuilder>();

  /// [subject]
  /// The person, animal or group who is/was taking the medication.
  ReferenceBuilder? subject;

  /// [context]
  /// The encounter or episode of care that establishes the context for this
  /// MedicationStatement.
  ReferenceBuilder? context;

  /// [effectiveX]
  /// The interval of time during which it is being asserted that the patient
  /// is/was/will be taking the medication (or was not taking, when the
  /// MedicationStatement.taken element is No).
  EffectiveXMedicationStatementBuilder? effectiveX;

  /// Getter for [effectiveDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get effectiveDateTime =>
      effectiveX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [effectivePeriod] as a PeriodBuilder
  PeriodBuilder? get effectivePeriod => effectiveX?.isAs<PeriodBuilder>();

  /// [dateAsserted]
  /// The date when the medication statement was asserted by the information
  /// source.
  FhirDateTimeBuilder? dateAsserted;

  /// [informationSource]
  /// The person or organization that provided the information about the
  /// taking of this medication. Note: Use derivedFrom when a
  /// MedicationStatement is derived from other resources, e.g. Claim or
  /// MedicationRequest.
  ReferenceBuilder? informationSource;

  /// [derivedFrom]
  /// Allows linking the MedicationStatement to the underlying
  /// MedicationRequest, or to other information that supports or is used to
  /// derive the MedicationStatement.
  List<ReferenceBuilder>? derivedFrom;

  /// [reasonCode]
  /// A reason for why the medication is being/was taken.
  List<CodeableConceptBuilder>? reasonCode;

  /// [reasonReference]
  /// Condition or observation that supports why the medication is being/was
  /// taken.
  List<ReferenceBuilder>? reasonReference;

  /// [note]
  /// Provides extra information about the medication statement that is not
  /// conveyed by the other attributes.
  List<AnnotationBuilder>? note;

  /// [dosage]
  /// Indicates how the medication is/was or should be taken by the patient.
  List<DosageBuilder>? dosage;

  /// Converts a [MedicationStatementBuilder]
  /// to [MedicationStatement]
  @override
  MedicationStatement build() => MedicationStatement.fromJson(toJson());

  /// Converts a [MedicationStatementBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
    addField('basedOn', basedOn);
    addField('partOf', partOf);
    addField('status', status);
    addField('statusReason', statusReason);
    addField('category', category);
    if (medicationX != null) {
      final fhirType = medicationX!.fhirType;
      addField('medication${fhirType.capitalize()}', medicationX);
    }

    addField('subject', subject);
    addField('context', context);
    if (effectiveX != null) {
      final fhirType = effectiveX!.fhirType;
      addField('effective${fhirType.capitalize()}', effectiveX);
    }

    addField('dateAsserted', dateAsserted);
    addField('informationSource', informationSource);
    addField('derivedFrom', derivedFrom);
    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('note', note);
    addField('dosage', dosage);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      case 'statusReason':
        if (statusReason != null) {
          fields.addAll(statusReason!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'medication':
        if (medicationX != null) {
          fields.add(medicationX!);
        }
      case 'medicationX':
        if (medicationX != null) {
          fields.add(medicationX!);
        }
      case 'medicationCodeableConcept':
        if (medicationX is CodeableConceptBuilder) {
          fields.add(medicationX!);
        }
      case 'medicationReference':
        if (medicationX is ReferenceBuilder) {
          fields.add(medicationX!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'context':
        if (context != null) {
          fields.add(context!);
        }
      case 'effective':
        if (effectiveX != null) {
          fields.add(effectiveX!);
        }
      case 'effectiveX':
        if (effectiveX != null) {
          fields.add(effectiveX!);
        }
      case 'effectiveDateTime':
        if (effectiveX is FhirDateTimeBuilder) {
          fields.add(effectiveX!);
        }
      case 'effectivePeriod':
        if (effectiveX is PeriodBuilder) {
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'basedOn':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            basedOn = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            basedOn = [
              ...(basedOn ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'partOf':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            partOf = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            partOf = [
              ...(partOf ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is MedicationStatementStatusCodesBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    MedicationStatementStatusCodesBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'statusReason':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            statusReason = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            statusReason = [
              ...(statusReason ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'medication':
      case 'medicationX':
        {
          if (child is MedicationXMedicationStatementBuilder) {
            medicationX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              medicationX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              medicationX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'medicationCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            medicationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'medicationReference':
        {
          if (child is ReferenceBuilder) {
            medicationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'context':
        {
          if (child is ReferenceBuilder) {
            context = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effective':
      case 'effectiveX':
        {
          if (child is EffectiveXMedicationStatementBuilder) {
            effectiveX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              effectiveX = child;
              return;
            }
            if (child is PeriodBuilder) {
              effectiveX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effectiveDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            effectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectivePeriod':
        {
          if (child is PeriodBuilder) {
            effectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dateAsserted':
        {
          if (child is FhirDateTimeBuilder) {
            dateAsserted = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                dateAsserted = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'informationSource':
        {
          if (child is ReferenceBuilder) {
            informationSource = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'derivedFrom':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            derivedFrom = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            derivedFrom = [
              ...(derivedFrom ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reasonCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            reasonCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            reasonCode = [
              ...(reasonCode ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reasonReference':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            reasonReference = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            reasonReference = [
              ...(reasonReference ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [
              ...(note ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dosage':
        {
          if (child is List<DosageBuilder>) {
            // Replace or create new list
            dosage = child;
            return;
          } else if (child is DosageBuilder) {
            // Add single element to existing list or create new list
            dosage = [
              ...(dosage ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'partOf':
        return ['ReferenceBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'statusReason':
        return ['CodeableConceptBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'medication':
      case 'medicationX':
        return [
          'CodeableConceptBuilder',
          'ReferenceBuilder',
        ];
      case 'medicationCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'medicationReference':
        return ['ReferenceBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'context':
        return ['ReferenceBuilder'];
      case 'effective':
      case 'effectiveX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
        ];
      case 'effectiveDateTime':
        return ['FhirDateTimeBuilder'];
      case 'effectivePeriod':
        return ['PeriodBuilder'];
      case 'dateAsserted':
        return ['FhirDateTimeBuilder'];
      case 'informationSource':
        return ['ReferenceBuilder'];
      case 'derivedFrom':
        return ['ReferenceBuilder'];
      case 'reasonCode':
        return ['CodeableConceptBuilder'];
      case 'reasonReference':
        return ['ReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'dosage':
        return ['DosageBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationStatementBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'partOf':
        {
          partOf = <ReferenceBuilder>[];
          return;
        }
      case 'status':
        {
          status = MedicationStatementStatusCodesBuilder.empty();
          return;
        }
      case 'statusReason':
        {
          statusReason = <CodeableConceptBuilder>[];
          return;
        }
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'medication':
      case 'medicationX':
      case 'medicationCodeableConcept':
        {
          medicationX = CodeableConceptBuilder.empty();
          return;
        }
      case 'medicationReference':
        {
          medicationX = ReferenceBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'context':
        {
          context = ReferenceBuilder.empty();
          return;
        }
      case 'effective':
      case 'effectiveX':
      case 'effectiveDateTime':
        {
          effectiveX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'effectivePeriod':
        {
          effectiveX = PeriodBuilder.empty();
          return;
        }
      case 'dateAsserted':
        {
          dateAsserted = FhirDateTimeBuilder.empty();
          return;
        }
      case 'informationSource':
        {
          informationSource = ReferenceBuilder.empty();
          return;
        }
      case 'derivedFrom':
        {
          derivedFrom = <ReferenceBuilder>[];
          return;
        }
      case 'reasonCode':
        {
          reasonCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'reasonReference':
        {
          reasonReference = <ReferenceBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'dosage':
        {
          dosage = <DosageBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
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
    bool statusReason = false,
    bool category = false,
    bool medication = false,
    bool subject = false,
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
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (basedOn) this.basedOn = null;
    if (partOf) this.partOf = null;
    if (status) this.status = null;
    if (statusReason) this.statusReason = null;
    if (category) this.category = null;
    if (medication) medicationX = null;
    if (subject) this.subject = null;
    if (context) this.context = null;
    if (effective) effectiveX = null;
    if (dateAsserted) this.dateAsserted = null;
    if (informationSource) this.informationSource = null;
    if (derivedFrom) this.derivedFrom = null;
    if (reasonCode) this.reasonCode = null;
    if (reasonReference) this.reasonReference = null;
    if (note) this.note = null;
    if (dosage) this.dosage = null;
  }

  @override
  MedicationStatementBuilder clone() => throw UnimplementedError();
  @override
  MedicationStatementBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    List<ReferenceBuilder>? basedOn,
    List<ReferenceBuilder>? partOf,
    MedicationStatementStatusCodesBuilder? status,
    List<CodeableConceptBuilder>? statusReason,
    CodeableConceptBuilder? category,
    MedicationXMedicationStatementBuilder? medicationX,
    ReferenceBuilder? subject,
    ReferenceBuilder? context,
    EffectiveXMedicationStatementBuilder? effectiveX,
    FhirDateTimeBuilder? dateAsserted,
    ReferenceBuilder? informationSource,
    List<ReferenceBuilder>? derivedFrom,
    List<CodeableConceptBuilder>? reasonCode,
    List<ReferenceBuilder>? reasonReference,
    List<AnnotationBuilder>? note,
    List<DosageBuilder>? dosage,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = MedicationStatementBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      category: category ?? this.category,
      medicationX: medicationX ?? this.medicationX,
      subject: subject ?? this.subject,
      context: context ?? this.context,
      effectiveX: effectiveX ?? this.effectiveX,
      dateAsserted: dateAsserted ?? this.dateAsserted,
      informationSource: informationSource ?? this.informationSource,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      note: note ?? this.note,
      dosage: dosage ?? this.dosage,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MedicationStatementBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<DosageBuilder>(
      dosage,
      o.dosage,
    )) {
      return false;
    }
    return true;
  }
}
