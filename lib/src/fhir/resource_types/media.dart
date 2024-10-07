import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Media] /// A photo, video, or audio recording acquired or used in healthcare. The
/// actual content may be inline or provided by direct reference.
class Media extends DomainResource {
  Media({
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
    this.basedOn,
    this.partOf,
    required this.status,
    this.statusElement,
    this.type,
    this.modality,
    this.view,
    this.subject,
    this.encounter,
    this.createdDateTime,
    this.createdDateTimeElement,
    this.createdPeriod,
    this.issued,
    this.issuedElement,
    this.operator_,
    this.reasonCode,
    this.bodySite,
    this.deviceName,
    this.deviceNameElement,
    this.device,
    this.height,
    this.heightElement,
    this.width,
    this.widthElement,
    this.frames,
    this.framesElement,
    this.duration,
    this.durationElement,
    required this.content,
    this.note,
  }) : super(resourceType: R4ResourceType.Media);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifiers associated with the image - these may include identifiers for
  /// the image itself, identifiers for the context of its collection (e.g.
  /// series ids) and context ids such as accession numbers or other workflow
  /// identifiers.
  final List<Identifier>? identifier;

  /// [basedOn] /// A procedure that is fulfilled in whole or in part by the creation of this
  /// media.
  final List<Reference>? basedOn;

  /// [partOf] /// A larger event of which this particular event is a component or step.
  final List<Reference>? partOf;

  /// [status] /// The current state of the {{title}}.
  final FhirCode status;
  final Element? statusElement;

  /// [type] /// A code that classifies whether the media is an image, video or audio
  /// recording or some other media category.
  final CodeableConcept? type;

  /// [modality] /// Details of the type of the media - usually, how it was acquired (what type
  /// of device). If images sourced from a DICOM system, are wrapped in a Media
  /// resource, then this is the modality.
  final CodeableConcept? modality;

  /// [view] /// The name of the imaging view e.g. Lateral or Antero-posterior (AP).
  final CodeableConcept? view;

  /// [subject] /// Who/What this Media is a record of.
  final Reference? subject;

  /// [encounter] /// The encounter that establishes the context for this media.
  final Reference? encounter;

  /// [createdDateTime] /// The date and time(s) at which the media was collected.
  final FhirDateTime? createdDateTime;
  final Element? createdDateTimeElement;

  /// [createdPeriod] /// The date and time(s) at which the media was collected.
  final Period? createdPeriod;

  /// [issued] /// The date and time this version of the media was made available to
  /// providers, typically after having been reviewed.
  final FhirInstant? issued;
  final Element? issuedElement;

  /// [operator_] /// The person who administered the collection of the image.
  final Reference? operator_;

  /// [reasonCode] /// Describes why the event occurred in coded or textual form.
  final List<CodeableConcept>? reasonCode;

  /// [bodySite] /// Indicates the site on the subject's body where the observation was made
  /// (i.e. the target site).
  final CodeableConcept? bodySite;

  /// [deviceName] /// The name of the device / manufacturer of the device that was used to make
  /// the recording.
  final FhirString? deviceName;
  final Element? deviceNameElement;

  /// [device] /// The device used to collect the media.
  final Reference? device;

  /// [height] /// Height of the image in pixels (photo/video).
  final FhirPositiveInt? height;
  final Element? heightElement;

  /// [width] /// Width of the image in pixels (photo/video).
  final FhirPositiveInt? width;
  final Element? widthElement;

  /// [frames] /// The number of frames in a photo. This is used with a multi-page fax, or an
  /// imaging acquisition context that takes multiple slices in a single image,
  /// or an animated gif. If there is more than one frame, this SHALL have a
  /// value in order to alert interface software that a multi-frame capable
  /// rendering widget is required.
  final FhirPositiveInt? frames;
  final Element? framesElement;

  /// [duration] /// The duration of the recording in seconds - for audio and video.
  final FhirDecimal? duration;
  final Element? durationElement;

  /// [content] /// The actual content of the media - inline or by direct reference to the
  /// media source file.
  final Attachment content;

  /// [note] /// Comments made about the media by the performer, subject or other
  /// participants.
  final List<Annotation>? note;
  @override
  Media clone() => throw UnimplementedError();
  Media copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? type,
    CodeableConcept? modality,
    CodeableConcept? view,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? createdDateTime,
    Element? createdDateTimeElement,
    Period? createdPeriod,
    FhirInstant? issued,
    Element? issuedElement,
    Reference? operator_,
    List<CodeableConcept>? reasonCode,
    CodeableConcept? bodySite,
    FhirString? deviceName,
    Element? deviceNameElement,
    Reference? device,
    FhirPositiveInt? height,
    Element? heightElement,
    FhirPositiveInt? width,
    Element? widthElement,
    FhirPositiveInt? frames,
    Element? framesElement,
    FhirDecimal? duration,
    Element? durationElement,
    Attachment? content,
    List<Annotation>? note,
  }) {
    return Media(
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
      basedOn: basedOn ?? this.basedOn,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      type: type ?? this.type,
      modality: modality ?? this.modality,
      view: view ?? this.view,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      createdDateTime: createdDateTime ?? this.createdDateTime,
      createdDateTimeElement:
          createdDateTimeElement ?? this.createdDateTimeElement,
      createdPeriod: createdPeriod ?? this.createdPeriod,
      issued: issued ?? this.issued,
      issuedElement: issuedElement ?? this.issuedElement,
      operator_: operator_ ?? this.operator_,
      reasonCode: reasonCode ?? this.reasonCode,
      bodySite: bodySite ?? this.bodySite,
      deviceName: deviceName ?? this.deviceName,
      deviceNameElement: deviceNameElement ?? this.deviceNameElement,
      device: device ?? this.device,
      height: height ?? this.height,
      heightElement: heightElement ?? this.heightElement,
      width: width ?? this.width,
      widthElement: widthElement ?? this.widthElement,
      frames: frames ?? this.frames,
      framesElement: framesElement ?? this.framesElement,
      duration: duration ?? this.duration,
      durationElement: durationElement ?? this.durationElement,
      content: content ?? this.content,
      note: note ?? this.note,
    );
  }
}
