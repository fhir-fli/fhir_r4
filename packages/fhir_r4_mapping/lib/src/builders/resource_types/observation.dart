import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        Observation,
        ObservationComponent,
        ObservationReferenceRange,
        R4ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ObservationBuilder]
/// Measurements and simple assertions made about a patient, device or
/// other subject.
class ObservationBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ObservationBuilder]

  ObservationBuilder({
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
    this.category,
    this.code,
    this.subject,
    this.focus,
    this.encounter,
    this.effectiveX,
    this.issued,
    this.performer,
    this.valueX,
    this.dataAbsentReason,
    this.interpretation,
    this.note,
    this.bodySite,
    this.method,
    this.specimen,
    this.device,
    this.referenceRange,
    this.hasMember,
    this.derivedFrom,
    this.component,
  }) : super(
          objectPath: 'Observation',
          resourceType: R4ResourceType.Observation,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ObservationBuilder.empty() => ObservationBuilder(
        status: ObservationStatusBuilder.values.first,
        code: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Observation';
    return ObservationBuilder(
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
      status: JsonParser.parsePrimitive<ObservationStatusBuilder>(
        json,
        'status',
        ObservationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.focus',
              },
            ),
          )
          .toList(),
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      effectiveX: JsonParser.parsePolymorphic<EffectiveXObservationBuilder>(
        json,
        {
          'effectiveDateTime': FhirDateTimeBuilder.fromJson,
          'effectivePeriod': PeriodBuilder.fromJson,
          'effectiveTiming': TimingBuilder.fromJson,
          'effectiveInstant': FhirInstantBuilder.fromJson,
        },
        objectPath,
      ),
      issued: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'issued',
        FhirInstantBuilder.fromJson,
        '$objectPath.issued',
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      valueX: JsonParser.parsePolymorphic<ValueXObservationBuilder>(
        json,
        {
          'valueQuantity': QuantityBuilder.fromJson,
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valueRatio': RatioBuilder.fromJson,
          'valueSampledData': SampledDataBuilder.fromJson,
          'valueTime': FhirTimeBuilder.fromJson,
          'valueDateTime': FhirDateTimeBuilder.fromJson,
          'valuePeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      dataAbsentReason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'dataAbsentReason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.dataAbsentReason',
      ),
      interpretation: (json['interpretation'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.interpretation',
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
      bodySite: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'bodySite',
        CodeableConceptBuilder.fromJson,
        '$objectPath.bodySite',
      ),
      method: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'method',
        CodeableConceptBuilder.fromJson,
        '$objectPath.method',
      ),
      specimen: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'specimen',
        ReferenceBuilder.fromJson,
        '$objectPath.specimen',
      ),
      device: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'device',
        ReferenceBuilder.fromJson,
        '$objectPath.device',
      ),
      referenceRange: (json['referenceRange'] as List<dynamic>?)
          ?.map<ObservationReferenceRangeBuilder>(
            (v) => ObservationReferenceRangeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.referenceRange',
              },
            ),
          )
          .toList(),
      hasMember: (json['hasMember'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.hasMember',
              },
            ),
          )
          .toList(),
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
      component: (json['component'] as List<dynamic>?)
          ?.map<ObservationComponentBuilder>(
            (v) => ObservationComponentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.component',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ObservationBuilder]
  /// from a [String] or [YamlMap] object
  factory ObservationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ObservationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Observation';

  /// [identifier]
  /// A unique identifier assigned to this observation.
  List<IdentifierBuilder>? identifier;

  /// [basedOn]
  /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// event. For example, a MedicationRequest may require a patient to have
  /// laboratory test performed before it is dispensed.
  List<ReferenceBuilder>? basedOn;

  /// [partOf]
  /// A larger event of which this particular Observation is a component or
  /// step. For example, an observation as part of a procedure.
  List<ReferenceBuilder>? partOf;

  /// [status]
  /// The status of the result value.
  ObservationStatusBuilder? status;

  /// [category]
  /// A code that classifies the general type of observation being made.
  List<CodeableConceptBuilder>? category;

  /// [code]
  /// Describes what was observed. Sometimes this is called the observation
  /// "name".
  CodeableConceptBuilder? code;

  /// [subject]
  /// The patient, or group of patients, location, or device this observation
  /// is about and into whose record the observation is placed. If the actual
  /// focus of the observation is different from the subject (or a sample of,
  /// part, or region of the subject), the `focus` element or the `code`
  /// itself specifies the actual focus of the observation.
  ReferenceBuilder? subject;

  /// [focus]
  /// The actual focus of an observation when it is not the patient of record
  /// representing something or someone associated with the patient such as a
  /// spouse, parent, fetus, or donor. For example, fetus observations in a
  /// mother's record. The focus of an observation could also be an existing
  /// condition, an intervention, the subject's diet, another observation of
  /// the subject, or a body structure such as tumor or implanted device. An
  /// example use case would be using the Observation resource to capture
  /// whether the mother is trained to change her child's tracheostomy tube.
  /// In this example, the child is the patient of record and the mother is
  /// the focus.
  List<ReferenceBuilder>? focus;

  /// [encounter]
  /// The healthcare event (e.g. a patient and healthcare provider
  /// interaction) during which this observation is made.
  ReferenceBuilder? encounter;

  /// [effectiveX]
  /// The time or time-period the observed value is asserted as being true.
  /// For biological subjects - e.g. human patients - this is usually called
  /// the "physiologically relevant time". This is usually either the time of
  /// the procedure or of specimen collection, but very often the source of
  /// the date/time is not known, only the date/time itself.
  EffectiveXObservationBuilder? effectiveX;

  /// Getter for [effectiveDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get effectiveDateTime =>
      effectiveX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [effectivePeriod] as a PeriodBuilder
  PeriodBuilder? get effectivePeriod => effectiveX?.isAs<PeriodBuilder>();

  /// Getter for [effectiveTiming] as a TimingBuilder
  TimingBuilder? get effectiveTiming => effectiveX?.isAs<TimingBuilder>();

  /// Getter for [effectiveInstant] as a FhirInstantBuilder
  FhirInstantBuilder? get effectiveInstant =>
      effectiveX?.isAs<FhirInstantBuilder>();

  /// [issued]
  /// The date and time this version of the observation was made available to
  /// providers, typically after the results have been reviewed and verified.
  FhirInstantBuilder? issued;

  /// [performer]
  /// Who was responsible for asserting the observed value as "true".
  List<ReferenceBuilder>? performer;

  /// [valueX]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  ValueXObservationBuilder? valueX;

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valueRatio] as a RatioBuilder
  RatioBuilder? get valueRatio => valueX?.isAs<RatioBuilder>();

  /// Getter for [valueSampledData] as a SampledDataBuilder
  SampledDataBuilder? get valueSampledData =>
      valueX?.isAs<SampledDataBuilder>();

  /// Getter for [valueTime] as a FhirTimeBuilder
  FhirTimeBuilder? get valueTime => valueX?.isAs<FhirTimeBuilder>();

  /// Getter for [valueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get valueDateTime => valueX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [valuePeriod] as a PeriodBuilder
  PeriodBuilder? get valuePeriod => valueX?.isAs<PeriodBuilder>();

  /// [dataAbsentReason]
  /// Provides a reason why the expected value in the element
  /// Observation.value[x] is missing.
  CodeableConceptBuilder? dataAbsentReason;

  /// [interpretation]
  /// A categorical assessment of an observation value. For example, high,
  /// low, normal.
  List<CodeableConceptBuilder>? interpretation;

  /// [note]
  /// Comments about the observation or the results.
  List<AnnotationBuilder>? note;

  /// [bodySite]
  /// Indicates the site on the subject's body where the observation was made
  /// (i.e. the target site).
  CodeableConceptBuilder? bodySite;

  /// [method]
  /// Indicates the mechanism used to perform the observation.
  CodeableConceptBuilder? method;

  /// [specimen]
  /// The specimen that was used when this observation was made.
  ReferenceBuilder? specimen;

  /// [device]
  /// The device used to generate the observation data.
  ReferenceBuilder? device;

  /// [referenceRange]
  /// Guidance on how to interpret the value by comparison to a normal or
  /// recommended range. Multiple reference ranges are interpreted as an
  /// "OR". In other words, to represent two distinct target populations, two
  /// `referenceRange` elements would be used.
  List<ObservationReferenceRangeBuilder>? referenceRange;

  /// [hasMember]
  /// This observation is a group observation (e.g. a battery, a panel of
  /// tests, a set of vital sign measurements) that includes the target as a
  /// member of the group.
  List<ReferenceBuilder>? hasMember;

  /// [derivedFrom]
  /// The target resource that represents a measurement from which this
  /// observation value is derived. For example, a calculated anion gap or a
  /// fetal measurement based on an ultrasound image.
  List<ReferenceBuilder>? derivedFrom;

  /// [component]
  /// Some observations have multiple component observations. These component
  /// observations are expressed as separate code value pairs that share the
  /// same attributes. Examples include systolic and diastolic component
  /// observations for blood pressure measurement and multiple component
  /// observations for genetics observations.
  List<ObservationComponentBuilder>? component;

  /// Converts a [ObservationBuilder]
  /// to [Observation]
  @override
  Observation build() => Observation.fromJson(toJson());

  /// Converts a [ObservationBuilder]
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
    addField('category', category);
    addField('code', code);
    addField('subject', subject);
    addField('focus', focus);
    addField('encounter', encounter);
    if (effectiveX != null) {
      final fhirType = effectiveX!.fhirType;
      addField('effective${fhirType.capitalizeFirstLetter()}', effectiveX);
    }

    addField('issued', issued);
    addField('performer', performer);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
    }

    addField('dataAbsentReason', dataAbsentReason);
    addField('interpretation', interpretation);
    addField('note', note);
    addField('bodySite', bodySite);
    addField('method', method);
    addField('specimen', specimen);
    addField('device', device);
    addField('referenceRange', referenceRange);
    addField('hasMember', hasMember);
    addField('derivedFrom', derivedFrom);
    addField('component', component);
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
      'category',
      'code',
      'subject',
      'focus',
      'encounter',
      'effectiveX',
      'issued',
      'performer',
      'valueX',
      'dataAbsentReason',
      'interpretation',
      'note',
      'bodySite',
      'method',
      'specimen',
      'device',
      'referenceRange',
      'hasMember',
      'derivedFrom',
      'component',
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
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'focus':
        if (focus != null) {
          fields.addAll(focus!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
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
      case 'effectiveTiming':
        if (effectiveX is TimingBuilder) {
          fields.add(effectiveX!);
        }
      case 'effectiveInstant':
        if (effectiveX is FhirInstantBuilder) {
          fields.add(effectiveX!);
        }
      case 'issued':
        if (issued != null) {
          fields.add(issued!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueRatio':
        if (valueX is RatioBuilder) {
          fields.add(valueX!);
        }
      case 'valueSampledData':
        if (valueX is SampledDataBuilder) {
          fields.add(valueX!);
        }
      case 'valueTime':
        if (valueX is FhirTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valuePeriod':
        if (valueX is PeriodBuilder) {
          fields.add(valueX!);
        }
      case 'dataAbsentReason':
        if (dataAbsentReason != null) {
          fields.add(dataAbsentReason!);
        }
      case 'interpretation':
        if (interpretation != null) {
          fields.addAll(interpretation!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.add(bodySite!);
        }
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'specimen':
        if (specimen != null) {
          fields.add(specimen!);
        }
      case 'device':
        if (device != null) {
          fields.add(device!);
        }
      case 'referenceRange':
        if (referenceRange != null) {
          fields.addAll(referenceRange!);
        }
      case 'hasMember':
        if (hasMember != null) {
          fields.addAll(hasMember!);
        }
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.addAll(derivedFrom!);
        }
      case 'component':
        if (component != null) {
          fields.addAll(component!);
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
          if (child is ObservationStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ObservationStatusBuilder(stringValue);
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
      case 'category':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            category = [
              ...(category ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'focus':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            focus = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            focus = [
              ...(focus ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'encounter':
        {
          if (child is ReferenceBuilder) {
            encounter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effective':
      case 'effectiveX':
        {
          if (child is EffectiveXObservationBuilder) {
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
            if (child is TimingBuilder) {
              effectiveX = child;
              return;
            }
            if (child is FhirInstantBuilder) {
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
      case 'effectiveTiming':
        {
          if (child is TimingBuilder) {
            effectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectiveInstant':
        {
          if (child is FhirInstantBuilder) {
            effectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'issued':
        {
          if (child is FhirInstantBuilder) {
            issued = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInstantBuilder.tryParse(stringValue);
              if (converted != null) {
                issued = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performer':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            performer = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            performer = [
              ...(performer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXObservationBuilder) {
            valueX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
              valueX = child;
              return;
            }
            if (child is RatioBuilder) {
              valueX = child;
              return;
            }
            if (child is SampledDataBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is PeriodBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueInteger':
        {
          if (child is FhirIntegerBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is RangeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRatio':
        {
          if (child is RatioBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueSampledData':
        {
          if (child is SampledDataBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTime':
        {
          if (child is FhirTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valuePeriod':
        {
          if (child is PeriodBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dataAbsentReason':
        {
          if (child is CodeableConceptBuilder) {
            dataAbsentReason = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'interpretation':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            interpretation = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            interpretation = [
              ...(interpretation ?? []),
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
      case 'bodySite':
        {
          if (child is CodeableConceptBuilder) {
            bodySite = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'method':
        {
          if (child is CodeableConceptBuilder) {
            method = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'specimen':
        {
          if (child is ReferenceBuilder) {
            specimen = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'device':
        {
          if (child is ReferenceBuilder) {
            device = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'referenceRange':
        {
          if (child is List<ObservationReferenceRangeBuilder>) {
            // Replace or create new list
            referenceRange = child;
            return;
          } else if (child is ObservationReferenceRangeBuilder) {
            // Add single element to existing list or create new list
            referenceRange = [
              ...(referenceRange ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'hasMember':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            hasMember = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            hasMember = [
              ...(hasMember ?? []),
              child,
            ];
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
      case 'component':
        {
          if (child is List<ObservationComponentBuilder>) {
            // Replace or create new list
            component = child;
            return;
          } else if (child is ObservationComponentBuilder) {
            // Add single element to existing list or create new list
            component = [
              ...(component ?? []),
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
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'focus':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'effective':
      case 'effectiveX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
          'TimingBuilder',
          'FhirInstantBuilder',
        ];
      case 'effectiveDateTime':
        return ['FhirDateTimeBuilder'];
      case 'effectivePeriod':
        return ['PeriodBuilder'];
      case 'effectiveTiming':
        return ['TimingBuilder'];
      case 'effectiveInstant':
        return ['FhirInstantBuilder'];
      case 'issued':
        return ['FhirInstantBuilder'];
      case 'performer':
        return ['ReferenceBuilder'];
      case 'value':
      case 'valueX':
        return [
          'QuantityBuilder',
          'CodeableConceptBuilder',
          'FhirStringBuilder',
          'FhirBooleanBuilder',
          'FhirIntegerBuilder',
          'RangeBuilder',
          'RatioBuilder',
          'SampledDataBuilder',
          'FhirTimeBuilder',
          'FhirDateTimeBuilder',
          'PeriodBuilder',
        ];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valueRatio':
        return ['RatioBuilder'];
      case 'valueSampledData':
        return ['SampledDataBuilder'];
      case 'valueTime':
        return ['FhirTimeBuilder'];
      case 'valueDateTime':
        return ['FhirDateTimeBuilder'];
      case 'valuePeriod':
        return ['PeriodBuilder'];
      case 'dataAbsentReason':
        return ['CodeableConceptBuilder'];
      case 'interpretation':
        return ['CodeableConceptBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'bodySite':
        return ['CodeableConceptBuilder'];
      case 'method':
        return ['CodeableConceptBuilder'];
      case 'specimen':
        return ['ReferenceBuilder'];
      case 'device':
        return ['ReferenceBuilder'];
      case 'referenceRange':
        return ['ObservationReferenceRangeBuilder'];
      case 'hasMember':
        return ['ReferenceBuilder'];
      case 'derivedFrom':
        return ['ReferenceBuilder'];
      case 'component':
        return ['ObservationComponentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ObservationBuilder]
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
          status = ObservationStatusBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'focus':
        {
          focus = <ReferenceBuilder>[];
          return;
        }
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
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
      case 'effectiveTiming':
        {
          effectiveX = TimingBuilder.empty();
          return;
        }
      case 'effectiveInstant':
        {
          effectiveX = FhirInstantBuilder.empty();
          return;
        }
      case 'issued':
        {
          issued = FhirInstantBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = <ReferenceBuilder>[];
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
          return;
        }
      case 'valueRatio':
        {
          valueX = RatioBuilder.empty();
          return;
        }
      case 'valueSampledData':
        {
          valueX = SampledDataBuilder.empty();
          return;
        }
      case 'valueTime':
        {
          valueX = FhirTimeBuilder.empty();
          return;
        }
      case 'valueDateTime':
        {
          valueX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'valuePeriod':
        {
          valueX = PeriodBuilder.empty();
          return;
        }
      case 'dataAbsentReason':
        {
          dataAbsentReason = CodeableConceptBuilder.empty();
          return;
        }
      case 'interpretation':
        {
          interpretation = <CodeableConceptBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'bodySite':
        {
          bodySite = CodeableConceptBuilder.empty();
          return;
        }
      case 'method':
        {
          method = CodeableConceptBuilder.empty();
          return;
        }
      case 'specimen':
        {
          specimen = ReferenceBuilder.empty();
          return;
        }
      case 'device':
        {
          device = ReferenceBuilder.empty();
          return;
        }
      case 'referenceRange':
        {
          referenceRange = <ObservationReferenceRangeBuilder>[];
          return;
        }
      case 'hasMember':
        {
          hasMember = <ReferenceBuilder>[];
          return;
        }
      case 'derivedFrom':
        {
          derivedFrom = <ReferenceBuilder>[];
          return;
        }
      case 'component':
        {
          component = <ObservationComponentBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ObservationBuilder clone() => throw UnimplementedError();
  @override
  ObservationBuilder copyWith({
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
    ObservationStatusBuilder? status,
    List<CodeableConceptBuilder>? category,
    CodeableConceptBuilder? code,
    ReferenceBuilder? subject,
    List<ReferenceBuilder>? focus,
    ReferenceBuilder? encounter,
    EffectiveXObservationBuilder? effectiveX,
    FhirInstantBuilder? issued,
    List<ReferenceBuilder>? performer,
    ValueXObservationBuilder? valueX,
    CodeableConceptBuilder? dataAbsentReason,
    List<CodeableConceptBuilder>? interpretation,
    List<AnnotationBuilder>? note,
    CodeableConceptBuilder? bodySite,
    CodeableConceptBuilder? method,
    ReferenceBuilder? specimen,
    ReferenceBuilder? device,
    List<ObservationReferenceRangeBuilder>? referenceRange,
    List<ReferenceBuilder>? hasMember,
    List<ReferenceBuilder>? derivedFrom,
    List<ObservationComponentBuilder>? component,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ObservationBuilder(
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
      category: category ?? this.category,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      focus: focus ?? this.focus,
      encounter: encounter ?? this.encounter,
      effectiveX: effectiveX ?? this.effectiveX,
      issued: issued ?? this.issued,
      performer: performer ?? this.performer,
      valueX: valueX ?? this.valueX,
      dataAbsentReason: dataAbsentReason ?? this.dataAbsentReason,
      interpretation: interpretation ?? this.interpretation,
      note: note ?? this.note,
      bodySite: bodySite ?? this.bodySite,
      method: method ?? this.method,
      specimen: specimen ?? this.specimen,
      device: device ?? this.device,
      referenceRange: referenceRange ?? this.referenceRange,
      hasMember: hasMember ?? this.hasMember,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      component: component ?? this.component,
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
    if (o is! ObservationBuilder) {
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
      category,
      o.category,
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
    if (!listEquals<ReferenceBuilder>(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      encounter,
      o.encounter,
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
      issued,
      o.issued,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dataAbsentReason,
      o.dataAbsentReason,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      interpretation,
      o.interpretation,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      method,
      o.method,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      device,
      o.device,
    )) {
      return false;
    }
    if (!listEquals<ObservationReferenceRangeBuilder>(
      referenceRange,
      o.referenceRange,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      hasMember,
      o.hasMember,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!listEquals<ObservationComponentBuilder>(
      component,
      o.component,
    )) {
      return false;
    }
    return true;
  }
}

/// [ObservationReferenceRangeBuilder]
/// Guidance on how to interpret the value by comparison to a normal or
/// recommended range. Multiple reference ranges are interpreted as an
/// "OR". In other words, to represent two distinct target populations, two
/// `referenceRange` elements would be used.
class ObservationReferenceRangeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ObservationReferenceRangeBuilder]

  ObservationReferenceRangeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.low,
    this.high,
    this.type,
    this.appliesTo,
    this.age,
    this.text,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Observation.referenceRange',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ObservationReferenceRangeBuilder.empty() =>
      ObservationReferenceRangeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationReferenceRangeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Observation.referenceRange';
    return ObservationReferenceRangeBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
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
      low: JsonParser.parseObject<QuantityBuilder>(
        json,
        'low',
        QuantityBuilder.fromJson,
        '$objectPath.low',
      ),
      high: JsonParser.parseObject<QuantityBuilder>(
        json,
        'high',
        QuantityBuilder.fromJson,
        '$objectPath.high',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      appliesTo: (json['appliesTo'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.appliesTo',
              },
            ),
          )
          .toList(),
      age: JsonParser.parseObject<RangeBuilder>(
        json,
        'age',
        RangeBuilder.fromJson,
        '$objectPath.age',
      ),
      text: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'text',
        FhirStringBuilder.fromJson,
        '$objectPath.text',
      ),
    );
  }

  /// Deserialize [ObservationReferenceRangeBuilder]
  /// from a [String] or [YamlMap] object
  factory ObservationReferenceRangeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationReferenceRangeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationReferenceRangeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationReferenceRangeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationReferenceRangeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationReferenceRangeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ObservationReferenceRangeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ObservationReferenceRange';

  /// [low]
  /// The value of the low bound of the reference range. The low bound of the
  /// reference range endpoint is inclusive of the value (e.g. reference
  /// range is >=5 - <=9). If the low bound is omitted, it is assumed to be
  /// meaningless (e.g. reference range is <=2.3).
  QuantityBuilder? low;

  /// [high]
  /// The value of the high bound of the reference range. The high bound of
  /// the reference range endpoint is inclusive of the value (e.g. reference
  /// range is >=5 - <=9). If the high bound is omitted, it is assumed to be
  /// meaningless (e.g. reference range is >= 2.3).
  QuantityBuilder? high;

  /// [type]
  /// Codes to indicate the what part of the targeted reference population it
  /// applies to. For example, the normal or therapeutic range.
  CodeableConceptBuilder? type;

  /// [appliesTo]
  /// Codes to indicate the target population this reference range applies
  /// to. For example, a reference range may be based on the normal
  /// population or a particular sex or race. Multiple `appliesTo` are
  /// interpreted as an "AND" of the target populations. For example, to
  /// represent a target population of African American females, both a code
  /// of female and a code for African American would be used.
  List<CodeableConceptBuilder>? appliesTo;

  /// [age]
  /// The age at which this reference range is applicable. This is a neonatal
  /// age (e.g. number of weeks at term) if the meaning says so.
  RangeBuilder? age;

  /// [text]
  /// Text based reference range in an observation which may be used when a
  /// quantitative range is not appropriate for an observation. An example
  /// would be a reference value of "Negative" or a list or table of
  /// "normals".
  FhirStringBuilder? text;

  /// Converts a [ObservationReferenceRangeBuilder]
  /// to [ObservationReferenceRange]
  @override
  ObservationReferenceRange build() =>
      ObservationReferenceRange.fromJson(toJson());

  /// Converts a [ObservationReferenceRangeBuilder]
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('low', low);
    addField('high', high);
    addField('type', type);
    addField('appliesTo', appliesTo);
    addField('age', age);
    addField('text', text);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'low',
      'high',
      'type',
      'appliesTo',
      'age',
      'text',
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
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'low':
        if (low != null) {
          fields.add(low!);
        }
      case 'high':
        if (high != null) {
          fields.add(high!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'appliesTo':
        if (appliesTo != null) {
          fields.addAll(appliesTo!);
        }
      case 'age':
        if (age != null) {
          fields.add(age!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
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
      case 'low':
        {
          if (child is QuantityBuilder) {
            low = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'high':
        {
          if (child is QuantityBuilder) {
            high = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'appliesTo':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            appliesTo = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            appliesTo = [
              ...(appliesTo ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'age':
        {
          if (child is RangeBuilder) {
            age = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is FhirStringBuilder) {
            text = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                text = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'low':
        return ['QuantityBuilder'];
      case 'high':
        return ['QuantityBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'appliesTo':
        return ['CodeableConceptBuilder'];
      case 'age':
        return ['RangeBuilder'];
      case 'text':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ObservationReferenceRangeBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
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
      case 'low':
        {
          low = QuantityBuilder.empty();
          return;
        }
      case 'high':
        {
          high = QuantityBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'appliesTo':
        {
          appliesTo = <CodeableConceptBuilder>[];
          return;
        }
      case 'age':
        {
          age = RangeBuilder.empty();
          return;
        }
      case 'text':
        {
          text = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ObservationReferenceRangeBuilder clone() => throw UnimplementedError();
  @override
  ObservationReferenceRangeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    QuantityBuilder? low,
    QuantityBuilder? high,
    CodeableConceptBuilder? type,
    List<CodeableConceptBuilder>? appliesTo,
    RangeBuilder? age,
    FhirStringBuilder? text,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ObservationReferenceRangeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      low: low ?? this.low,
      high: high ?? this.high,
      type: type ?? this.type,
      appliesTo: appliesTo ?? this.appliesTo,
      age: age ?? this.age,
      text: text ?? this.text,
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
    if (o is! ObservationReferenceRangeBuilder) {
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
    if (!equalsDeepWithNull(
      low,
      o.low,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      high,
      o.high,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      appliesTo,
      o.appliesTo,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      age,
      o.age,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    return true;
  }
}

/// [ObservationComponentBuilder]
/// Some observations have multiple component observations. These component
/// observations are expressed as separate code value pairs that share the
/// same attributes. Examples include systolic and diastolic component
/// observations for blood pressure measurement and multiple component
/// observations for genetics observations.
class ObservationComponentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ObservationComponentBuilder]

  ObservationComponentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.valueX,
    this.dataAbsentReason,
    this.interpretation,
    this.referenceRange,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Observation.component',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ObservationComponentBuilder.empty() => ObservationComponentBuilder(
        code: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationComponentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Observation.component';
    return ObservationComponentBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
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
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      valueX: JsonParser.parsePolymorphic<ValueXObservationComponentBuilder>(
        json,
        {
          'valueQuantity': QuantityBuilder.fromJson,
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valueRatio': RatioBuilder.fromJson,
          'valueSampledData': SampledDataBuilder.fromJson,
          'valueTime': FhirTimeBuilder.fromJson,
          'valueDateTime': FhirDateTimeBuilder.fromJson,
          'valuePeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      dataAbsentReason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'dataAbsentReason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.dataAbsentReason',
      ),
      interpretation: (json['interpretation'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.interpretation',
              },
            ),
          )
          .toList(),
      referenceRange: (json['referenceRange'] as List<dynamic>?)
          ?.map<ObservationReferenceRangeBuilder>(
            (v) => ObservationReferenceRangeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.referenceRange',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ObservationComponentBuilder]
  /// from a [String] or [YamlMap] object
  factory ObservationComponentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationComponentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationComponentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationComponentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationComponentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationComponentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ObservationComponentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ObservationComponent';

  /// [code]
  /// Describes what was observed. Sometimes this is called the observation
  /// "code".
  CodeableConceptBuilder? code;

  /// [valueX]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  ValueXObservationComponentBuilder? valueX;

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valueRatio] as a RatioBuilder
  RatioBuilder? get valueRatio => valueX?.isAs<RatioBuilder>();

  /// Getter for [valueSampledData] as a SampledDataBuilder
  SampledDataBuilder? get valueSampledData =>
      valueX?.isAs<SampledDataBuilder>();

  /// Getter for [valueTime] as a FhirTimeBuilder
  FhirTimeBuilder? get valueTime => valueX?.isAs<FhirTimeBuilder>();

  /// Getter for [valueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get valueDateTime => valueX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [valuePeriod] as a PeriodBuilder
  PeriodBuilder? get valuePeriod => valueX?.isAs<PeriodBuilder>();

  /// [dataAbsentReason]
  /// Provides a reason why the expected value in the element
  /// Observation.component.value[x] is missing.
  CodeableConceptBuilder? dataAbsentReason;

  /// [interpretation]
  /// A categorical assessment of an observation value. For example, high,
  /// low, normal.
  List<CodeableConceptBuilder>? interpretation;

  /// [referenceRange]
  /// Guidance on how to interpret the value by comparison to a normal or
  /// recommended range.
  List<ObservationReferenceRangeBuilder>? referenceRange;

  /// Converts a [ObservationComponentBuilder]
  /// to [ObservationComponent]
  @override
  ObservationComponent build() => ObservationComponent.fromJson(toJson());

  /// Converts a [ObservationComponentBuilder]
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('code', code);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
    }

    addField('dataAbsentReason', dataAbsentReason);
    addField('interpretation', interpretation);
    addField('referenceRange', referenceRange);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'valueX',
      'dataAbsentReason',
      'interpretation',
      'referenceRange',
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
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueRatio':
        if (valueX is RatioBuilder) {
          fields.add(valueX!);
        }
      case 'valueSampledData':
        if (valueX is SampledDataBuilder) {
          fields.add(valueX!);
        }
      case 'valueTime':
        if (valueX is FhirTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valuePeriod':
        if (valueX is PeriodBuilder) {
          fields.add(valueX!);
        }
      case 'dataAbsentReason':
        if (dataAbsentReason != null) {
          fields.add(dataAbsentReason!);
        }
      case 'interpretation':
        if (interpretation != null) {
          fields.addAll(interpretation!);
        }
      case 'referenceRange':
        if (referenceRange != null) {
          fields.addAll(referenceRange!);
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
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXObservationComponentBuilder) {
            valueX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
              valueX = child;
              return;
            }
            if (child is RatioBuilder) {
              valueX = child;
              return;
            }
            if (child is SampledDataBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is PeriodBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueInteger':
        {
          if (child is FhirIntegerBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is RangeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRatio':
        {
          if (child is RatioBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueSampledData':
        {
          if (child is SampledDataBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTime':
        {
          if (child is FhirTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valuePeriod':
        {
          if (child is PeriodBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dataAbsentReason':
        {
          if (child is CodeableConceptBuilder) {
            dataAbsentReason = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'interpretation':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            interpretation = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            interpretation = [
              ...(interpretation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'referenceRange':
        {
          if (child is List<ObservationReferenceRangeBuilder>) {
            // Replace or create new list
            referenceRange = child;
            return;
          } else if (child is ObservationReferenceRangeBuilder) {
            // Add single element to existing list or create new list
            referenceRange = [
              ...(referenceRange ?? []),
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'value':
      case 'valueX':
        return [
          'QuantityBuilder',
          'CodeableConceptBuilder',
          'FhirStringBuilder',
          'FhirBooleanBuilder',
          'FhirIntegerBuilder',
          'RangeBuilder',
          'RatioBuilder',
          'SampledDataBuilder',
          'FhirTimeBuilder',
          'FhirDateTimeBuilder',
          'PeriodBuilder',
        ];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valueRatio':
        return ['RatioBuilder'];
      case 'valueSampledData':
        return ['SampledDataBuilder'];
      case 'valueTime':
        return ['FhirTimeBuilder'];
      case 'valueDateTime':
        return ['FhirDateTimeBuilder'];
      case 'valuePeriod':
        return ['PeriodBuilder'];
      case 'dataAbsentReason':
        return ['CodeableConceptBuilder'];
      case 'interpretation':
        return ['CodeableConceptBuilder'];
      case 'referenceRange':
        return ['ObservationReferenceRangeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ObservationComponentBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
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
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
          return;
        }
      case 'valueRatio':
        {
          valueX = RatioBuilder.empty();
          return;
        }
      case 'valueSampledData':
        {
          valueX = SampledDataBuilder.empty();
          return;
        }
      case 'valueTime':
        {
          valueX = FhirTimeBuilder.empty();
          return;
        }
      case 'valueDateTime':
        {
          valueX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'valuePeriod':
        {
          valueX = PeriodBuilder.empty();
          return;
        }
      case 'dataAbsentReason':
        {
          dataAbsentReason = CodeableConceptBuilder.empty();
          return;
        }
      case 'interpretation':
        {
          interpretation = <CodeableConceptBuilder>[];
          return;
        }
      case 'referenceRange':
        {
          referenceRange = <ObservationReferenceRangeBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ObservationComponentBuilder clone() => throw UnimplementedError();
  @override
  ObservationComponentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    ValueXObservationComponentBuilder? valueX,
    CodeableConceptBuilder? dataAbsentReason,
    List<CodeableConceptBuilder>? interpretation,
    List<ObservationReferenceRangeBuilder>? referenceRange,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ObservationComponentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      valueX: valueX ?? this.valueX,
      dataAbsentReason: dataAbsentReason ?? this.dataAbsentReason,
      interpretation: interpretation ?? this.interpretation,
      referenceRange: referenceRange ?? this.referenceRange,
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
    if (o is! ObservationComponentBuilder) {
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
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dataAbsentReason,
      o.dataAbsentReason,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      interpretation,
      o.interpretation,
    )) {
      return false;
    }
    if (!listEquals<ObservationReferenceRangeBuilder>(
      referenceRange,
      o.referenceRange,
    )) {
      return false;
    }
    return true;
  }
}
