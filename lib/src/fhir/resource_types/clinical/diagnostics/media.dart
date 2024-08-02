// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'media.freezed.dart';
part 'media.g.dart';

/// [Media] A photo, video, or audio recording acquired or used in
@freezed
class Media with _$Media implements DomainResource {
  /// [Media] A photo, video, or audio recording acquired or used in
  const Media._();

  /// [Media] A photo, video, or audio recording acquired or used in
  /// healthcare. The actual content may be inline or provided by direct
  ///  reference.
  ///
  /// [resourceType] This is a Media resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] Identifiers associated with the image - these may include
  /// identifiers for the image itself, identifiers for the context of its
  /// collection (e.g. series ids) and context ids such as accession numbers or
  ///  other workflow identifiers.
  ///
  /// [basedOn] A procedure that is fulfilled in whole or in part by the
  ///  creation of this media.
  ///
  /// [partOf] A larger event of which this particular event is a component or
  ///  step.
  ///
  /// [status] The current state of the {{title}}.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [type] A code that classifies whether the media is an image, video or
  ///  audio recording or some other media category.
  ///
  /// [modality] Details of the type of the media - usually, how it was
  /// acquired (what type of device). If images sourced from a DICOM system, are
  ///  wrapped in a Media resource, then this is the modality.
  ///
  /// [view] The name of the imaging view e.g. Lateral or Antero-posterior
  ///  (AP).
  ///
  /// [subject] Who/What this Media is a record of.
  ///
  /// [encounter] The encounter that establishes the context for this media.
  ///
  /// [createdDateTime] The date and time(s) at which the media was collected.
  ///
  /// [createdDateTimeElement] Extensions for createdDateTime
  ///
  /// [createdPeriod] The date and time(s) at which the media was collected.
  ///
  /// [issued] The date and time this version of the media was made available
  ///  to providers, typically after having been reviewed.
  ///
  /// [issuedElement] Extensions for issued
  ///
  /// [operator] The person who administered the collection of the image.
  ///
  /// [reasonCode] Describes why the event occurred in coded or textual form.
  ///
  /// [bodySite] Indicates the site on the subject's body where the observation
  ///  was made (i.e. the target site).
  ///
  /// [deviceName] The name of the device / manufacturer of the device  that
  ///  was used to make the recording.
  ///
  /// [deviceNameElement] Extensions for deviceName
  ///
  /// [device] The device used to collect the media.
  ///
  /// [height] Height of the image in pixels (photo/video).
  ///
  /// [heightElement] Extensions for height
  ///
  /// [width] Width of the image in pixels (photo/video).
  ///
  /// [widthElement] Extensions for width
  ///
  /// [frames] The number of frames in a photo. This is used with a multi-page
  /// fax, or an imaging acquisition context that takes multiple slices in a
  /// single image, or an animated gif. If there is more than one frame, this
  /// SHALL have a value in order to alert interface software that a multi-frame
  ///  capable rendering widget is required.
  ///
  /// [framesElement] Extensions for frames
  ///
  /// [duration] The duration of the recording in seconds - for audio and
  ///  video.
  ///
  /// [durationElement] Extensions for duration
  ///
  /// [content] The actual content of the media - inline or by direct reference
  ///  to the media source file.
  ///
  /// [note] Comments made about the media by the performer, subject or other
  ///  participants.
  const factory Media({
    @Default(R4ResourceType.Media)
    @JsonKey(unknownEnumValue: R4ResourceType.Media)

    /// [resourceType] This is a Media resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] Identifiers associated with the image - these may include
    /// identifiers for the image itself, identifiers for the context of its
    /// collection (e.g. series ids) and context ids such as accession numbers or
    ///  other workflow identifiers.
    List<Identifier>? identifier,

    /// [basedOn] A procedure that is fulfilled in whole or in part by the
    ///  creation of this media.
    List<Reference>? basedOn,

    /// [partOf] A larger event of which this particular event is a component or
    ///  step.
    List<Reference>? partOf,

    /// [status] The current state of the {{title}}.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [type] A code that classifies whether the media is an image, video or
    ///  audio recording or some other media category.
    CodeableConcept? type,

    /// [modality] Details of the type of the media - usually, how it was
    /// acquired (what type of device). If images sourced from a DICOM system, are
    ///  wrapped in a Media resource, then this is the modality.
    CodeableConcept? modality,

    /// [view] The name of the imaging view e.g. Lateral or Antero-posterior
    ///  (AP).
    CodeableConcept? view,

    /// [subject] Who/What this Media is a record of.
    Reference? subject,

    /// [encounter] The encounter that establishes the context for this media.
    Reference? encounter,

    /// [createdDateTime] The date and time(s) at which the media was collected.
    FhirDateTime? createdDateTime,

    /// [createdDateTimeElement] Extensions for createdDateTime
    @JsonKey(name: '_createdDateTime') PrimitiveElement? createdDateTimeElement,

    /// [createdPeriod] The date and time(s) at which the media was collected.
    Period? createdPeriod,

    /// [issued] The date and time this version of the media was made available
    ///  to providers, typically after having been reviewed.
    FhirInstant? issued,

    /// [issuedElement] Extensions for issued
    @JsonKey(name: '_issued') PrimitiveElement? issuedElement,

    /// [operator] The person who administered the collection of the image.
    @JsonKey(name: 'operator') Reference? operator_,

    /// [reasonCode] Describes why the event occurred in coded or textual form.
    List<CodeableConcept>? reasonCode,

    /// [bodySite] Indicates the site on the subject's body where the observation
    ///  was made (i.e. the target site).
    CodeableConcept? bodySite,

    /// [deviceName] The name of the device / manufacturer of the device  that
    ///  was used to make the recording.
    String? deviceName,

    /// [deviceNameElement] Extensions for deviceName
    @JsonKey(name: '_deviceName') PrimitiveElement? deviceNameElement,

    /// [device] The device used to collect the media.
    Reference? device,

    /// [height] Height of the image in pixels (photo/video).
    FhirPositiveInt? height,

    /// [heightElement] Extensions for height
    @JsonKey(name: '_height') PrimitiveElement? heightElement,

    /// [width] Width of the image in pixels (photo/video).
    FhirPositiveInt? width,

    /// [widthElement] Extensions for width
    @JsonKey(name: '_width') PrimitiveElement? widthElement,

    /// [frames] The number of frames in a photo. This is used with a multi-page
    /// fax, or an imaging acquisition context that takes multiple slices in a
    /// single image, or an animated gif. If there is more than one frame, this
    /// SHALL have a value in order to alert interface software that a multi-frame
    ///  capable rendering widget is required.
    FhirPositiveInt? frames,

    /// [framesElement] Extensions for frames
    @JsonKey(name: '_frames') PrimitiveElement? framesElement,

    /// [duration] The duration of the recording in seconds - for audio and
    ///  video.
    FhirDecimal? duration,

    /// [durationElement] Extensions for duration
    @JsonKey(name: '_duration') PrimitiveElement? durationElement,

    /// [content] The actual content of the media - inline or by direct reference
    ///  to the media source file.
    required Attachment content,

    /// [note] Comments made about the media by the performer, subject or other
    ///  participants.
    List<Annotation>? note,
  }) = _Media;

  @override
  String get fhirType => 'Media';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Media.fromYaml(dynamic yaml) => yaml is String
      ? Media.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Media.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Media cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  /// Acts like a constructor, returns a [Media], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Media.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MediaFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}
