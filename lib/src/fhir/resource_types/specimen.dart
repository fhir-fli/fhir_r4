import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Specimen] /// A sample to be used for analysis.
@JsonSerializable()
class Specimen extends DomainResource {
  Specimen({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.accessionIdentifier,
    this.status,
    this.statusElement,
    this.type,
    this.subject,
    this.receivedTime,
    this.receivedTimeElement,
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
  }) : super(resourceType: R4ResourceType.Specimen);
  @override
  String get fhirType => 'Specimen';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Id for specimen.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [accessionIdentifier] /// The identifier assigned by the lab when accessioning specimen(s). This is
  /// not necessarily the same as the specimen identifier, depending on local lab
  /// procedures.
  @JsonKey(name: 'accessionIdentifier')
  final Identifier? accessionIdentifier;

  /// [status] /// The availability of the specimen.
  @JsonKey(name: 'status')
  final SpecimenStatus? status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [type] /// The kind of material that forms the specimen.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [subject] /// Where the specimen came from. This may be from patient(s), from a location
  /// (e.g., the source of an environmental sample), or a sampling of a substance
  /// or a device.
  @JsonKey(name: 'subject')
  final Reference? subject;

  /// [receivedTime] /// Time when specimen was received for processing or testing.
  @JsonKey(name: 'receivedTime')
  final FhirDateTime? receivedTime;
  @JsonKey(name: '_receivedTime')
  final Element? receivedTimeElement;

  /// [parent] /// Reference to the parent (source) specimen which is used when the specimen
  /// was either derived from or a component of another specimen.
  @JsonKey(name: 'parent')
  final List<Reference>? parent;

  /// [request] /// Details concerning a service request that required a specimen to be
  /// collected.
  @JsonKey(name: 'request')
  final List<Reference>? request;

  /// [collection] /// Details concerning the specimen collection.
  @JsonKey(name: 'collection')
  final SpecimenCollection? collection;

  /// [processing] /// Details concerning processing and processing steps for the specimen.
  @JsonKey(name: 'processing')
  final List<SpecimenProcessing>? processing;

  /// [container] /// The container holding the specimen. The recursive nature of containers;
  /// i.e. blood in tube in tray in rack is not addressed here.
  @JsonKey(name: 'container')
  final List<SpecimenContainer>? container;

  /// [condition] /// A mode or state of being that describes the nature of the specimen.
  @JsonKey(name: 'condition')
  final List<CodeableConcept>? condition;

  /// [note] /// To communicate any details or issues about the specimen or during the
  /// specimen collection. (for example: broken vial, sent with patient, frozen).
  @JsonKey(name: 'note')
  final List<Annotation>? note;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (accessionIdentifier != null) {
      json['accessionIdentifier'] = accessionIdentifier!.toJson();
    }
    if (status != null) {
      json['status'] = status!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }
    if (receivedTime?.value != null) {
      json['receivedTime'] = receivedTime!.value;
    }
    if (receivedTimeElement != null) {
      json['_receivedTime'] = receivedTimeElement!.toJson();
    }
    if (parent != null && parent!.isNotEmpty) {
      json['parent'] =
          parent!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (request != null && request!.isNotEmpty) {
      json['request'] =
          request!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (collection != null) {
      json['collection'] = collection!.toJson();
    }
    if (processing != null && processing!.isNotEmpty) {
      json['processing'] = processing!
          .map<dynamic>((SpecimenProcessing v) => v.toJson())
          .toList();
    }
    if (container != null && container!.isNotEmpty) {
      json['container'] =
          container!.map<dynamic>((SpecimenContainer v) => v.toJson()).toList();
    }
    if (condition != null && condition!.isNotEmpty) {
      json['condition'] =
          condition!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    return json;
  }

  factory Specimen.fromJson(Map<String, dynamic> json) {
    return Specimen(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      accessionIdentifier: json['accessionIdentifier'] != null
          ? Identifier.fromJson(
              json['accessionIdentifier'] as Map<String, dynamic>)
          : null,
      status: json['status'] != null
          ? SpecimenStatus.fromJson(json['status'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(json['subject'] as Map<String, dynamic>)
          : null,
      receivedTime: json['receivedTime'] != null
          ? FhirDateTime(json['receivedTime'])
          : null,
      receivedTimeElement: json['_receivedTime'] != null
          ? Element.fromJson(json['_receivedTime'] as Map<String, dynamic>)
          : null,
      parent: json['parent'] != null
          ? (json['parent'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      request: json['request'] != null
          ? (json['request'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      collection: json['collection'] != null
          ? SpecimenCollection.fromJson(
              json['collection'] as Map<String, dynamic>)
          : null,
      processing: json['processing'] != null
          ? (json['processing'] as List<dynamic>)
              .map<SpecimenProcessing>((dynamic v) =>
                  SpecimenProcessing.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      container: json['container'] != null
          ? (json['container'] as List<dynamic>)
              .map<SpecimenContainer>((dynamic v) =>
                  SpecimenContainer.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      condition: json['condition'] != null
          ? (json['condition'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  Specimen clone() => throw UnimplementedError();
  @override
  Specimen copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    Identifier? accessionIdentifier,
    SpecimenStatus? status,
    Element? statusElement,
    CodeableConcept? type,
    Reference? subject,
    FhirDateTime? receivedTime,
    Element? receivedTimeElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      accessionIdentifier: accessionIdentifier ?? this.accessionIdentifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      type: type ?? this.type,
      subject: subject ?? this.subject,
      receivedTime: receivedTime ?? this.receivedTime,
      receivedTimeElement: receivedTimeElement ?? this.receivedTimeElement,
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

  factory Specimen.fromYaml(dynamic yaml) => yaml is String
      ? Specimen.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Specimen.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Specimen cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Specimen.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Specimen.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SpecimenCollection] /// Details concerning the specimen collection.
@JsonSerializable()
class SpecimenCollection extends BackboneElement {
  SpecimenCollection({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.collector,
    this.collectedDateTime,
    this.collectedDateTimeElement,
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
  @override
  String get fhirType => 'SpecimenCollection';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [collector] /// Person who collected the specimen.
  @JsonKey(name: 'collector')
  final Reference? collector;

  /// [collectedDateTime] /// Time when specimen was collected from subject - the physiologically
  /// relevant time.
  @JsonKey(name: 'collectedDateTime')
  final FhirDateTime? collectedDateTime;
  @JsonKey(name: '_collectedDateTime')
  final Element? collectedDateTimeElement;

  /// [collectedPeriod] /// Time when specimen was collected from subject - the physiologically
  /// relevant time.
  @JsonKey(name: 'collectedPeriod')
  final Period? collectedPeriod;

  /// [duration] /// The span of time over which the collection of a specimen occurred.
  @JsonKey(name: 'duration')
  final FhirDuration? duration;

  /// [quantity] /// The quantity of specimen collected; for instance the volume of a blood
  /// sample, or the physical measurement of an anatomic pathology sample.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [method] /// A coded value specifying the technique that is used to perform the
  /// procedure.
  @JsonKey(name: 'method')
  final CodeableConcept? method;

  /// [bodySite] /// Anatomical location from which the specimen was collected (if subject is a
  /// patient). This is the target site. This element is not used for
  /// environmental specimens.
  @JsonKey(name: 'bodySite')
  final CodeableConcept? bodySite;

  /// [fastingStatusCodeableConcept] /// Abstinence or reduction from some or all food, drink, or both, for a period
  /// of time prior to sample collection.
  @JsonKey(name: 'fastingStatusCodeableConcept')
  final CodeableConcept? fastingStatusCodeableConcept;

  /// [fastingStatusDuration] /// Abstinence or reduction from some or all food, drink, or both, for a period
  /// of time prior to sample collection.
  @JsonKey(name: 'fastingStatusDuration')
  final FhirDuration? fastingStatusDuration;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (collector != null) {
      json['collector'] = collector!.toJson();
    }
    if (collectedDateTime?.value != null) {
      json['collectedDateTime'] = collectedDateTime!.value;
    }
    if (collectedDateTimeElement != null) {
      json['_collectedDateTime'] = collectedDateTimeElement!.toJson();
    }
    if (collectedPeriod != null) {
      json['collectedPeriod'] = collectedPeriod!.toJson();
    }
    if (duration != null) {
      json['duration'] = duration!.toJson();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (method != null) {
      json['method'] = method!.toJson();
    }
    if (bodySite != null) {
      json['bodySite'] = bodySite!.toJson();
    }
    if (fastingStatusCodeableConcept != null) {
      json['fastingStatusCodeableConcept'] =
          fastingStatusCodeableConcept!.toJson();
    }
    if (fastingStatusDuration != null) {
      json['fastingStatusDuration'] = fastingStatusDuration!.toJson();
    }
    return json;
  }

  factory SpecimenCollection.fromJson(Map<String, dynamic> json) {
    return SpecimenCollection(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      collector: json['collector'] != null
          ? Reference.fromJson(json['collector'] as Map<String, dynamic>)
          : null,
      collectedDateTime: json['collectedDateTime'] != null
          ? FhirDateTime(json['collectedDateTime'])
          : null,
      collectedDateTimeElement: json['_collectedDateTime'] != null
          ? Element.fromJson(json['_collectedDateTime'] as Map<String, dynamic>)
          : null,
      collectedPeriod: json['collectedPeriod'] != null
          ? Period.fromJson(json['collectedPeriod'] as Map<String, dynamic>)
          : null,
      duration: json['duration'] != null
          ? FhirDuration.fromJson(json['duration'] as Map<String, dynamic>)
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      method: json['method'] != null
          ? CodeableConcept.fromJson(json['method'] as Map<String, dynamic>)
          : null,
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>)
          : null,
      fastingStatusCodeableConcept: json['fastingStatusCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['fastingStatusCodeableConcept'] as Map<String, dynamic>)
          : null,
      fastingStatusDuration: json['fastingStatusDuration'] != null
          ? FhirDuration.fromJson(
              json['fastingStatusDuration'] as Map<String, dynamic>)
          : null,
    );
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
    Element? collectedDateTimeElement,
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
      collectedDateTimeElement:
          collectedDateTimeElement ?? this.collectedDateTimeElement,
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

  factory SpecimenCollection.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenCollection.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SpecimenCollection.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SpecimenCollection cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SpecimenCollection.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SpecimenCollection.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SpecimenProcessing] /// Details concerning processing and processing steps for the specimen.
@JsonSerializable()
class SpecimenProcessing extends BackboneElement {
  SpecimenProcessing({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.procedure,
    this.additive,
    this.timeDateTime,
    this.timeDateTimeElement,
    this.timePeriod,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'SpecimenProcessing';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Textual description of procedure.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [procedure] /// A coded value specifying the procedure used to process the specimen.
  @JsonKey(name: 'procedure')
  final CodeableConcept? procedure;

  /// [additive] /// Material used in the processing step.
  @JsonKey(name: 'additive')
  final List<Reference>? additive;

  /// [timeDateTime] /// A record of the time or period when the specimen processing occurred. For
  /// example the time of sample fixation or the period of time the sample was in
  /// formalin.
  @JsonKey(name: 'timeDateTime')
  final FhirDateTime? timeDateTime;
  @JsonKey(name: '_timeDateTime')
  final Element? timeDateTimeElement;

  /// [timePeriod] /// A record of the time or period when the specimen processing occurred. For
  /// example the time of sample fixation or the period of time the sample was in
  /// formalin.
  @JsonKey(name: 'timePeriod')
  final Period? timePeriod;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (procedure != null) {
      json['procedure'] = procedure!.toJson();
    }
    if (additive != null && additive!.isNotEmpty) {
      json['additive'] =
          additive!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (timeDateTime?.value != null) {
      json['timeDateTime'] = timeDateTime!.value;
    }
    if (timeDateTimeElement != null) {
      json['_timeDateTime'] = timeDateTimeElement!.toJson();
    }
    if (timePeriod != null) {
      json['timePeriod'] = timePeriod!.toJson();
    }
    return json;
  }

  factory SpecimenProcessing.fromJson(Map<String, dynamic> json) {
    return SpecimenProcessing(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      procedure: json['procedure'] != null
          ? CodeableConcept.fromJson(json['procedure'] as Map<String, dynamic>)
          : null,
      additive: json['additive'] != null
          ? (json['additive'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      timeDateTime: json['timeDateTime'] != null
          ? FhirDateTime(json['timeDateTime'])
          : null,
      timeDateTimeElement: json['_timeDateTime'] != null
          ? Element.fromJson(json['_timeDateTime'] as Map<String, dynamic>)
          : null,
      timePeriod: json['timePeriod'] != null
          ? Period.fromJson(json['timePeriod'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  SpecimenProcessing clone() => throw UnimplementedError();
  @override
  SpecimenProcessing copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    CodeableConcept? procedure,
    List<Reference>? additive,
    FhirDateTime? timeDateTime,
    Element? timeDateTimeElement,
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
      descriptionElement: descriptionElement ?? this.descriptionElement,
      procedure: procedure ?? this.procedure,
      additive: additive ?? this.additive,
      timeDateTime: timeDateTime ?? this.timeDateTime,
      timeDateTimeElement: timeDateTimeElement ?? this.timeDateTimeElement,
      timePeriod: timePeriod ?? this.timePeriod,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SpecimenProcessing.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenProcessing.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SpecimenProcessing.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SpecimenProcessing cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SpecimenProcessing.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SpecimenProcessing.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SpecimenContainer] /// The container holding the specimen. The recursive nature of containers;
/// i.e. blood in tube in tray in rack is not addressed here.
@JsonSerializable()
class SpecimenContainer extends BackboneElement {
  SpecimenContainer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.description,
    this.descriptionElement,
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
  @override
  String get fhirType => 'SpecimenContainer';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Id for container. There may be multiple; a manufacturer's bar code, lab
  /// assigned identifier, etc. The container ID may differ from the specimen id
  /// in some circumstances.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [description] /// Textual description of the container.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [type] /// The type of container associated with the specimen (e.g. slide, aliquot,
  /// etc.).
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [capacity] /// The capacity (volume or other measure) the container may contain.
  @JsonKey(name: 'capacity')
  final Quantity? capacity;

  /// [specimenQuantity] /// The quantity of specimen in the container; may be volume, dimensions, or
  /// other appropriate measurements, depending on the specimen type.
  @JsonKey(name: 'specimenQuantity')
  final Quantity? specimenQuantity;

  /// [additiveCodeableConcept] /// Introduced substance to preserve, maintain or enhance the specimen.
  /// Examples: Formalin, Citrate, EDTA.
  @JsonKey(name: 'additiveCodeableConcept')
  final CodeableConcept? additiveCodeableConcept;

  /// [additiveReference] /// Introduced substance to preserve, maintain or enhance the specimen.
  /// Examples: Formalin, Citrate, EDTA.
  @JsonKey(name: 'additiveReference')
  final Reference? additiveReference;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (capacity != null) {
      json['capacity'] = capacity!.toJson();
    }
    if (specimenQuantity != null) {
      json['specimenQuantity'] = specimenQuantity!.toJson();
    }
    if (additiveCodeableConcept != null) {
      json['additiveCodeableConcept'] = additiveCodeableConcept!.toJson();
    }
    if (additiveReference != null) {
      json['additiveReference'] = additiveReference!.toJson();
    }
    return json;
  }

  factory SpecimenContainer.fromJson(Map<String, dynamic> json) {
    return SpecimenContainer(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      capacity: json['capacity'] != null
          ? Quantity.fromJson(json['capacity'] as Map<String, dynamic>)
          : null,
      specimenQuantity: json['specimenQuantity'] != null
          ? Quantity.fromJson(json['specimenQuantity'] as Map<String, dynamic>)
          : null,
      additiveCodeableConcept: json['additiveCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['additiveCodeableConcept'] as Map<String, dynamic>)
          : null,
      additiveReference: json['additiveReference'] != null
          ? Reference.fromJson(
              json['additiveReference'] as Map<String, dynamic>)
          : null,
    );
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
    Element? descriptionElement,
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
      descriptionElement: descriptionElement ?? this.descriptionElement,
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

  factory SpecimenContainer.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenContainer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SpecimenContainer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SpecimenContainer cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SpecimenContainer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SpecimenContainer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
