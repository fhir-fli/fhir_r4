import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Specimen]
/// A sample to be used for analysis.
class Specimen extends DomainResource {
  /// Primary constructor for [Specimen]

  Specimen({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.accessionIdentifier,
    this.status,
    this.type,
    this.subject,
    this.receivedTime,
    this.parent,
    this.request,
    this.collection,
    this.processing,
    this.container,
    this.condition,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Specimen,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Specimen.fromJson(Map<String, dynamic> json) {
    return Specimen(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      accessionIdentifier: json['accessionIdentifier'] != null
          ? Identifier.fromJson(
              json['accessionIdentifier'] as Map<String, dynamic>,
            )
          : null,
      status: json['status'] != null
          ? SpecimenStatus.fromJson({
              'value': json['status'],
              '_value': json['_status'],
            })
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(
              json['subject'] as Map<String, dynamic>,
            )
          : null,
      receivedTime: json['receivedTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['receivedTime'],
              '_value': json['_receivedTime'],
            })
          : null,
      parent: json['parent'] != null
          ? (json['parent'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      request: json['request'] != null
          ? (json['request'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      collection: json['collection'] != null
          ? SpecimenCollection.fromJson(
              json['collection'] as Map<String, dynamic>,
            )
          : null,
      processing: json['processing'] != null
          ? (json['processing'] as List<dynamic>)
              .map<SpecimenProcessing>(
                (v) => SpecimenProcessing.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      container: json['container'] != null
          ? (json['container'] as List<dynamic>)
              .map<SpecimenContainer>(
                (v) => SpecimenContainer.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      condition: json['condition'] != null
          ? (json['condition'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Specimen] from a [String]
  /// or [YamlMap] object
  factory Specimen.fromYaml(dynamic yaml) => yaml is String
      ? Specimen.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Specimen.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Specimen cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Specimen]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Specimen.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Specimen.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Specimen';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Id for specimen.
  final List<Identifier>? identifier;

  /// [accessionIdentifier]
  /// The identifier assigned by the lab when accessioning specimen(s). This
  /// is not necessarily the same as the specimen identifier, depending on
  /// local lab procedures.
  final Identifier? accessionIdentifier;

  /// [status]
  /// The availability of the specimen.
  final SpecimenStatus? status;

  /// [type]
  /// The kind of material that forms the specimen.
  final CodeableConcept? type;

  /// [subject]
  /// Where the specimen came from. This may be from patient(s), from a
  /// location (e.g., the source of an environmental sample), or a sampling
  /// of a substance or a device.
  final Reference? subject;

  /// [receivedTime]
  /// Time when specimen was received for processing or testing.
  final FhirDateTime? receivedTime;

  /// [parent]
  /// Reference to the parent (source) specimen which is used when the
  /// specimen was either derived from or a component of another specimen.
  final List<Reference>? parent;

  /// [request]
  /// Details concerning a service request that required a specimen to be
  /// collected.
  final List<Reference>? request;

  /// [collection]
  /// Details concerning the specimen collection.
  final SpecimenCollection? collection;

  /// [processing]
  /// Details concerning processing and processing steps for the specimen.
  final List<SpecimenProcessing>? processing;

  /// [container]
  /// The container holding the specimen. The recursive nature of containers;
  /// i.e. blood in tube in tray in rack is not addressed here.
  final List<SpecimenContainer>? container;

  /// [condition]
  /// A mode or state of being that describes the nature of the specimen.
  final List<CodeableConcept>? condition;

  /// [note]
  /// To communicate any details or issues about the specimen or during the
  /// specimen collection. (for example: broken vial, sent with patient,
  /// frozen).
  final List<Annotation>? note;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (accessionIdentifier != null) {
      final fieldJson9 = accessionIdentifier!.toJson();
      json['accessionIdentifier'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_accessionIdentifier'] = fieldJson9['_value'];
      }
    }

    if (status != null) {
      final fieldJson10 = status!.toJson();
      json['status'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_status'] = fieldJson10['_value'];
      }
    }

    if (type != null) {
      final fieldJson11 = type!.toJson();
      json['type'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_type'] = fieldJson11['_value'];
      }
    }

    if (subject != null) {
      final fieldJson12 = subject!.toJson();
      json['subject'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_subject'] = fieldJson12['_value'];
      }
    }

    if (receivedTime != null) {
      final fieldJson13 = receivedTime!.toJson();
      json['receivedTime'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_receivedTime'] = fieldJson13['_value'];
      }
    }

    if (parent != null && parent!.isNotEmpty) {
      final fieldJson14 = parent!.map((e) => e.toJson()).toList();
      json['parent'] = fieldJson14.map((e) => e['value']).toList();
      if (fieldJson14.any((e) => e['_value'] != null)) {
        json['_parent'] = fieldJson14.map((e) => e['_value']).toList();
      }
    }

    if (request != null && request!.isNotEmpty) {
      final fieldJson15 = request!.map((e) => e.toJson()).toList();
      json['request'] = fieldJson15.map((e) => e['value']).toList();
      if (fieldJson15.any((e) => e['_value'] != null)) {
        json['_request'] = fieldJson15.map((e) => e['_value']).toList();
      }
    }

    if (collection != null) {
      final fieldJson16 = collection!.toJson();
      json['collection'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_collection'] = fieldJson16['_value'];
      }
    }

    if (processing != null && processing!.isNotEmpty) {
      final fieldJson17 = processing!.map((e) => e.toJson()).toList();
      json['processing'] = fieldJson17.map((e) => e['value']).toList();
      if (fieldJson17.any((e) => e['_value'] != null)) {
        json['_processing'] = fieldJson17.map((e) => e['_value']).toList();
      }
    }

    if (container != null && container!.isNotEmpty) {
      final fieldJson18 = container!.map((e) => e.toJson()).toList();
      json['container'] = fieldJson18.map((e) => e['value']).toList();
      if (fieldJson18.any((e) => e['_value'] != null)) {
        json['_container'] = fieldJson18.map((e) => e['_value']).toList();
      }
    }

    if (condition != null && condition!.isNotEmpty) {
      final fieldJson19 = condition!.map((e) => e.toJson()).toList();
      json['condition'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_condition'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson20 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  Specimen clone() => throw UnimplementedError();
  @override
  Specimen copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    Identifier? accessionIdentifier,
    SpecimenStatus? status,
    CodeableConcept? type,
    Reference? subject,
    FhirDateTime? receivedTime,
    List<Reference>? parent,
    List<Reference>? request,
    SpecimenCollection? collection,
    List<SpecimenProcessing>? processing,
    List<SpecimenContainer>? container,
    List<CodeableConcept>? condition,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Specimen(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      accessionIdentifier: accessionIdentifier ?? this.accessionIdentifier,
      status: status ?? this.status,
      type: type ?? this.type,
      subject: subject ?? this.subject,
      receivedTime: receivedTime ?? this.receivedTime,
      parent: parent ?? this.parent,
      request: request ?? this.request,
      collection: collection ?? this.collection,
      processing: processing ?? this.processing,
      container: container ?? this.container,
      condition: condition ?? this.condition,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SpecimenCollection]
/// Details concerning the specimen collection.
class SpecimenCollection extends BackboneElement {
  /// Primary constructor for [SpecimenCollection]

  SpecimenCollection({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.collector,
    this.collectedDateTime,
    this.collectedPeriod,
    this.duration,
    this.quantity,
    this.method,
    this.bodySite,
    this.fastingStatusCodeableConcept,
    this.fastingStatusDuration,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenCollection.fromJson(Map<String, dynamic> json) {
    return SpecimenCollection(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      collector: json['collector'] != null
          ? Reference.fromJson(
              json['collector'] as Map<String, dynamic>,
            )
          : null,
      collectedDateTime: json['collectedDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['collectedDateTime'],
              '_value': json['_collectedDateTime'],
            })
          : null,
      collectedPeriod: json['collectedPeriod'] != null
          ? Period.fromJson(
              json['collectedPeriod'] as Map<String, dynamic>,
            )
          : null,
      duration: json['duration'] != null
          ? FhirDuration.fromJson(
              json['duration'] as Map<String, dynamic>,
            )
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      method: json['method'] != null
          ? CodeableConcept.fromJson(
              json['method'] as Map<String, dynamic>,
            )
          : null,
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(
              json['bodySite'] as Map<String, dynamic>,
            )
          : null,
      fastingStatusCodeableConcept: json['fastingStatusCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['fastingStatusCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      fastingStatusDuration: json['fastingStatusDuration'] != null
          ? FhirDuration.fromJson(
              json['fastingStatusDuration'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [SpecimenCollection] from a [String]
  /// or [YamlMap] object
  factory SpecimenCollection.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenCollection.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SpecimenCollection.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('SpecimenCollection cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SpecimenCollection]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenCollection.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SpecimenCollection.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SpecimenCollection';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [collector]
  /// Person who collected the specimen.
  final Reference? collector;

  /// [collectedDateTime]
  /// Time when specimen was collected from subject - the physiologically
  /// relevant time.
  final FhirDateTime? collectedDateTime;

  /// [collectedPeriod]
  /// Time when specimen was collected from subject - the physiologically
  /// relevant time.
  final Period? collectedPeriod;

  /// [duration]
  /// The span of time over which the collection of a specimen occurred.
  final FhirDuration? duration;

  /// [quantity]
  /// The quantity of specimen collected; for instance the volume of a blood
  /// sample, or the physical measurement of an anatomic pathology sample.
  final Quantity? quantity;

  /// [method]
  /// A coded value specifying the technique that is used to perform the
  /// procedure.
  final CodeableConcept? method;

  /// [bodySite]
  /// Anatomical location from which the specimen was collected (if subject
  /// is a patient). This is the target site. This element is not used for
  /// environmental specimens.
  final CodeableConcept? bodySite;

  /// [fastingStatusCodeableConcept]
  /// Abstinence or reduction from some or all food, drink, or both, for a
  /// period of time prior to sample collection.
  final CodeableConcept? fastingStatusCodeableConcept;

  /// [fastingStatusDuration]
  /// Abstinence or reduction from some or all food, drink, or both, for a
  /// period of time prior to sample collection.
  final FhirDuration? fastingStatusDuration;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (collector != null) {
      final fieldJson3 = collector!.toJson();
      json['collector'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_collector'] = fieldJson3['_value'];
      }
    }

    if (collectedDateTime != null) {
      final fieldJson4 = collectedDateTime!.toJson();
      json['collectedDateTime'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_collectedDateTime'] = fieldJson4['_value'];
      }
    }

    if (collectedPeriod != null) {
      final fieldJson5 = collectedPeriod!.toJson();
      json['collectedPeriod'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_collectedPeriod'] = fieldJson5['_value'];
      }
    }

    if (duration != null) {
      final fieldJson6 = duration!.toJson();
      json['duration'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_duration'] = fieldJson6['_value'];
      }
    }

    if (quantity != null) {
      final fieldJson7 = quantity!.toJson();
      json['quantity'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_quantity'] = fieldJson7['_value'];
      }
    }

    if (method != null) {
      final fieldJson8 = method!.toJson();
      json['method'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_method'] = fieldJson8['_value'];
      }
    }

    if (bodySite != null) {
      final fieldJson9 = bodySite!.toJson();
      json['bodySite'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_bodySite'] = fieldJson9['_value'];
      }
    }

    if (fastingStatusCodeableConcept != null) {
      final fieldJson10 = fastingStatusCodeableConcept!.toJson();
      json['fastingStatusCodeableConcept'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_fastingStatusCodeableConcept'] = fieldJson10['_value'];
      }
    }

    if (fastingStatusDuration != null) {
      final fieldJson11 = fastingStatusDuration!.toJson();
      json['fastingStatusDuration'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_fastingStatusDuration'] = fieldJson11['_value'];
      }
    }

    return json;
  }

  @override
  SpecimenCollection clone() => throw UnimplementedError();
  @override
  SpecimenCollection copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? collector,
    FhirDateTime? collectedDateTime,
    Period? collectedPeriod,
    FhirDuration? duration,
    Quantity? quantity,
    CodeableConcept? method,
    CodeableConcept? bodySite,
    CodeableConcept? fastingStatusCodeableConcept,
    FhirDuration? fastingStatusDuration,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SpecimenCollection(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      collector: collector ?? this.collector,
      collectedDateTime: collectedDateTime ?? this.collectedDateTime,
      collectedPeriod: collectedPeriod ?? this.collectedPeriod,
      duration: duration ?? this.duration,
      quantity: quantity ?? this.quantity,
      method: method ?? this.method,
      bodySite: bodySite ?? this.bodySite,
      fastingStatusCodeableConcept:
          fastingStatusCodeableConcept ?? this.fastingStatusCodeableConcept,
      fastingStatusDuration:
          fastingStatusDuration ?? this.fastingStatusDuration,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SpecimenProcessing]
/// Details concerning processing and processing steps for the specimen.
class SpecimenProcessing extends BackboneElement {
  /// Primary constructor for [SpecimenProcessing]

  SpecimenProcessing({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.description,
    this.procedure,
    this.additive,
    this.timeDateTime,
    this.timePeriod,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenProcessing.fromJson(Map<String, dynamic> json) {
    return SpecimenProcessing(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      procedure: json['procedure'] != null
          ? CodeableConcept.fromJson(
              json['procedure'] as Map<String, dynamic>,
            )
          : null,
      additive: json['additive'] != null
          ? (json['additive'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      timeDateTime: json['timeDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['timeDateTime'],
              '_value': json['_timeDateTime'],
            })
          : null,
      timePeriod: json['timePeriod'] != null
          ? Period.fromJson(
              json['timePeriod'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [SpecimenProcessing] from a [String]
  /// or [YamlMap] object
  factory SpecimenProcessing.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenProcessing.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SpecimenProcessing.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('SpecimenProcessing cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SpecimenProcessing]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenProcessing.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SpecimenProcessing.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SpecimenProcessing';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [description]
  /// Textual description of procedure.
  final FhirString? description;

  /// [procedure]
  /// A coded value specifying the procedure used to process the specimen.
  final CodeableConcept? procedure;

  /// [additive]
  /// Material used in the processing step.
  final List<Reference>? additive;

  /// [timeDateTime]
  /// A record of the time or period when the specimen processing occurred.
  /// For example the time of sample fixation or the period of time the
  /// sample was in formalin.
  final FhirDateTime? timeDateTime;

  /// [timePeriod]
  /// A record of the time or period when the specimen processing occurred.
  /// For example the time of sample fixation or the period of time the
  /// sample was in formalin.
  final Period? timePeriod;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (description != null) {
      final fieldJson3 = description!.toJson();
      json['description'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_description'] = fieldJson3['_value'];
      }
    }

    if (procedure != null) {
      final fieldJson4 = procedure!.toJson();
      json['procedure'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_procedure'] = fieldJson4['_value'];
      }
    }

    if (additive != null && additive!.isNotEmpty) {
      final fieldJson5 = additive!.map((e) => e.toJson()).toList();
      json['additive'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_additive'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (timeDateTime != null) {
      final fieldJson6 = timeDateTime!.toJson();
      json['timeDateTime'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_timeDateTime'] = fieldJson6['_value'];
      }
    }

    if (timePeriod != null) {
      final fieldJson7 = timePeriod!.toJson();
      json['timePeriod'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_timePeriod'] = fieldJson7['_value'];
      }
    }

    return json;
  }

  @override
  SpecimenProcessing clone() => throw UnimplementedError();
  @override
  SpecimenProcessing copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    CodeableConcept? procedure,
    List<Reference>? additive,
    FhirDateTime? timeDateTime,
    Period? timePeriod,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SpecimenProcessing(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      procedure: procedure ?? this.procedure,
      additive: additive ?? this.additive,
      timeDateTime: timeDateTime ?? this.timeDateTime,
      timePeriod: timePeriod ?? this.timePeriod,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SpecimenContainer]
/// The container holding the specimen. The recursive nature of containers;
/// i.e. blood in tube in tray in rack is not addressed here.
class SpecimenContainer extends BackboneElement {
  /// Primary constructor for [SpecimenContainer]

  SpecimenContainer({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.description,
    this.type,
    this.capacity,
    this.specimenQuantity,
    this.additiveCodeableConcept,
    this.additiveReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenContainer.fromJson(Map<String, dynamic> json) {
    return SpecimenContainer(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      capacity: json['capacity'] != null
          ? Quantity.fromJson(
              json['capacity'] as Map<String, dynamic>,
            )
          : null,
      specimenQuantity: json['specimenQuantity'] != null
          ? Quantity.fromJson(
              json['specimenQuantity'] as Map<String, dynamic>,
            )
          : null,
      additiveCodeableConcept: json['additiveCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['additiveCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      additiveReference: json['additiveReference'] != null
          ? Reference.fromJson(
              json['additiveReference'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [SpecimenContainer] from a [String]
  /// or [YamlMap] object
  factory SpecimenContainer.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenContainer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SpecimenContainer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('SpecimenContainer cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SpecimenContainer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenContainer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SpecimenContainer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SpecimenContainer';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Id for container. There may be multiple; a manufacturer's bar code, lab
  /// assigned identifier, etc. The container ID may differ from the specimen
  /// id in some circumstances.
  final List<Identifier>? identifier;

  /// [description]
  /// Textual description of the container.
  final FhirString? description;

  /// [type]
  /// The type of container associated with the specimen (e.g. slide,
  /// aliquot, etc.).
  final CodeableConcept? type;

  /// [capacity]
  /// The capacity (volume or other measure) the container may contain.
  final Quantity? capacity;

  /// [specimenQuantity]
  /// The quantity of specimen in the container; may be volume, dimensions,
  /// or other appropriate measurements, depending on the specimen type.
  final Quantity? specimenQuantity;

  /// [additiveCodeableConcept]
  /// Introduced substance to preserve, maintain or enhance the specimen.
  /// Examples: Formalin, Citrate, EDTA.
  final CodeableConcept? additiveCodeableConcept;

  /// [additiveReference]
  /// Introduced substance to preserve, maintain or enhance the specimen.
  /// Examples: Formalin, Citrate, EDTA.
  final Reference? additiveReference;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson3 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (description != null) {
      final fieldJson4 = description!.toJson();
      json['description'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_description'] = fieldJson4['_value'];
      }
    }

    if (type != null) {
      final fieldJson5 = type!.toJson();
      json['type'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_type'] = fieldJson5['_value'];
      }
    }

    if (capacity != null) {
      final fieldJson6 = capacity!.toJson();
      json['capacity'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_capacity'] = fieldJson6['_value'];
      }
    }

    if (specimenQuantity != null) {
      final fieldJson7 = specimenQuantity!.toJson();
      json['specimenQuantity'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_specimenQuantity'] = fieldJson7['_value'];
      }
    }

    if (additiveCodeableConcept != null) {
      final fieldJson8 = additiveCodeableConcept!.toJson();
      json['additiveCodeableConcept'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_additiveCodeableConcept'] = fieldJson8['_value'];
      }
    }

    if (additiveReference != null) {
      final fieldJson9 = additiveReference!.toJson();
      json['additiveReference'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_additiveReference'] = fieldJson9['_value'];
      }
    }

    return json;
  }

  @override
  SpecimenContainer clone() => throw UnimplementedError();
  @override
  SpecimenContainer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirString? description,
    CodeableConcept? type,
    Quantity? capacity,
    Quantity? specimenQuantity,
    CodeableConcept? additiveCodeableConcept,
    Reference? additiveReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SpecimenContainer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      description: description ?? this.description,
      type: type ?? this.type,
      capacity: capacity ?? this.capacity,
      specimenQuantity: specimenQuantity ?? this.specimenQuantity,
      additiveCodeableConcept:
          additiveCodeableConcept ?? this.additiveCodeableConcept,
      additiveReference: additiveReference ?? this.additiveReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
