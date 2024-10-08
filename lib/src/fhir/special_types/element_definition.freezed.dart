// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'element_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ElementDefinition _$ElementDefinitionFromJson(Map<String, dynamic> json) {
  return _ElementDefinition.fromJson(json);
}

/// @nodoc
mixin _$ElementDefinition {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [path] The path identifies the element and is expressed as a
  /// "."-separated list of ancestor elements, beginning with the name of the
  ///  resource or extension.
  String? get path => throw _privateConstructorUsedError;

  /// [pathElement] Extensions for path
  @JsonKey(name: '_path')
  PrimitiveElement? get pathElement => throw _privateConstructorUsedError;

  /// [representation] Codes that define how this element is represented in
  ///  instances, when the deviation varies from the normal case.
  List<ElementDefinitionRepresentation>? get representation =>
      throw _privateConstructorUsedError;

  /// [representationElement] Extensions for representation
  @JsonKey(name: '_representation')
  List<PrimitiveElement>? get representationElement =>
      throw _privateConstructorUsedError;

  /// [sliceName] The name of this element definition slice, when slicing is
  /// working. The name must be a token with no dots or spaces. This is a unique
  /// name referring to a specific set of constraints applied to this element,
  ///  used to provide a name to different slices of the same element.
  String? get sliceName => throw _privateConstructorUsedError;

  /// [sliceNameElement] Extensions for sliceName
  @JsonKey(name: '_sliceName')
  PrimitiveElement? get sliceNameElement => throw _privateConstructorUsedError;

  /// [sliceIsConstraining] If true, indicates that this slice definition is
  /// constraining a slice definition with the same name in an inherited
  /// profile. If false, the slice is not overriding any slice in an inherited
  /// profile. If missing, the slice might or might not be overriding a slice in
  ///  an inherited profile, depending on the sliceName.
  FhirBoolean? get sliceIsConstraining => throw _privateConstructorUsedError;

  /// [sliceIsConstrainingElement] Extensions for sliceIsConstraining
  @JsonKey(name: '_sliceIsConstraining')
  PrimitiveElement? get sliceIsConstrainingElement =>
      throw _privateConstructorUsedError;

  /// [label] A single preferred label which is the text to display beside the
  /// element indicating its meaning or to use to prompt for the element in a
  ///  user display or form.
  String? get label => throw _privateConstructorUsedError;

  /// [labelElement] Extensions for label
  @JsonKey(name: '_label')
  PrimitiveElement? get labelElement => throw _privateConstructorUsedError;

  /// [code] A code that has the same meaning as the element in a particular
  ///  terminology.
  List<Coding>? get code => throw _privateConstructorUsedError;

  /// [slicing] Indicates that the element is sliced into a set of alternative
  /// definitions (i.e. in a structure definition, there are multiple different
  /// constraints on a single element in the base resource). Slicing can be used
  /// in any resource that has cardinality ..* on the base resource, or any
  /// resource with a choice of types. The set of slices is any elements that
  /// come after this in the element sequence that have the same path, until a
  ///  shorter path occurs (the shorter path terminates the set).
  ElementDefinitionSlicing? get slicing => throw _privateConstructorUsedError;

  /// [short] A concise description of what this element means (e.g. for use in
  ///  autogenerated summaries).
  String? get short => throw _privateConstructorUsedError;

  /// [shortElement] Extensions for short
  @JsonKey(name: '_short')
  PrimitiveElement? get shortElement => throw _privateConstructorUsedError;

  /// [definition] Provides a complete explanation of the meaning of the data
  /// element for human readability.  For the case of elements derived from
  /// existing elements (e.g. constraints), the definition SHALL be consistent
  /// with the base definition, but convey the meaning of the element in the
  /// particular context of use of the resource. (Note: The text you are reading
  ///  is specified in ElementDefinition.definition).
  FhirMarkdown? get definition => throw _privateConstructorUsedError;

  /// [definitionElement] Extensions for definition
  @JsonKey(name: '_definition')
  PrimitiveElement? get definitionElement => throw _privateConstructorUsedError;

  /// [comment] Explanatory notes and implementation guidance about the data
  /// element, including notes about how to use the data properly, exceptions to
  /// proper use, etc. (Note: The text you are reading is specified in
  ///  ElementDefinition.comment).
  FhirMarkdown? get comment => throw _privateConstructorUsedError;

  /// [commentElement] Extensions for comment
  @JsonKey(name: '_comment')
  PrimitiveElement? get commentElement => throw _privateConstructorUsedError;

  /// [requirements] This element is for traceability of why the element was
  /// created and why the constraints exist as they do. This may be used to
  /// point to source materials or specifications that drove the structure of
  ///  this element.
  FhirMarkdown? get requirements => throw _privateConstructorUsedError;

  /// [requirementsElement] Extensions for requirements
  @JsonKey(name: '_requirements')
  PrimitiveElement? get requirementsElement =>
      throw _privateConstructorUsedError;

  /// [alias] Identifies additional names by which this element might also be
  ///  known.
  List<String>? get alias => throw _privateConstructorUsedError;

  /// [aliasElement] Extensions for alias
  @JsonKey(name: '_alias')
  List<PrimitiveElement>? get aliasElement =>
      throw _privateConstructorUsedError;

  /// [min] The minimum number of times this element SHALL appear in the
  ///  instance.
  FhirUnsignedInt? get min => throw _privateConstructorUsedError;

  /// [minElement] Extensions for min
  @JsonKey(name: '_min')
  PrimitiveElement? get minElement => throw _privateConstructorUsedError;

  /// [max] The maximum number of times this element is permitted to appear in
  ///  the instance.
  String? get max => throw _privateConstructorUsedError;

  /// [maxElement] Extensions for max
  @JsonKey(name: '_max')
  PrimitiveElement? get maxElement => throw _privateConstructorUsedError;

  /// [base] Information about the base definition of the element, provided to
  /// make it unnecessary for tools to trace the deviation of the element
  /// through the derived and related profiles. When the element definition is
  /// not the original definition of an element - i.g. either in a constraint on
  /// another type, or for elements from a super type in a snap shot - then the
  /// information in provided in the element definition may be different to the
  /// base definition. On the original definition of the element, it will be
  ///  same.
  ElementDefinitionBase? get base => throw _privateConstructorUsedError;

  /// [contentReference] Identifies an element defined elsewhere in the
  /// definition whose content rules should be applied to the current element.
  /// ContentReferences bring across all the rules that are in the
  /// ElementDefinition for the element, including definitions, cardinality
  ///  constraints, bindings, invariants etc.
  FhirUri? get contentReference => throw _privateConstructorUsedError;

  /// [contentReferenceElement] Extensions for contentReference
  @JsonKey(name: '_contentReference')
  PrimitiveElement? get contentReferenceElement =>
      throw _privateConstructorUsedError;

  /// [type] The data type or resource that the value of this element is
  ///  permitted to be.
  List<ElementDefinitionType>? get type => throw _privateConstructorUsedError;

  /// [defaultValueBase64Binary] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  FhirBase64Binary? get defaultValueBase64Binary =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_defaultValueBase64Binary')
  PrimitiveElement? get defaultValueBase64BinaryElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueBoolean] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  FhirBoolean? get defaultValueBoolean => throw _privateConstructorUsedError;

  /// [defaultValueBooleanElement] Extensions for defaultValueBoolean
  @JsonKey(name: '_defaultValueBoolean')
  PrimitiveElement? get defaultValueBooleanElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueCanonical] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  FhirCanonical? get defaultValueCanonical =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_defaultValueCanonical')
  PrimitiveElement? get defaultValueCanonicalElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueCode] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  FhirCode? get defaultValueCode => throw _privateConstructorUsedError;

  /// [defaultValueCodeElement] Extensions for defaultValueCode
  @JsonKey(name: '_defaultValueCode')
  PrimitiveElement? get defaultValueCodeElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueDate] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  FhirDate? get defaultValueDate => throw _privateConstructorUsedError;

  /// [defaultValueDateElement] Extensions for defaultValueDate
  @JsonKey(name: '_defaultValueDate')
  PrimitiveElement? get defaultValueDateElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueDateTime] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  FhirDateTime? get defaultValueDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: '_defaultValueDateTime')
  PrimitiveElement? get defaultValueDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueDecimal] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  FhirDecimal? get defaultValueDecimal => throw _privateConstructorUsedError;

  /// [defaultValueDecimalElement] Extensions for defaultValueDecimal
  @JsonKey(name: '_defaultValueDecimal')
  PrimitiveElement? get defaultValueDecimalElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueId] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  FhirId? get defaultValueId => throw _privateConstructorUsedError;

  /// [defaultValueIdElement] Extensions for defaultValueId
  @JsonKey(name: '_defaultValueId')
  PrimitiveElement? get defaultValueIdElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueInstant] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  FhirInstant? get defaultValueInstant => throw _privateConstructorUsedError;

  /// [defaultValueInstantElement] Extensions for defaultValueInstant
  @JsonKey(name: '_defaultValueInstant')
  PrimitiveElement? get defaultValueInstantElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueInteger] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  FhirInteger? get defaultValueInteger => throw _privateConstructorUsedError;

  /// [defaultValueIntegerElement] Extensions for defaultValueInteger
  @JsonKey(name: '_defaultValueInteger')
  PrimitiveElement? get defaultValueIntegerElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueMarkdown] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  FhirMarkdown? get defaultValueMarkdown => throw _privateConstructorUsedError;
  @JsonKey(name: '_defaultValueMarkdown')
  PrimitiveElement? get defaultValueMarkdownElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueOid] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  FhirOid? get defaultValueOid => throw _privateConstructorUsedError;

  /// [defaultValueOidElement] Extensions for defaultValueOid
  @JsonKey(name: '_defaultValueOid')
  PrimitiveElement? get defaultValueOidElement =>
      throw _privateConstructorUsedError;

  /// [defaultValuePositiveInt] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  FhirPositiveInt? get defaultValuePositiveInt =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_defaultValuePositiveInt')
  PrimitiveElement? get defaultValuePositiveIntElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueString] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  String? get defaultValueString => throw _privateConstructorUsedError;

  /// [defaultValueStringElement] Extensions for defaultValueString
  @JsonKey(name: '_defaultValueString')
  PrimitiveElement? get defaultValueStringElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueTime] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  FhirTime? get defaultValueTime => throw _privateConstructorUsedError;

  /// [defaultValueTimeElement] Extensions for defaultValueTime
  @JsonKey(name: '_defaultValueTime')
  PrimitiveElement? get defaultValueTimeElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueUnsignedInt] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  FhirUnsignedInt? get defaultValueUnsignedInt =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_defaultValueUnsignedInt')
  PrimitiveElement? get defaultValueUnsignedIntElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueUri] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  FhirUri? get defaultValueUri => throw _privateConstructorUsedError;

  /// [defaultValueUriElement] Extensions for defaultValueUri
  @JsonKey(name: '_defaultValueUri')
  PrimitiveElement? get defaultValueUriElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueUrl] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  FhirUrl? get defaultValueUrl => throw _privateConstructorUsedError;

  /// [defaultValueUrlElement] Extensions for defaultValueUrl
  @JsonKey(name: '_defaultValueUrl')
  PrimitiveElement? get defaultValueUrlElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueUuid] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  FhirUuid? get defaultValueUuid => throw _privateConstructorUsedError;

  /// [defaultValueUuidElement] Extensions for defaultValueUuid
  @JsonKey(name: '_defaultValueUuid')
  PrimitiveElement? get defaultValueUuidElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueAddress] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  Address? get defaultValueAddress => throw _privateConstructorUsedError;

  /// [defaultValueAge] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  Age? get defaultValueAge => throw _privateConstructorUsedError;

  /// [defaultValueAnnotation] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  Annotation? get defaultValueAnnotation => throw _privateConstructorUsedError;

  /// [defaultValueAttachment] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  Attachment? get defaultValueAttachment => throw _privateConstructorUsedError;

  /// [defaultValueCodeableConcept] The value that should be used if there is
  /// no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  CodeableConcept? get defaultValueCodeableConcept =>
      throw _privateConstructorUsedError;
  CodeableReference? get defaultValueCodeableReference =>
      throw _privateConstructorUsedError;

  /// [defaultValueCoding] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  Coding? get defaultValueCoding => throw _privateConstructorUsedError;

  /// [defaultValueContactPoint] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ContactPoint? get defaultValueContactPoint =>
      throw _privateConstructorUsedError;

  /// [defaultValueCount] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  Count? get defaultValueCount => throw _privateConstructorUsedError;

  /// [defaultValueDistance] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  Distance? get defaultValueDistance => throw _privateConstructorUsedError;

  /// [defaultValueDuration] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  FhirDuration? get defaultValueDuration => throw _privateConstructorUsedError;

  /// [defaultValueHumanName] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  HumanName? get defaultValueHumanName => throw _privateConstructorUsedError;

  /// [defaultValueIdentifier] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  Identifier? get defaultValueIdentifier => throw _privateConstructorUsedError;

  /// [defaultValueMoney] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  Money? get defaultValueMoney => throw _privateConstructorUsedError;

  /// [defaultValuePeriod] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  Period? get defaultValuePeriod => throw _privateConstructorUsedError;

  /// [defaultValueQuantity] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  Quantity? get defaultValueQuantity => throw _privateConstructorUsedError;

  /// [defaultValueRange] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  Range? get defaultValueRange => throw _privateConstructorUsedError;

  /// [defaultValueRatio] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  Ratio? get defaultValueRatio => throw _privateConstructorUsedError;
  RatioRange? get defaultValueRatioRange => throw _privateConstructorUsedError;

  /// [defaultValueReference] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  Reference? get defaultValueReference => throw _privateConstructorUsedError;

  /// [defaultValueSampledData] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  SampledData? get defaultValueSampledData =>
      throw _privateConstructorUsedError;

  /// [defaultValueSignature] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  Signature? get defaultValueSignature => throw _privateConstructorUsedError;

  /// [defaultValueTiming] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  Timing? get defaultValueTiming => throw _privateConstructorUsedError;

  /// [defaultValueContactDetail] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ContactDetail? get defaultValueContactDetail =>
      throw _privateConstructorUsedError;

  /// [defaultValueContributor] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  Contributor? get defaultValueContributor =>
      throw _privateConstructorUsedError;

  /// [defaultValueDataRequirement] The value that should be used if there is
  /// no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  DataRequirement? get defaultValueDataRequirement =>
      throw _privateConstructorUsedError;

  /// [defaultValueExpression] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  FhirExpression? get defaultValueExpression =>
      throw _privateConstructorUsedError;

  /// [defaultValueParameterDefinition] The value that should be used if there
  /// is no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ParameterDefinition? get defaultValueParameterDefinition =>
      throw _privateConstructorUsedError;

  /// [defaultValueRelatedArtifact] The value that should be used if there is
  /// no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  RelatedArtifact? get defaultValueRelatedArtifact =>
      throw _privateConstructorUsedError;

  /// [defaultValueTriggerDefinition] The value that should be used if there is
  /// no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  TriggerDefinition? get defaultValueTriggerDefinition =>
      throw _privateConstructorUsedError;

  /// [defaultValueUsageContext] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  UsageContext? get defaultValueUsageContext =>
      throw _privateConstructorUsedError;

  /// [defaultValueDosage] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  Dosage? get defaultValueDosage => throw _privateConstructorUsedError;

  /// [meaningWhenMissing] The Implicit meaning that is to be understood when
  /// this element is missing (e.g. 'when this element is missing, the period is
  ///  ongoing').
  FhirMarkdown? get meaningWhenMissing => throw _privateConstructorUsedError;

  /// [meaningWhenMissingElement] Extensions for meaningWhenMissing
  @JsonKey(name: '_meaningWhenMissing')
  PrimitiveElement? get meaningWhenMissingElement =>
      throw _privateConstructorUsedError;

  /// [orderMeaning] If present, indicates that the order of the repeating
  /// element has meaning and describes what that meaning is.  If absent, it
  ///  means that the order of the element has no meaning.
  String? get orderMeaning => throw _privateConstructorUsedError;

  /// [orderMeaningElement] Extensions for orderMeaning
  @JsonKey(name: '_orderMeaning')
  PrimitiveElement? get orderMeaningElement =>
      throw _privateConstructorUsedError;

  /// [fixedBase64Binary] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  FhirBase64Binary? get fixedBase64Binary => throw _privateConstructorUsedError;

  /// [fixedBase64BinaryElement] Extensions for fixedBase64Binary
  @JsonKey(name: '_fixedBase64Binary')
  PrimitiveElement? get fixedBase64BinaryElement =>
      throw _privateConstructorUsedError;

  /// [fixedBoolean] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirBoolean? get fixedBoolean => throw _privateConstructorUsedError;

  /// [fixedBooleanElement] Extensions for fixedBoolean
  @JsonKey(name: '_fixedBoolean')
  PrimitiveElement? get fixedBooleanElement =>
      throw _privateConstructorUsedError;

  /// [fixedCanonical] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirCanonical? get fixedCanonical => throw _privateConstructorUsedError;

  /// [fixedCanonicalElement] Extensions for fixedCanonical
  @JsonKey(name: '_fixedCanonical')
  PrimitiveElement? get fixedCanonicalElement =>
      throw _privateConstructorUsedError;

  /// [fixedCode] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirCode? get fixedCode => throw _privateConstructorUsedError;

  /// [fixedCodeElement] Extensions for fixedCode
  @JsonKey(name: '_fixedCode')
  PrimitiveElement? get fixedCodeElement => throw _privateConstructorUsedError;

  /// [fixedDate] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirDate? get fixedDate => throw _privateConstructorUsedError;

  /// [fixedDateElement] Extensions for fixedDate
  @JsonKey(name: '_fixedDate')
  PrimitiveElement? get fixedDateElement => throw _privateConstructorUsedError;

  /// [fixedDateTime] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirDateTime? get fixedDateTime => throw _privateConstructorUsedError;

  /// [fixedDateTimeElement] Extensions for fixedDateTime
  @JsonKey(name: '_fixedDateTime')
  PrimitiveElement? get fixedDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [fixedDecimal] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirDecimal? get fixedDecimal => throw _privateConstructorUsedError;

  /// [fixedDecimalElement] Extensions for fixedDecimal
  @JsonKey(name: '_fixedDecimal')
  PrimitiveElement? get fixedDecimalElement =>
      throw _privateConstructorUsedError;

  /// [fixedId] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirId? get fixedId => throw _privateConstructorUsedError;

  /// [fixedIdElement] Extensions for fixedId
  @JsonKey(name: '_fixedId')
  PrimitiveElement? get fixedIdElement => throw _privateConstructorUsedError;

  /// [fixedInstant] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirInstant? get fixedInstant => throw _privateConstructorUsedError;

  /// [fixedInstantElement] Extensions for fixedInstant
  @JsonKey(name: '_fixedInstant')
  PrimitiveElement? get fixedInstantElement =>
      throw _privateConstructorUsedError;

  /// [fixedInteger] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirInteger? get fixedInteger => throw _privateConstructorUsedError;

  /// [fixedIntegerElement] Extensions for fixedInteger
  @JsonKey(name: '_fixedInteger')
  PrimitiveElement? get fixedIntegerElement =>
      throw _privateConstructorUsedError;

  /// [fixedMarkdown] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirMarkdown? get fixedMarkdown => throw _privateConstructorUsedError;

  /// [fixedMarkdownElement] Extensions for fixedMarkdown
  @JsonKey(name: '_fixedMarkdown')
  PrimitiveElement? get fixedMarkdownElement =>
      throw _privateConstructorUsedError;

  /// [fixedOid] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirOid? get fixedOid => throw _privateConstructorUsedError;

  /// [fixedOidElement] Extensions for fixedOid
  @JsonKey(name: '_fixedOid')
  PrimitiveElement? get fixedOidElement => throw _privateConstructorUsedError;

  /// [fixedPositiveInt] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirPositiveInt? get fixedPositiveInt => throw _privateConstructorUsedError;

  /// [fixedPositiveIntElement] Extensions for fixedPositiveInt
  @JsonKey(name: '_fixedPositiveInt')
  PrimitiveElement? get fixedPositiveIntElement =>
      throw _privateConstructorUsedError;

  /// [fixedString] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  String? get fixedString => throw _privateConstructorUsedError;

  /// [fixedStringElement] Extensions for fixedString
  @JsonKey(name: '_fixedString')
  PrimitiveElement? get fixedStringElement =>
      throw _privateConstructorUsedError;

  /// [fixedTime] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirTime? get fixedTime => throw _privateConstructorUsedError;

  /// [fixedTimeElement] Extensions for fixedTime
  @JsonKey(name: '_fixedTime')
  PrimitiveElement? get fixedTimeElement => throw _privateConstructorUsedError;

  /// [fixedUnsignedInt] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirUnsignedInt? get fixedUnsignedInt => throw _privateConstructorUsedError;

  /// [fixedUnsignedIntElement] Extensions for fixedUnsignedInt
  @JsonKey(name: '_fixedUnsignedInt')
  PrimitiveElement? get fixedUnsignedIntElement =>
      throw _privateConstructorUsedError;

  /// [fixedUri] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirUri? get fixedUri => throw _privateConstructorUsedError;

  /// [fixedUriElement] Extensions for fixedUri
  @JsonKey(name: '_fixedUri')
  PrimitiveElement? get fixedUriElement => throw _privateConstructorUsedError;

  /// [fixedUrl] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirUrl? get fixedUrl => throw _privateConstructorUsedError;

  /// [fixedUrlElement] Extensions for fixedUrl
  @JsonKey(name: '_fixedUrl')
  PrimitiveElement? get fixedUrlElement => throw _privateConstructorUsedError;

  /// [fixedUuid] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirUuid? get fixedUuid => throw _privateConstructorUsedError;

  /// [fixedUuidElement] Extensions for fixedUuid
  @JsonKey(name: '_fixedUuid')
  PrimitiveElement? get fixedUuidElement => throw _privateConstructorUsedError;

  /// [fixedAddress] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Address? get fixedAddress => throw _privateConstructorUsedError;

  /// [fixedAge] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Age? get fixedAge => throw _privateConstructorUsedError;

  /// [fixedAnnotation] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Annotation? get fixedAnnotation => throw _privateConstructorUsedError;

  /// [fixedAttachment] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Attachment? get fixedAttachment => throw _privateConstructorUsedError;

  /// [fixedCodeableConcept] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  CodeableConcept? get fixedCodeableConcept =>
      throw _privateConstructorUsedError;
  CodeableReference? get fixedCodeableReference =>
      throw _privateConstructorUsedError;

  /// [fixedCoding] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Coding? get fixedCoding => throw _privateConstructorUsedError;

  /// [fixedContactPoint] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ContactPoint? get fixedContactPoint => throw _privateConstructorUsedError;

  /// [fixedCount] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Count? get fixedCount => throw _privateConstructorUsedError;

  /// [fixedDistance] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Distance? get fixedDistance => throw _privateConstructorUsedError;

  /// [fixedDuration] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirDuration? get fixedDuration => throw _privateConstructorUsedError;

  /// [fixedHumanName] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  HumanName? get fixedHumanName => throw _privateConstructorUsedError;

  /// [fixedIdentifier] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Identifier? get fixedIdentifier => throw _privateConstructorUsedError;

  /// [fixedMoney] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Money? get fixedMoney => throw _privateConstructorUsedError;

  /// [fixedPeriod] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Period? get fixedPeriod => throw _privateConstructorUsedError;

  /// [fixedQuantity] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Quantity? get fixedQuantity => throw _privateConstructorUsedError;

  /// [fixedRange] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Range? get fixedRange => throw _privateConstructorUsedError;

  /// [fixedRatio] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Ratio? get fixedRatio => throw _privateConstructorUsedError;
  RatioRange? get fixedRatioRange => throw _privateConstructorUsedError;

  /// [fixedReference] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Reference? get fixedReference => throw _privateConstructorUsedError;

  /// [fixedSampledData] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  SampledData? get fixedSampledData => throw _privateConstructorUsedError;

  /// [fixedSignature] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Signature? get fixedSignature => throw _privateConstructorUsedError;

  /// [fixedTiming] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Timing? get fixedTiming => throw _privateConstructorUsedError;

  /// [fixedContactDetail] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ContactDetail? get fixedContactDetail => throw _privateConstructorUsedError;

  /// [fixedContributor] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Contributor? get fixedContributor => throw _privateConstructorUsedError;

  /// [fixedDataRequirement] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  DataRequirement? get fixedDataRequirement =>
      throw _privateConstructorUsedError;

  /// [fixedExpression] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  FhirExpression? get fixedExpression => throw _privateConstructorUsedError;

  /// [fixedParameterDefinition] Specifies a value that SHALL be exactly the
  /// value  for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ParameterDefinition? get fixedParameterDefinition =>
      throw _privateConstructorUsedError;

  /// [fixedRelatedArtifact] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  RelatedArtifact? get fixedRelatedArtifact =>
      throw _privateConstructorUsedError;

  /// [fixedTriggerDefinition] Specifies a value that SHALL be exactly the
  /// value  for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  TriggerDefinition? get fixedTriggerDefinition =>
      throw _privateConstructorUsedError;

  /// [fixedUsageContext] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  UsageContext? get fixedUsageContext => throw _privateConstructorUsedError;

  /// [fixedDosage] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  Dosage? get fixedDosage => throw _privateConstructorUsedError;

  /// [patternBase64Binary] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirBase64Binary? get patternBase64Binary =>
      throw _privateConstructorUsedError;

  /// [patternBase64BinaryElement] Extensions for patternBase64Binary
  @JsonKey(name: '_patternBase64Binary')
  PrimitiveElement? get patternBase64BinaryElement =>
      throw _privateConstructorUsedError;

  /// [patternBoolean] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirBoolean? get patternBoolean => throw _privateConstructorUsedError;

  /// [patternBooleanElement] Extensions for patternBoolean
  @JsonKey(name: '_patternBoolean')
  PrimitiveElement? get patternBooleanElement =>
      throw _privateConstructorUsedError;

  /// [patternCanonical] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirCanonical? get patternCanonical => throw _privateConstructorUsedError;

  /// [patternCanonicalElement] Extensions for patternCanonical
  @JsonKey(name: '_patternCanonical')
  PrimitiveElement? get patternCanonicalElement =>
      throw _privateConstructorUsedError;

  /// [patternCode] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirCode? get patternCode => throw _privateConstructorUsedError;

  /// [patternCodeElement] Extensions for patternCode
  @JsonKey(name: '_patternCode')
  PrimitiveElement? get patternCodeElement =>
      throw _privateConstructorUsedError;

  /// [patternDate] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirDate? get patternDate => throw _privateConstructorUsedError;

  /// [patternDateElement] Extensions for patternDate
  @JsonKey(name: '_patternDate')
  PrimitiveElement? get patternDateElement =>
      throw _privateConstructorUsedError;

  /// [patternDateTime] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirDateTime? get patternDateTime => throw _privateConstructorUsedError;

  /// [patternDateTimeElement] Extensions for patternDateTime
  @JsonKey(name: '_patternDateTime')
  PrimitiveElement? get patternDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [patternDecimal] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirDecimal? get patternDecimal => throw _privateConstructorUsedError;

  /// [patternDecimalElement] Extensions for patternDecimal
  @JsonKey(name: '_patternDecimal')
  PrimitiveElement? get patternDecimalElement =>
      throw _privateConstructorUsedError;

  /// [patternId] Specifies a value that the value in the instance SHALL follow
  /// - that is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  ///  example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirId? get patternId => throw _privateConstructorUsedError;

  /// [patternIdElement] Extensions for patternId
  @JsonKey(name: '_patternId')
  PrimitiveElement? get patternIdElement => throw _privateConstructorUsedError;

  /// [patternInstant] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirInstant? get patternInstant => throw _privateConstructorUsedError;

  /// [patternInstantElement] Extensions for patternInstant
  @JsonKey(name: '_patternInstant')
  PrimitiveElement? get patternInstantElement =>
      throw _privateConstructorUsedError;

  /// [patternInteger] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirInteger? get patternInteger => throw _privateConstructorUsedError;

  /// [patternIntegerElement] Extensions for patternInteger
  @JsonKey(name: '_patternInteger')
  PrimitiveElement? get patternIntegerElement =>
      throw _privateConstructorUsedError;

  /// [patternMarkdown] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirMarkdown? get patternMarkdown => throw _privateConstructorUsedError;

  /// [patternMarkdownElement] Extensions for patternMarkdown
  @JsonKey(name: '_patternMarkdown')
  PrimitiveElement? get patternMarkdownElement =>
      throw _privateConstructorUsedError;

  /// [patternOid] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirOid? get patternOid => throw _privateConstructorUsedError;

  /// [patternOidElement] Extensions for patternOid
  @JsonKey(name: '_patternOid')
  PrimitiveElement? get patternOidElement => throw _privateConstructorUsedError;

  /// [patternPositiveInt] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirPositiveInt? get patternPositiveInt => throw _privateConstructorUsedError;

  /// [patternPositiveIntElement] Extensions for patternPositiveInt
  @JsonKey(name: '_patternPositiveInt')
  PrimitiveElement? get patternPositiveIntElement =>
      throw _privateConstructorUsedError;

  /// [patternString] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  String? get patternString => throw _privateConstructorUsedError;

  /// [patternStringElement] Extensions for patternString
  @JsonKey(name: '_patternString')
  PrimitiveElement? get patternStringElement =>
      throw _privateConstructorUsedError;

  /// [patternTime] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirTime? get patternTime => throw _privateConstructorUsedError;

  /// [patternTimeElement] Extensions for patternTime
  @JsonKey(name: '_patternTime')
  PrimitiveElement? get patternTimeElement =>
      throw _privateConstructorUsedError;

  /// [patternUnsignedInt] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirUnsignedInt? get patternUnsignedInt => throw _privateConstructorUsedError;

  /// [patternUnsignedIntElement] Extensions for patternUnsignedInt
  @JsonKey(name: '_patternUnsignedInt')
  PrimitiveElement? get patternUnsignedIntElement =>
      throw _privateConstructorUsedError;

  /// [patternUri] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirUri? get patternUri => throw _privateConstructorUsedError;

  /// [patternUriElement] Extensions for patternUri
  @JsonKey(name: '_patternUri')
  PrimitiveElement? get patternUriElement => throw _privateConstructorUsedError;

  /// [patternUrl] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirUrl? get patternUrl => throw _privateConstructorUsedError;

  /// [patternUrlElement] Extensions for patternUrl
  @JsonKey(name: '_patternUrl')
  PrimitiveElement? get patternUrlElement => throw _privateConstructorUsedError;

  /// [patternUuid] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirUuid? get patternUuid => throw _privateConstructorUsedError;

  /// [patternUuidElement] Extensions for patternUuid
  @JsonKey(name: '_patternUuid')
  PrimitiveElement? get patternUuidElement =>
      throw _privateConstructorUsedError;

  /// [patternAddress] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Address? get patternAddress => throw _privateConstructorUsedError;

  /// [patternAge] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Age? get patternAge => throw _privateConstructorUsedError;

  /// [patternAnnotation] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Annotation? get patternAnnotation => throw _privateConstructorUsedError;

  /// [patternAttachment] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Attachment? get patternAttachment => throw _privateConstructorUsedError;

  /// [patternCodeableConcept] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  CodeableConcept? get patternCodeableConcept =>
      throw _privateConstructorUsedError;
  CodeableReference? get patternCodeableReference =>
      throw _privateConstructorUsedError;

  /// [patternCoding] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Coding? get patternCoding => throw _privateConstructorUsedError;

  /// [patternContactPoint] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  ContactPoint? get patternContactPoint => throw _privateConstructorUsedError;

  /// [patternCount] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Count? get patternCount => throw _privateConstructorUsedError;

  /// [patternDistance] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Distance? get patternDistance => throw _privateConstructorUsedError;

  /// [patternDuration] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirDuration? get patternDuration => throw _privateConstructorUsedError;

  /// [patternHumanName] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  HumanName? get patternHumanName => throw _privateConstructorUsedError;

  /// [patternIdentifier] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Identifier? get patternIdentifier => throw _privateConstructorUsedError;

  /// [patternMoney] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Money? get patternMoney => throw _privateConstructorUsedError;

  /// [patternPeriod] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Period? get patternPeriod => throw _privateConstructorUsedError;

  /// [patternQuantity] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Quantity? get patternQuantity => throw _privateConstructorUsedError;

  /// [patternRange] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Range? get patternRange => throw _privateConstructorUsedError;

  /// [patternRatio] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Ratio? get patternRatio => throw _privateConstructorUsedError;
  RatioRange? get patternRatioRange => throw _privateConstructorUsedError;

  /// [patternReference] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Reference? get patternReference => throw _privateConstructorUsedError;

  /// [patternSampledData] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  SampledData? get patternSampledData => throw _privateConstructorUsedError;

  /// [patternSignature] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Signature? get patternSignature => throw _privateConstructorUsedError;

  /// [patternTiming] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Timing? get patternTiming => throw _privateConstructorUsedError;

  /// [patternContactDetail] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  ContactDetail? get patternContactDetail => throw _privateConstructorUsedError;

  /// [patternContributor] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Contributor? get patternContributor => throw _privateConstructorUsedError;

  /// [patternDataRequirement] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  DataRequirement? get patternDataRequirement =>
      throw _privateConstructorUsedError;

  /// [patternExpression] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  FhirExpression? get patternExpression => throw _privateConstructorUsedError;

  /// [patternParameterDefinition] Specifies a value that the value in the
  /// instance SHALL follow - that is, any value in the pattern must be found in
  /// the instance. Other additional values may be found too. This is
  ///  effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  ParameterDefinition? get patternParameterDefinition =>
      throw _privateConstructorUsedError;

  /// [patternRelatedArtifact] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  RelatedArtifact? get patternRelatedArtifact =>
      throw _privateConstructorUsedError;

  /// [patternTriggerDefinition] Specifies a value that the value in the
  /// instance SHALL follow - that is, any value in the pattern must be found in
  /// the instance. Other additional values may be found too. This is
  ///  effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  TriggerDefinition? get patternTriggerDefinition =>
      throw _privateConstructorUsedError;

  /// [patternUsageContext] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  UsageContext? get patternUsageContext => throw _privateConstructorUsedError;

  /// [patternDosage] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  Dosage? get patternDosage => throw _privateConstructorUsedError;

  /// [example] A sample value for this element demonstrating the type of
  ///  information that would typically be found in the element.
  List<ElementDefinitionExample>? get example =>
      throw _privateConstructorUsedError;

  /// [minValueDate] The minimum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  FhirDate? get minValueDate => throw _privateConstructorUsedError;

  /// [minValueDateElement] Extensions for minValueDate
  @JsonKey(name: '_minValueDate')
  PrimitiveElement? get minValueDateElement =>
      throw _privateConstructorUsedError;

  /// [minValueDateTime] The minimum allowed value for the element. The value
  /// is inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  FhirDateTime? get minValueDateTime => throw _privateConstructorUsedError;

  /// [minValueDateTimeElement] Extensions for minValueDateTime
  @JsonKey(name: '_minValueDateTime')
  PrimitiveElement? get minValueDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [minValueInstant] The minimum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  FhirInstant? get minValueInstant => throw _privateConstructorUsedError;

  /// [minValueInstantElement] Extensions for minValueInstant
  @JsonKey(name: '_minValueInstant')
  PrimitiveElement? get minValueInstantElement =>
      throw _privateConstructorUsedError;

  /// [minValueTime] The minimum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  FhirTime? get minValueTime => throw _privateConstructorUsedError;

  /// [minValueTimeElement] Extensions for minValueTime
  @JsonKey(name: '_minValueTime')
  PrimitiveElement? get minValueTimeElement =>
      throw _privateConstructorUsedError;

  /// [minValueDecimal] The minimum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  FhirDecimal? get minValueDecimal => throw _privateConstructorUsedError;

  /// [minValueDecimalElement] Extensions for minValueDecimal
  @JsonKey(name: '_minValueDecimal')
  PrimitiveElement? get minValueDecimalElement =>
      throw _privateConstructorUsedError;

  /// [minValueInteger] The minimum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  FhirInteger? get minValueInteger => throw _privateConstructorUsedError;

  /// [minValueIntegerElement] Extensions for minValueInteger
  @JsonKey(name: '_minValueInteger')
  PrimitiveElement? get minValueIntegerElement =>
      throw _privateConstructorUsedError;

  /// [minValuePositiveInt] The minimum allowed value for the element. The
  /// value is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  FhirPositiveInt? get minValuePositiveInt =>
      throw _privateConstructorUsedError;

  /// [minValuePositiveIntElement] Extensions for minValuePositiveInt
  @JsonKey(name: '_minValuePositiveInt')
  PrimitiveElement? get minValuePositiveIntElement =>
      throw _privateConstructorUsedError;

  /// [minValueUnsignedInt] The minimum allowed value for the element. The
  /// value is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  FhirUnsignedInt? get minValueUnsignedInt =>
      throw _privateConstructorUsedError;

  /// [minValueUnsignedIntElement] Extensions for minValueUnsignedInt
  @JsonKey(name: '_minValueUnsignedInt')
  PrimitiveElement? get minValueUnsignedIntElement =>
      throw _privateConstructorUsedError;

  /// [minValueQuantity] The minimum allowed value for the element. The value
  /// is inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  Quantity? get minValueQuantity => throw _privateConstructorUsedError;

  /// [maxValueDate] The maximum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  FhirDate? get maxValueDate => throw _privateConstructorUsedError;

  /// [maxValueDateElement] Extensions for maxValueDate
  @JsonKey(name: '_maxValueDate')
  PrimitiveElement? get maxValueDateElement =>
      throw _privateConstructorUsedError;

  /// [maxValueDateTime] The maximum allowed value for the element. The value
  /// is inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  FhirDateTime? get maxValueDateTime => throw _privateConstructorUsedError;

  /// [maxValueDateTimeElement] Extensions for maxValueDateTime
  @JsonKey(name: '_maxValueDateTime')
  PrimitiveElement? get maxValueDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [maxValueInstant] The maximum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  FhirInstant? get maxValueInstant => throw _privateConstructorUsedError;

  /// [maxValueInstantElement] Extensions for maxValueInstant
  @JsonKey(name: '_maxValueInstant')
  PrimitiveElement? get maxValueInstantElement =>
      throw _privateConstructorUsedError;

  /// [maxValueTime] The maximum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  FhirTime? get maxValueTime => throw _privateConstructorUsedError;

  /// [maxValueTimeElement] Extensions for maxValueTime
  @JsonKey(name: '_maxValueTime')
  PrimitiveElement? get maxValueTimeElement =>
      throw _privateConstructorUsedError;

  /// [maxValueDecimal] The maximum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  FhirDecimal? get maxValueDecimal => throw _privateConstructorUsedError;

  /// [maxValueDecimalElement] Extensions for maxValueDecimal
  @JsonKey(name: '_maxValueDecimal')
  PrimitiveElement? get maxValueDecimalElement =>
      throw _privateConstructorUsedError;

  /// [maxValueInteger] The maximum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  FhirInteger? get maxValueInteger => throw _privateConstructorUsedError;

  /// [maxValueIntegerElement] Extensions for maxValueInteger
  @JsonKey(name: '_maxValueInteger')
  PrimitiveElement? get maxValueIntegerElement =>
      throw _privateConstructorUsedError;

  /// [maxValuePositiveInt] The maximum allowed value for the element. The
  /// value is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  FhirPositiveInt? get maxValuePositiveInt =>
      throw _privateConstructorUsedError;

  /// [maxValuePositiveIntElement] Extensions for maxValuePositiveInt
  @JsonKey(name: '_maxValuePositiveInt')
  PrimitiveElement? get maxValuePositiveIntElement =>
      throw _privateConstructorUsedError;

  /// [maxValueUnsignedInt] The maximum allowed value for the element. The
  /// value is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  FhirUnsignedInt? get maxValueUnsignedInt =>
      throw _privateConstructorUsedError;

  /// [maxValueUnsignedIntElement] Extensions for maxValueUnsignedInt
  @JsonKey(name: '_maxValueUnsignedInt')
  PrimitiveElement? get maxValueUnsignedIntElement =>
      throw _privateConstructorUsedError;

  /// [maxValueQuantity] The maximum allowed value for the element. The value
  /// is inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  Quantity? get maxValueQuantity => throw _privateConstructorUsedError;

  /// [maxLength] Indicates the maximum length in characters that is permitted
  /// to be present in conformant instances and which is expected to be
  ///  supported by conformant consumers that support the element.
  FhirInteger? get maxLength => throw _privateConstructorUsedError;

  /// [maxLengthElement] Extensions for maxLength
  @JsonKey(name: '_maxLength')
  PrimitiveElement? get maxLengthElement => throw _privateConstructorUsedError;

  /// [condition] A reference to an invariant that may make additional
  ///  statements about the cardinality or value in the instance.
  List<FhirId>? get condition => throw _privateConstructorUsedError;

  /// [conditionElement] Extensions for condition
  @JsonKey(name: '_condition')
  List<PrimitiveElement>? get conditionElement =>
      throw _privateConstructorUsedError;

  /// [constraint] Formal constraints such as co-occurrence and other
  /// constraints that can be computationally evaluated within the context of
  ///  the instance.
  List<ElementDefinitionConstraint>? get constraint =>
      throw _privateConstructorUsedError;

  /// [mustSupport] If true, implementations that produce or consume resources
  /// SHALL provide "support" for the element in some meaningful way.  If false,
  /// the element may be ignored and not supported. If false, whether to
  /// populate or use the data element in any way is at the discretion of the
  ///  implementation.
  FhirBoolean? get mustSupport => throw _privateConstructorUsedError;

  /// [mustSupportElement] Extensions for mustSupport
  @JsonKey(name: '_mustSupport')
  PrimitiveElement? get mustSupportElement =>
      throw _privateConstructorUsedError;

  /// [isModifier] If true, the value of this element affects the
  /// interpretation of the element or resource that contains it, and the value
  /// of the element cannot be ignored. Typically, this is used for status,
  /// negation and qualification codes. The effect of this is that the element
  /// cannot be ignored by systems: they SHALL either recognize the element and
  /// process it, and/or a pre-determination has been made that it is not
  ///  relevant to their particular system.
  FhirBoolean? get isModifier => throw _privateConstructorUsedError;

  /// [isModifierElement] Extensions for isModifier
  @JsonKey(name: '_isModifier')
  PrimitiveElement? get isModifierElement => throw _privateConstructorUsedError;

  /// [isModifierReason] Explains how that element affects the interpretation
  ///  of the resource or element that contains it.
  String? get isModifierReason => throw _privateConstructorUsedError;

  /// [isModifierReasonElement] Extensions for isModifierReason
  @JsonKey(name: '_isModifierReason')
  PrimitiveElement? get isModifierReasonElement =>
      throw _privateConstructorUsedError;

  /// [isSummary] Whether the element should be included if a client requests a
  ///  search with the parameter _summary=true.
  FhirBoolean? get isSummary => throw _privateConstructorUsedError;

  /// [isSummaryElement] Extensions for isSummary
  @JsonKey(name: '_isSummary')
  PrimitiveElement? get isSummaryElement => throw _privateConstructorUsedError;

  /// [binding] Binds to a value set if this element is coded (code, Coding,
  ///  CodeableConcept, Quantity), or the data types (string, uri).
  ElementDefinitionBinding? get binding => throw _privateConstructorUsedError;

  /// [mapping] Identifies a concept from an external specification that
  ///  roughly corresponds to this element.
  List<ElementDefinitionMapping>? get mapping =>
      throw _privateConstructorUsedError;

  /// Serializes this ElementDefinition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ElementDefinitionCopyWith<ElementDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementDefinitionCopyWith<$Res> {
  factory $ElementDefinitionCopyWith(
          ElementDefinition value, $Res Function(ElementDefinition) then) =
      _$ElementDefinitionCopyWithImpl<$Res, ElementDefinition>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? path,
      @JsonKey(name: '_path') PrimitiveElement? pathElement,
      List<ElementDefinitionRepresentation>? representation,
      @JsonKey(name: '_representation')
      List<PrimitiveElement>? representationElement,
      String? sliceName,
      @JsonKey(name: '_sliceName') PrimitiveElement? sliceNameElement,
      FhirBoolean? sliceIsConstraining,
      @JsonKey(name: '_sliceIsConstraining')
      PrimitiveElement? sliceIsConstrainingElement,
      String? label,
      @JsonKey(name: '_label') PrimitiveElement? labelElement,
      List<Coding>? code,
      ElementDefinitionSlicing? slicing,
      String? short,
      @JsonKey(name: '_short') PrimitiveElement? shortElement,
      FhirMarkdown? definition,
      @JsonKey(name: '_definition') PrimitiveElement? definitionElement,
      FhirMarkdown? comment,
      @JsonKey(name: '_comment') PrimitiveElement? commentElement,
      FhirMarkdown? requirements,
      @JsonKey(name: '_requirements') PrimitiveElement? requirementsElement,
      List<String>? alias,
      @JsonKey(name: '_alias') List<PrimitiveElement>? aliasElement,
      FhirUnsignedInt? min,
      @JsonKey(name: '_min') PrimitiveElement? minElement,
      String? max,
      @JsonKey(name: '_max') PrimitiveElement? maxElement,
      ElementDefinitionBase? base,
      FhirUri? contentReference,
      @JsonKey(name: '_contentReference')
      PrimitiveElement? contentReferenceElement,
      List<ElementDefinitionType>? type,
      FhirBase64Binary? defaultValueBase64Binary,
      @JsonKey(name: '_defaultValueBase64Binary')
      PrimitiveElement? defaultValueBase64BinaryElement,
      FhirBoolean? defaultValueBoolean,
      @JsonKey(name: '_defaultValueBoolean')
      PrimitiveElement? defaultValueBooleanElement,
      FhirCanonical? defaultValueCanonical,
      @JsonKey(name: '_defaultValueCanonical')
      PrimitiveElement? defaultValueCanonicalElement,
      FhirCode? defaultValueCode,
      @JsonKey(name: '_defaultValueCode')
      PrimitiveElement? defaultValueCodeElement,
      FhirDate? defaultValueDate,
      @JsonKey(name: '_defaultValueDate')
      PrimitiveElement? defaultValueDateElement,
      FhirDateTime? defaultValueDateTime,
      @JsonKey(name: '_defaultValueDateTime')
      PrimitiveElement? defaultValueDateTimeElement,
      FhirDecimal? defaultValueDecimal,
      @JsonKey(name: '_defaultValueDecimal')
      PrimitiveElement? defaultValueDecimalElement,
      FhirId? defaultValueId,
      @JsonKey(name: '_defaultValueId') PrimitiveElement? defaultValueIdElement,
      FhirInstant? defaultValueInstant,
      @JsonKey(name: '_defaultValueInstant')
      PrimitiveElement? defaultValueInstantElement,
      FhirInteger? defaultValueInteger,
      @JsonKey(name: '_defaultValueInteger')
      PrimitiveElement? defaultValueIntegerElement,
      FhirMarkdown? defaultValueMarkdown,
      @JsonKey(name: '_defaultValueMarkdown')
      PrimitiveElement? defaultValueMarkdownElement,
      FhirOid? defaultValueOid,
      @JsonKey(name: '_defaultValueOid')
      PrimitiveElement? defaultValueOidElement,
      FhirPositiveInt? defaultValuePositiveInt,
      @JsonKey(name: '_defaultValuePositiveInt')
      PrimitiveElement? defaultValuePositiveIntElement,
      String? defaultValueString,
      @JsonKey(name: '_defaultValueString')
      PrimitiveElement? defaultValueStringElement,
      FhirTime? defaultValueTime,
      @JsonKey(name: '_defaultValueTime')
      PrimitiveElement? defaultValueTimeElement,
      FhirUnsignedInt? defaultValueUnsignedInt,
      @JsonKey(name: '_defaultValueUnsignedInt')
      PrimitiveElement? defaultValueUnsignedIntElement,
      FhirUri? defaultValueUri,
      @JsonKey(name: '_defaultValueUri')
      PrimitiveElement? defaultValueUriElement,
      FhirUrl? defaultValueUrl,
      @JsonKey(name: '_defaultValueUrl')
      PrimitiveElement? defaultValueUrlElement,
      FhirUuid? defaultValueUuid,
      @JsonKey(name: '_defaultValueUuid')
      PrimitiveElement? defaultValueUuidElement,
      Address? defaultValueAddress,
      Age? defaultValueAge,
      Annotation? defaultValueAnnotation,
      Attachment? defaultValueAttachment,
      CodeableConcept? defaultValueCodeableConcept,
      CodeableReference? defaultValueCodeableReference,
      Coding? defaultValueCoding,
      ContactPoint? defaultValueContactPoint,
      Count? defaultValueCount,
      Distance? defaultValueDistance,
      FhirDuration? defaultValueDuration,
      HumanName? defaultValueHumanName,
      Identifier? defaultValueIdentifier,
      Money? defaultValueMoney,
      Period? defaultValuePeriod,
      Quantity? defaultValueQuantity,
      Range? defaultValueRange,
      Ratio? defaultValueRatio,
      RatioRange? defaultValueRatioRange,
      Reference? defaultValueReference,
      SampledData? defaultValueSampledData,
      Signature? defaultValueSignature,
      Timing? defaultValueTiming,
      ContactDetail? defaultValueContactDetail,
      Contributor? defaultValueContributor,
      DataRequirement? defaultValueDataRequirement,
      FhirExpression? defaultValueExpression,
      ParameterDefinition? defaultValueParameterDefinition,
      RelatedArtifact? defaultValueRelatedArtifact,
      TriggerDefinition? defaultValueTriggerDefinition,
      UsageContext? defaultValueUsageContext,
      Dosage? defaultValueDosage,
      FhirMarkdown? meaningWhenMissing,
      @JsonKey(name: '_meaningWhenMissing')
      PrimitiveElement? meaningWhenMissingElement,
      String? orderMeaning,
      @JsonKey(name: '_orderMeaning') PrimitiveElement? orderMeaningElement,
      FhirBase64Binary? fixedBase64Binary,
      @JsonKey(name: '_fixedBase64Binary')
      PrimitiveElement? fixedBase64BinaryElement,
      FhirBoolean? fixedBoolean,
      @JsonKey(name: '_fixedBoolean') PrimitiveElement? fixedBooleanElement,
      FhirCanonical? fixedCanonical,
      @JsonKey(name: '_fixedCanonical') PrimitiveElement? fixedCanonicalElement,
      FhirCode? fixedCode,
      @JsonKey(name: '_fixedCode') PrimitiveElement? fixedCodeElement,
      FhirDate? fixedDate,
      @JsonKey(name: '_fixedDate') PrimitiveElement? fixedDateElement,
      FhirDateTime? fixedDateTime,
      @JsonKey(name: '_fixedDateTime') PrimitiveElement? fixedDateTimeElement,
      FhirDecimal? fixedDecimal,
      @JsonKey(name: '_fixedDecimal') PrimitiveElement? fixedDecimalElement,
      FhirId? fixedId,
      @JsonKey(name: '_fixedId') PrimitiveElement? fixedIdElement,
      FhirInstant? fixedInstant,
      @JsonKey(name: '_fixedInstant') PrimitiveElement? fixedInstantElement,
      FhirInteger? fixedInteger,
      @JsonKey(name: '_fixedInteger') PrimitiveElement? fixedIntegerElement,
      FhirMarkdown? fixedMarkdown,
      @JsonKey(name: '_fixedMarkdown') PrimitiveElement? fixedMarkdownElement,
      FhirOid? fixedOid,
      @JsonKey(name: '_fixedOid') PrimitiveElement? fixedOidElement,
      FhirPositiveInt? fixedPositiveInt,
      @JsonKey(name: '_fixedPositiveInt')
      PrimitiveElement? fixedPositiveIntElement,
      String? fixedString,
      @JsonKey(name: '_fixedString') PrimitiveElement? fixedStringElement,
      FhirTime? fixedTime,
      @JsonKey(name: '_fixedTime') PrimitiveElement? fixedTimeElement,
      FhirUnsignedInt? fixedUnsignedInt,
      @JsonKey(name: '_fixedUnsignedInt')
      PrimitiveElement? fixedUnsignedIntElement,
      FhirUri? fixedUri,
      @JsonKey(name: '_fixedUri') PrimitiveElement? fixedUriElement,
      FhirUrl? fixedUrl,
      @JsonKey(name: '_fixedUrl') PrimitiveElement? fixedUrlElement,
      FhirUuid? fixedUuid,
      @JsonKey(name: '_fixedUuid') PrimitiveElement? fixedUuidElement,
      Address? fixedAddress,
      Age? fixedAge,
      Annotation? fixedAnnotation,
      Attachment? fixedAttachment,
      CodeableConcept? fixedCodeableConcept,
      CodeableReference? fixedCodeableReference,
      Coding? fixedCoding,
      ContactPoint? fixedContactPoint,
      Count? fixedCount,
      Distance? fixedDistance,
      FhirDuration? fixedDuration,
      HumanName? fixedHumanName,
      Identifier? fixedIdentifier,
      Money? fixedMoney,
      Period? fixedPeriod,
      Quantity? fixedQuantity,
      Range? fixedRange,
      Ratio? fixedRatio,
      RatioRange? fixedRatioRange,
      Reference? fixedReference,
      SampledData? fixedSampledData,
      Signature? fixedSignature,
      Timing? fixedTiming,
      ContactDetail? fixedContactDetail,
      Contributor? fixedContributor,
      DataRequirement? fixedDataRequirement,
      FhirExpression? fixedExpression,
      ParameterDefinition? fixedParameterDefinition,
      RelatedArtifact? fixedRelatedArtifact,
      TriggerDefinition? fixedTriggerDefinition,
      UsageContext? fixedUsageContext,
      Dosage? fixedDosage,
      FhirBase64Binary? patternBase64Binary,
      @JsonKey(name: '_patternBase64Binary')
      PrimitiveElement? patternBase64BinaryElement,
      FhirBoolean? patternBoolean,
      @JsonKey(name: '_patternBoolean') PrimitiveElement? patternBooleanElement,
      FhirCanonical? patternCanonical,
      @JsonKey(name: '_patternCanonical')
      PrimitiveElement? patternCanonicalElement,
      FhirCode? patternCode,
      @JsonKey(name: '_patternCode') PrimitiveElement? patternCodeElement,
      FhirDate? patternDate,
      @JsonKey(name: '_patternDate') PrimitiveElement? patternDateElement,
      FhirDateTime? patternDateTime,
      @JsonKey(name: '_patternDateTime')
      PrimitiveElement? patternDateTimeElement,
      FhirDecimal? patternDecimal,
      @JsonKey(name: '_patternDecimal') PrimitiveElement? patternDecimalElement,
      FhirId? patternId,
      @JsonKey(name: '_patternId') PrimitiveElement? patternIdElement,
      FhirInstant? patternInstant,
      @JsonKey(name: '_patternInstant') PrimitiveElement? patternInstantElement,
      FhirInteger? patternInteger,
      @JsonKey(name: '_patternInteger') PrimitiveElement? patternIntegerElement,
      FhirMarkdown? patternMarkdown,
      @JsonKey(name: '_patternMarkdown')
      PrimitiveElement? patternMarkdownElement,
      FhirOid? patternOid,
      @JsonKey(name: '_patternOid') PrimitiveElement? patternOidElement,
      FhirPositiveInt? patternPositiveInt,
      @JsonKey(name: '_patternPositiveInt')
      PrimitiveElement? patternPositiveIntElement,
      String? patternString,
      @JsonKey(name: '_patternString') PrimitiveElement? patternStringElement,
      FhirTime? patternTime,
      @JsonKey(name: '_patternTime') PrimitiveElement? patternTimeElement,
      FhirUnsignedInt? patternUnsignedInt,
      @JsonKey(name: '_patternUnsignedInt')
      PrimitiveElement? patternUnsignedIntElement,
      FhirUri? patternUri,
      @JsonKey(name: '_patternUri') PrimitiveElement? patternUriElement,
      FhirUrl? patternUrl,
      @JsonKey(name: '_patternUrl') PrimitiveElement? patternUrlElement,
      FhirUuid? patternUuid,
      @JsonKey(name: '_patternUuid') PrimitiveElement? patternUuidElement,
      Address? patternAddress,
      Age? patternAge,
      Annotation? patternAnnotation,
      Attachment? patternAttachment,
      CodeableConcept? patternCodeableConcept,
      CodeableReference? patternCodeableReference,
      Coding? patternCoding,
      ContactPoint? patternContactPoint,
      Count? patternCount,
      Distance? patternDistance,
      FhirDuration? patternDuration,
      HumanName? patternHumanName,
      Identifier? patternIdentifier,
      Money? patternMoney,
      Period? patternPeriod,
      Quantity? patternQuantity,
      Range? patternRange,
      Ratio? patternRatio,
      RatioRange? patternRatioRange,
      Reference? patternReference,
      SampledData? patternSampledData,
      Signature? patternSignature,
      Timing? patternTiming,
      ContactDetail? patternContactDetail,
      Contributor? patternContributor,
      DataRequirement? patternDataRequirement,
      FhirExpression? patternExpression,
      ParameterDefinition? patternParameterDefinition,
      RelatedArtifact? patternRelatedArtifact,
      TriggerDefinition? patternTriggerDefinition,
      UsageContext? patternUsageContext,
      Dosage? patternDosage,
      List<ElementDefinitionExample>? example,
      FhirDate? minValueDate,
      @JsonKey(name: '_minValueDate') PrimitiveElement? minValueDateElement,
      FhirDateTime? minValueDateTime,
      @JsonKey(name: '_minValueDateTime')
      PrimitiveElement? minValueDateTimeElement,
      FhirInstant? minValueInstant,
      @JsonKey(name: '_minValueInstant')
      PrimitiveElement? minValueInstantElement,
      FhirTime? minValueTime,
      @JsonKey(name: '_minValueTime') PrimitiveElement? minValueTimeElement,
      FhirDecimal? minValueDecimal,
      @JsonKey(name: '_minValueDecimal')
      PrimitiveElement? minValueDecimalElement,
      FhirInteger? minValueInteger,
      @JsonKey(name: '_minValueInteger')
      PrimitiveElement? minValueIntegerElement,
      FhirPositiveInt? minValuePositiveInt,
      @JsonKey(name: '_minValuePositiveInt')
      PrimitiveElement? minValuePositiveIntElement,
      FhirUnsignedInt? minValueUnsignedInt,
      @JsonKey(name: '_minValueUnsignedInt')
      PrimitiveElement? minValueUnsignedIntElement,
      Quantity? minValueQuantity,
      FhirDate? maxValueDate,
      @JsonKey(name: '_maxValueDate') PrimitiveElement? maxValueDateElement,
      FhirDateTime? maxValueDateTime,
      @JsonKey(name: '_maxValueDateTime')
      PrimitiveElement? maxValueDateTimeElement,
      FhirInstant? maxValueInstant,
      @JsonKey(name: '_maxValueInstant')
      PrimitiveElement? maxValueInstantElement,
      FhirTime? maxValueTime,
      @JsonKey(name: '_maxValueTime') PrimitiveElement? maxValueTimeElement,
      FhirDecimal? maxValueDecimal,
      @JsonKey(name: '_maxValueDecimal')
      PrimitiveElement? maxValueDecimalElement,
      FhirInteger? maxValueInteger,
      @JsonKey(name: '_maxValueInteger')
      PrimitiveElement? maxValueIntegerElement,
      FhirPositiveInt? maxValuePositiveInt,
      @JsonKey(name: '_maxValuePositiveInt')
      PrimitiveElement? maxValuePositiveIntElement,
      FhirUnsignedInt? maxValueUnsignedInt,
      @JsonKey(name: '_maxValueUnsignedInt')
      PrimitiveElement? maxValueUnsignedIntElement,
      Quantity? maxValueQuantity,
      FhirInteger? maxLength,
      @JsonKey(name: '_maxLength') PrimitiveElement? maxLengthElement,
      List<FhirId>? condition,
      @JsonKey(name: '_condition') List<PrimitiveElement>? conditionElement,
      List<ElementDefinitionConstraint>? constraint,
      FhirBoolean? mustSupport,
      @JsonKey(name: '_mustSupport') PrimitiveElement? mustSupportElement,
      FhirBoolean? isModifier,
      @JsonKey(name: '_isModifier') PrimitiveElement? isModifierElement,
      String? isModifierReason,
      @JsonKey(name: '_isModifierReason')
      PrimitiveElement? isModifierReasonElement,
      FhirBoolean? isSummary,
      @JsonKey(name: '_isSummary') PrimitiveElement? isSummaryElement,
      ElementDefinitionBinding? binding,
      List<ElementDefinitionMapping>? mapping});

  $ElementDefinitionSlicingCopyWith<$Res>? get slicing;
  $ElementDefinitionBaseCopyWith<$Res>? get base;
  $AddressCopyWith<$Res>? get defaultValueAddress;
  $AgeCopyWith<$Res>? get defaultValueAge;
  $AnnotationCopyWith<$Res>? get defaultValueAnnotation;
  $AttachmentCopyWith<$Res>? get defaultValueAttachment;
  $CodeableConceptCopyWith<$Res>? get defaultValueCodeableConcept;
  $CodeableReferenceCopyWith<$Res>? get defaultValueCodeableReference;
  $CodingCopyWith<$Res>? get defaultValueCoding;
  $ContactPointCopyWith<$Res>? get defaultValueContactPoint;
  $CountCopyWith<$Res>? get defaultValueCount;
  $DistanceCopyWith<$Res>? get defaultValueDistance;
  $FhirDurationCopyWith<$Res>? get defaultValueDuration;
  $HumanNameCopyWith<$Res>? get defaultValueHumanName;
  $IdentifierCopyWith<$Res>? get defaultValueIdentifier;
  $MoneyCopyWith<$Res>? get defaultValueMoney;
  $PeriodCopyWith<$Res>? get defaultValuePeriod;
  $QuantityCopyWith<$Res>? get defaultValueQuantity;
  $RangeCopyWith<$Res>? get defaultValueRange;
  $RatioCopyWith<$Res>? get defaultValueRatio;
  $RatioRangeCopyWith<$Res>? get defaultValueRatioRange;
  $ReferenceCopyWith<$Res>? get defaultValueReference;
  $SampledDataCopyWith<$Res>? get defaultValueSampledData;
  $SignatureCopyWith<$Res>? get defaultValueSignature;
  $TimingCopyWith<$Res>? get defaultValueTiming;
  $ContactDetailCopyWith<$Res>? get defaultValueContactDetail;
  $ContributorCopyWith<$Res>? get defaultValueContributor;
  $DataRequirementCopyWith<$Res>? get defaultValueDataRequirement;
  $FhirExpressionCopyWith<$Res>? get defaultValueExpression;
  $ParameterDefinitionCopyWith<$Res>? get defaultValueParameterDefinition;
  $RelatedArtifactCopyWith<$Res>? get defaultValueRelatedArtifact;
  $TriggerDefinitionCopyWith<$Res>? get defaultValueTriggerDefinition;
  $UsageContextCopyWith<$Res>? get defaultValueUsageContext;
  $DosageCopyWith<$Res>? get defaultValueDosage;
  $AddressCopyWith<$Res>? get fixedAddress;
  $AgeCopyWith<$Res>? get fixedAge;
  $AnnotationCopyWith<$Res>? get fixedAnnotation;
  $AttachmentCopyWith<$Res>? get fixedAttachment;
  $CodeableConceptCopyWith<$Res>? get fixedCodeableConcept;
  $CodeableReferenceCopyWith<$Res>? get fixedCodeableReference;
  $CodingCopyWith<$Res>? get fixedCoding;
  $ContactPointCopyWith<$Res>? get fixedContactPoint;
  $CountCopyWith<$Res>? get fixedCount;
  $DistanceCopyWith<$Res>? get fixedDistance;
  $FhirDurationCopyWith<$Res>? get fixedDuration;
  $HumanNameCopyWith<$Res>? get fixedHumanName;
  $IdentifierCopyWith<$Res>? get fixedIdentifier;
  $MoneyCopyWith<$Res>? get fixedMoney;
  $PeriodCopyWith<$Res>? get fixedPeriod;
  $QuantityCopyWith<$Res>? get fixedQuantity;
  $RangeCopyWith<$Res>? get fixedRange;
  $RatioCopyWith<$Res>? get fixedRatio;
  $RatioRangeCopyWith<$Res>? get fixedRatioRange;
  $ReferenceCopyWith<$Res>? get fixedReference;
  $SampledDataCopyWith<$Res>? get fixedSampledData;
  $SignatureCopyWith<$Res>? get fixedSignature;
  $TimingCopyWith<$Res>? get fixedTiming;
  $ContactDetailCopyWith<$Res>? get fixedContactDetail;
  $ContributorCopyWith<$Res>? get fixedContributor;
  $DataRequirementCopyWith<$Res>? get fixedDataRequirement;
  $FhirExpressionCopyWith<$Res>? get fixedExpression;
  $ParameterDefinitionCopyWith<$Res>? get fixedParameterDefinition;
  $RelatedArtifactCopyWith<$Res>? get fixedRelatedArtifact;
  $TriggerDefinitionCopyWith<$Res>? get fixedTriggerDefinition;
  $UsageContextCopyWith<$Res>? get fixedUsageContext;
  $DosageCopyWith<$Res>? get fixedDosage;
  $AddressCopyWith<$Res>? get patternAddress;
  $AgeCopyWith<$Res>? get patternAge;
  $AnnotationCopyWith<$Res>? get patternAnnotation;
  $AttachmentCopyWith<$Res>? get patternAttachment;
  $CodeableConceptCopyWith<$Res>? get patternCodeableConcept;
  $CodeableReferenceCopyWith<$Res>? get patternCodeableReference;
  $CodingCopyWith<$Res>? get patternCoding;
  $ContactPointCopyWith<$Res>? get patternContactPoint;
  $CountCopyWith<$Res>? get patternCount;
  $DistanceCopyWith<$Res>? get patternDistance;
  $FhirDurationCopyWith<$Res>? get patternDuration;
  $HumanNameCopyWith<$Res>? get patternHumanName;
  $IdentifierCopyWith<$Res>? get patternIdentifier;
  $MoneyCopyWith<$Res>? get patternMoney;
  $PeriodCopyWith<$Res>? get patternPeriod;
  $QuantityCopyWith<$Res>? get patternQuantity;
  $RangeCopyWith<$Res>? get patternRange;
  $RatioCopyWith<$Res>? get patternRatio;
  $RatioRangeCopyWith<$Res>? get patternRatioRange;
  $ReferenceCopyWith<$Res>? get patternReference;
  $SampledDataCopyWith<$Res>? get patternSampledData;
  $SignatureCopyWith<$Res>? get patternSignature;
  $TimingCopyWith<$Res>? get patternTiming;
  $ContactDetailCopyWith<$Res>? get patternContactDetail;
  $ContributorCopyWith<$Res>? get patternContributor;
  $DataRequirementCopyWith<$Res>? get patternDataRequirement;
  $FhirExpressionCopyWith<$Res>? get patternExpression;
  $ParameterDefinitionCopyWith<$Res>? get patternParameterDefinition;
  $RelatedArtifactCopyWith<$Res>? get patternRelatedArtifact;
  $TriggerDefinitionCopyWith<$Res>? get patternTriggerDefinition;
  $UsageContextCopyWith<$Res>? get patternUsageContext;
  $DosageCopyWith<$Res>? get patternDosage;
  $QuantityCopyWith<$Res>? get minValueQuantity;
  $QuantityCopyWith<$Res>? get maxValueQuantity;
  $ElementDefinitionBindingCopyWith<$Res>? get binding;
}

/// @nodoc
class _$ElementDefinitionCopyWithImpl<$Res, $Val extends ElementDefinition>
    implements $ElementDefinitionCopyWith<$Res> {
  _$ElementDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? path = freezed,
    Object? pathElement = freezed,
    Object? representation = freezed,
    Object? representationElement = freezed,
    Object? sliceName = freezed,
    Object? sliceNameElement = freezed,
    Object? sliceIsConstraining = freezed,
    Object? sliceIsConstrainingElement = freezed,
    Object? label = freezed,
    Object? labelElement = freezed,
    Object? code = freezed,
    Object? slicing = freezed,
    Object? short = freezed,
    Object? shortElement = freezed,
    Object? definition = freezed,
    Object? definitionElement = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
    Object? requirements = freezed,
    Object? requirementsElement = freezed,
    Object? alias = freezed,
    Object? aliasElement = freezed,
    Object? min = freezed,
    Object? minElement = freezed,
    Object? max = freezed,
    Object? maxElement = freezed,
    Object? base = freezed,
    Object? contentReference = freezed,
    Object? contentReferenceElement = freezed,
    Object? type = freezed,
    Object? defaultValueBase64Binary = freezed,
    Object? defaultValueBase64BinaryElement = freezed,
    Object? defaultValueBoolean = freezed,
    Object? defaultValueBooleanElement = freezed,
    Object? defaultValueCanonical = freezed,
    Object? defaultValueCanonicalElement = freezed,
    Object? defaultValueCode = freezed,
    Object? defaultValueCodeElement = freezed,
    Object? defaultValueDate = freezed,
    Object? defaultValueDateElement = freezed,
    Object? defaultValueDateTime = freezed,
    Object? defaultValueDateTimeElement = freezed,
    Object? defaultValueDecimal = freezed,
    Object? defaultValueDecimalElement = freezed,
    Object? defaultValueId = freezed,
    Object? defaultValueIdElement = freezed,
    Object? defaultValueInstant = freezed,
    Object? defaultValueInstantElement = freezed,
    Object? defaultValueInteger = freezed,
    Object? defaultValueIntegerElement = freezed,
    Object? defaultValueMarkdown = freezed,
    Object? defaultValueMarkdownElement = freezed,
    Object? defaultValueOid = freezed,
    Object? defaultValueOidElement = freezed,
    Object? defaultValuePositiveInt = freezed,
    Object? defaultValuePositiveIntElement = freezed,
    Object? defaultValueString = freezed,
    Object? defaultValueStringElement = freezed,
    Object? defaultValueTime = freezed,
    Object? defaultValueTimeElement = freezed,
    Object? defaultValueUnsignedInt = freezed,
    Object? defaultValueUnsignedIntElement = freezed,
    Object? defaultValueUri = freezed,
    Object? defaultValueUriElement = freezed,
    Object? defaultValueUrl = freezed,
    Object? defaultValueUrlElement = freezed,
    Object? defaultValueUuid = freezed,
    Object? defaultValueUuidElement = freezed,
    Object? defaultValueAddress = freezed,
    Object? defaultValueAge = freezed,
    Object? defaultValueAnnotation = freezed,
    Object? defaultValueAttachment = freezed,
    Object? defaultValueCodeableConcept = freezed,
    Object? defaultValueCodeableReference = freezed,
    Object? defaultValueCoding = freezed,
    Object? defaultValueContactPoint = freezed,
    Object? defaultValueCount = freezed,
    Object? defaultValueDistance = freezed,
    Object? defaultValueDuration = freezed,
    Object? defaultValueHumanName = freezed,
    Object? defaultValueIdentifier = freezed,
    Object? defaultValueMoney = freezed,
    Object? defaultValuePeriod = freezed,
    Object? defaultValueQuantity = freezed,
    Object? defaultValueRange = freezed,
    Object? defaultValueRatio = freezed,
    Object? defaultValueRatioRange = freezed,
    Object? defaultValueReference = freezed,
    Object? defaultValueSampledData = freezed,
    Object? defaultValueSignature = freezed,
    Object? defaultValueTiming = freezed,
    Object? defaultValueContactDetail = freezed,
    Object? defaultValueContributor = freezed,
    Object? defaultValueDataRequirement = freezed,
    Object? defaultValueExpression = freezed,
    Object? defaultValueParameterDefinition = freezed,
    Object? defaultValueRelatedArtifact = freezed,
    Object? defaultValueTriggerDefinition = freezed,
    Object? defaultValueUsageContext = freezed,
    Object? defaultValueDosage = freezed,
    Object? meaningWhenMissing = freezed,
    Object? meaningWhenMissingElement = freezed,
    Object? orderMeaning = freezed,
    Object? orderMeaningElement = freezed,
    Object? fixedBase64Binary = freezed,
    Object? fixedBase64BinaryElement = freezed,
    Object? fixedBoolean = freezed,
    Object? fixedBooleanElement = freezed,
    Object? fixedCanonical = freezed,
    Object? fixedCanonicalElement = freezed,
    Object? fixedCode = freezed,
    Object? fixedCodeElement = freezed,
    Object? fixedDate = freezed,
    Object? fixedDateElement = freezed,
    Object? fixedDateTime = freezed,
    Object? fixedDateTimeElement = freezed,
    Object? fixedDecimal = freezed,
    Object? fixedDecimalElement = freezed,
    Object? fixedId = freezed,
    Object? fixedIdElement = freezed,
    Object? fixedInstant = freezed,
    Object? fixedInstantElement = freezed,
    Object? fixedInteger = freezed,
    Object? fixedIntegerElement = freezed,
    Object? fixedMarkdown = freezed,
    Object? fixedMarkdownElement = freezed,
    Object? fixedOid = freezed,
    Object? fixedOidElement = freezed,
    Object? fixedPositiveInt = freezed,
    Object? fixedPositiveIntElement = freezed,
    Object? fixedString = freezed,
    Object? fixedStringElement = freezed,
    Object? fixedTime = freezed,
    Object? fixedTimeElement = freezed,
    Object? fixedUnsignedInt = freezed,
    Object? fixedUnsignedIntElement = freezed,
    Object? fixedUri = freezed,
    Object? fixedUriElement = freezed,
    Object? fixedUrl = freezed,
    Object? fixedUrlElement = freezed,
    Object? fixedUuid = freezed,
    Object? fixedUuidElement = freezed,
    Object? fixedAddress = freezed,
    Object? fixedAge = freezed,
    Object? fixedAnnotation = freezed,
    Object? fixedAttachment = freezed,
    Object? fixedCodeableConcept = freezed,
    Object? fixedCodeableReference = freezed,
    Object? fixedCoding = freezed,
    Object? fixedContactPoint = freezed,
    Object? fixedCount = freezed,
    Object? fixedDistance = freezed,
    Object? fixedDuration = freezed,
    Object? fixedHumanName = freezed,
    Object? fixedIdentifier = freezed,
    Object? fixedMoney = freezed,
    Object? fixedPeriod = freezed,
    Object? fixedQuantity = freezed,
    Object? fixedRange = freezed,
    Object? fixedRatio = freezed,
    Object? fixedRatioRange = freezed,
    Object? fixedReference = freezed,
    Object? fixedSampledData = freezed,
    Object? fixedSignature = freezed,
    Object? fixedTiming = freezed,
    Object? fixedContactDetail = freezed,
    Object? fixedContributor = freezed,
    Object? fixedDataRequirement = freezed,
    Object? fixedExpression = freezed,
    Object? fixedParameterDefinition = freezed,
    Object? fixedRelatedArtifact = freezed,
    Object? fixedTriggerDefinition = freezed,
    Object? fixedUsageContext = freezed,
    Object? fixedDosage = freezed,
    Object? patternBase64Binary = freezed,
    Object? patternBase64BinaryElement = freezed,
    Object? patternBoolean = freezed,
    Object? patternBooleanElement = freezed,
    Object? patternCanonical = freezed,
    Object? patternCanonicalElement = freezed,
    Object? patternCode = freezed,
    Object? patternCodeElement = freezed,
    Object? patternDate = freezed,
    Object? patternDateElement = freezed,
    Object? patternDateTime = freezed,
    Object? patternDateTimeElement = freezed,
    Object? patternDecimal = freezed,
    Object? patternDecimalElement = freezed,
    Object? patternId = freezed,
    Object? patternIdElement = freezed,
    Object? patternInstant = freezed,
    Object? patternInstantElement = freezed,
    Object? patternInteger = freezed,
    Object? patternIntegerElement = freezed,
    Object? patternMarkdown = freezed,
    Object? patternMarkdownElement = freezed,
    Object? patternOid = freezed,
    Object? patternOidElement = freezed,
    Object? patternPositiveInt = freezed,
    Object? patternPositiveIntElement = freezed,
    Object? patternString = freezed,
    Object? patternStringElement = freezed,
    Object? patternTime = freezed,
    Object? patternTimeElement = freezed,
    Object? patternUnsignedInt = freezed,
    Object? patternUnsignedIntElement = freezed,
    Object? patternUri = freezed,
    Object? patternUriElement = freezed,
    Object? patternUrl = freezed,
    Object? patternUrlElement = freezed,
    Object? patternUuid = freezed,
    Object? patternUuidElement = freezed,
    Object? patternAddress = freezed,
    Object? patternAge = freezed,
    Object? patternAnnotation = freezed,
    Object? patternAttachment = freezed,
    Object? patternCodeableConcept = freezed,
    Object? patternCodeableReference = freezed,
    Object? patternCoding = freezed,
    Object? patternContactPoint = freezed,
    Object? patternCount = freezed,
    Object? patternDistance = freezed,
    Object? patternDuration = freezed,
    Object? patternHumanName = freezed,
    Object? patternIdentifier = freezed,
    Object? patternMoney = freezed,
    Object? patternPeriod = freezed,
    Object? patternQuantity = freezed,
    Object? patternRange = freezed,
    Object? patternRatio = freezed,
    Object? patternRatioRange = freezed,
    Object? patternReference = freezed,
    Object? patternSampledData = freezed,
    Object? patternSignature = freezed,
    Object? patternTiming = freezed,
    Object? patternContactDetail = freezed,
    Object? patternContributor = freezed,
    Object? patternDataRequirement = freezed,
    Object? patternExpression = freezed,
    Object? patternParameterDefinition = freezed,
    Object? patternRelatedArtifact = freezed,
    Object? patternTriggerDefinition = freezed,
    Object? patternUsageContext = freezed,
    Object? patternDosage = freezed,
    Object? example = freezed,
    Object? minValueDate = freezed,
    Object? minValueDateElement = freezed,
    Object? minValueDateTime = freezed,
    Object? minValueDateTimeElement = freezed,
    Object? minValueInstant = freezed,
    Object? minValueInstantElement = freezed,
    Object? minValueTime = freezed,
    Object? minValueTimeElement = freezed,
    Object? minValueDecimal = freezed,
    Object? minValueDecimalElement = freezed,
    Object? minValueInteger = freezed,
    Object? minValueIntegerElement = freezed,
    Object? minValuePositiveInt = freezed,
    Object? minValuePositiveIntElement = freezed,
    Object? minValueUnsignedInt = freezed,
    Object? minValueUnsignedIntElement = freezed,
    Object? minValueQuantity = freezed,
    Object? maxValueDate = freezed,
    Object? maxValueDateElement = freezed,
    Object? maxValueDateTime = freezed,
    Object? maxValueDateTimeElement = freezed,
    Object? maxValueInstant = freezed,
    Object? maxValueInstantElement = freezed,
    Object? maxValueTime = freezed,
    Object? maxValueTimeElement = freezed,
    Object? maxValueDecimal = freezed,
    Object? maxValueDecimalElement = freezed,
    Object? maxValueInteger = freezed,
    Object? maxValueIntegerElement = freezed,
    Object? maxValuePositiveInt = freezed,
    Object? maxValuePositiveIntElement = freezed,
    Object? maxValueUnsignedInt = freezed,
    Object? maxValueUnsignedIntElement = freezed,
    Object? maxValueQuantity = freezed,
    Object? maxLength = freezed,
    Object? maxLengthElement = freezed,
    Object? condition = freezed,
    Object? conditionElement = freezed,
    Object? constraint = freezed,
    Object? mustSupport = freezed,
    Object? mustSupportElement = freezed,
    Object? isModifier = freezed,
    Object? isModifierElement = freezed,
    Object? isModifierReason = freezed,
    Object? isModifierReasonElement = freezed,
    Object? isSummary = freezed,
    Object? isSummaryElement = freezed,
    Object? binding = freezed,
    Object? mapping = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      pathElement: freezed == pathElement
          ? _value.pathElement
          : pathElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      representation: freezed == representation
          ? _value.representation
          : representation // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinitionRepresentation>?,
      representationElement: freezed == representationElement
          ? _value.representationElement
          : representationElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      sliceName: freezed == sliceName
          ? _value.sliceName
          : sliceName // ignore: cast_nullable_to_non_nullable
              as String?,
      sliceNameElement: freezed == sliceNameElement
          ? _value.sliceNameElement
          : sliceNameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      sliceIsConstraining: freezed == sliceIsConstraining
          ? _value.sliceIsConstraining
          : sliceIsConstraining // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      sliceIsConstrainingElement: freezed == sliceIsConstrainingElement
          ? _value.sliceIsConstrainingElement
          : sliceIsConstrainingElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      labelElement: freezed == labelElement
          ? _value.labelElement
          : labelElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      slicing: freezed == slicing
          ? _value.slicing
          : slicing // ignore: cast_nullable_to_non_nullable
              as ElementDefinitionSlicing?,
      short: freezed == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String?,
      shortElement: freezed == shortElement
          ? _value.shortElement
          : shortElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      definitionElement: freezed == definitionElement
          ? _value.definitionElement
          : definitionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      requirements: freezed == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      requirementsElement: freezed == requirementsElement
          ? _value.requirementsElement
          : requirementsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aliasElement: freezed == aliasElement
          ? _value.aliasElement
          : aliasElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      minElement: freezed == minElement
          ? _value.minElement
          : minElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as String?,
      maxElement: freezed == maxElement
          ? _value.maxElement
          : maxElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as ElementDefinitionBase?,
      contentReference: freezed == contentReference
          ? _value.contentReference
          : contentReference // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      contentReferenceElement: freezed == contentReferenceElement
          ? _value.contentReferenceElement
          : contentReferenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinitionType>?,
      defaultValueBase64Binary: freezed == defaultValueBase64Binary
          ? _value.defaultValueBase64Binary
          : defaultValueBase64Binary // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      defaultValueBase64BinaryElement: freezed ==
              defaultValueBase64BinaryElement
          ? _value.defaultValueBase64BinaryElement
          : defaultValueBase64BinaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueBoolean: freezed == defaultValueBoolean
          ? _value.defaultValueBoolean
          : defaultValueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      defaultValueBooleanElement: freezed == defaultValueBooleanElement
          ? _value.defaultValueBooleanElement
          : defaultValueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueCanonical: freezed == defaultValueCanonical
          ? _value.defaultValueCanonical
          : defaultValueCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      defaultValueCanonicalElement: freezed == defaultValueCanonicalElement
          ? _value.defaultValueCanonicalElement
          : defaultValueCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueCode: freezed == defaultValueCode
          ? _value.defaultValueCode
          : defaultValueCode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      defaultValueCodeElement: freezed == defaultValueCodeElement
          ? _value.defaultValueCodeElement
          : defaultValueCodeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueDate: freezed == defaultValueDate
          ? _value.defaultValueDate
          : defaultValueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      defaultValueDateElement: freezed == defaultValueDateElement
          ? _value.defaultValueDateElement
          : defaultValueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueDateTime: freezed == defaultValueDateTime
          ? _value.defaultValueDateTime
          : defaultValueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      defaultValueDateTimeElement: freezed == defaultValueDateTimeElement
          ? _value.defaultValueDateTimeElement
          : defaultValueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueDecimal: freezed == defaultValueDecimal
          ? _value.defaultValueDecimal
          : defaultValueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      defaultValueDecimalElement: freezed == defaultValueDecimalElement
          ? _value.defaultValueDecimalElement
          : defaultValueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueId: freezed == defaultValueId
          ? _value.defaultValueId
          : defaultValueId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      defaultValueIdElement: freezed == defaultValueIdElement
          ? _value.defaultValueIdElement
          : defaultValueIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueInstant: freezed == defaultValueInstant
          ? _value.defaultValueInstant
          : defaultValueInstant // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      defaultValueInstantElement: freezed == defaultValueInstantElement
          ? _value.defaultValueInstantElement
          : defaultValueInstantElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueInteger: freezed == defaultValueInteger
          ? _value.defaultValueInteger
          : defaultValueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      defaultValueIntegerElement: freezed == defaultValueIntegerElement
          ? _value.defaultValueIntegerElement
          : defaultValueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueMarkdown: freezed == defaultValueMarkdown
          ? _value.defaultValueMarkdown
          : defaultValueMarkdown // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      defaultValueMarkdownElement: freezed == defaultValueMarkdownElement
          ? _value.defaultValueMarkdownElement
          : defaultValueMarkdownElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueOid: freezed == defaultValueOid
          ? _value.defaultValueOid
          : defaultValueOid // ignore: cast_nullable_to_non_nullable
              as FhirOid?,
      defaultValueOidElement: freezed == defaultValueOidElement
          ? _value.defaultValueOidElement
          : defaultValueOidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValuePositiveInt: freezed == defaultValuePositiveInt
          ? _value.defaultValuePositiveInt
          : defaultValuePositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      defaultValuePositiveIntElement: freezed == defaultValuePositiveIntElement
          ? _value.defaultValuePositiveIntElement
          : defaultValuePositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueString: freezed == defaultValueString
          ? _value.defaultValueString
          : defaultValueString // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultValueStringElement: freezed == defaultValueStringElement
          ? _value.defaultValueStringElement
          : defaultValueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueTime: freezed == defaultValueTime
          ? _value.defaultValueTime
          : defaultValueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      defaultValueTimeElement: freezed == defaultValueTimeElement
          ? _value.defaultValueTimeElement
          : defaultValueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueUnsignedInt: freezed == defaultValueUnsignedInt
          ? _value.defaultValueUnsignedInt
          : defaultValueUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      defaultValueUnsignedIntElement: freezed == defaultValueUnsignedIntElement
          ? _value.defaultValueUnsignedIntElement
          : defaultValueUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueUri: freezed == defaultValueUri
          ? _value.defaultValueUri
          : defaultValueUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      defaultValueUriElement: freezed == defaultValueUriElement
          ? _value.defaultValueUriElement
          : defaultValueUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueUrl: freezed == defaultValueUrl
          ? _value.defaultValueUrl
          : defaultValueUrl // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      defaultValueUrlElement: freezed == defaultValueUrlElement
          ? _value.defaultValueUrlElement
          : defaultValueUrlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueUuid: freezed == defaultValueUuid
          ? _value.defaultValueUuid
          : defaultValueUuid // ignore: cast_nullable_to_non_nullable
              as FhirUuid?,
      defaultValueUuidElement: freezed == defaultValueUuidElement
          ? _value.defaultValueUuidElement
          : defaultValueUuidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueAddress: freezed == defaultValueAddress
          ? _value.defaultValueAddress
          : defaultValueAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      defaultValueAge: freezed == defaultValueAge
          ? _value.defaultValueAge
          : defaultValueAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      defaultValueAnnotation: freezed == defaultValueAnnotation
          ? _value.defaultValueAnnotation
          : defaultValueAnnotation // ignore: cast_nullable_to_non_nullable
              as Annotation?,
      defaultValueAttachment: freezed == defaultValueAttachment
          ? _value.defaultValueAttachment
          : defaultValueAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      defaultValueCodeableConcept: freezed == defaultValueCodeableConcept
          ? _value.defaultValueCodeableConcept
          : defaultValueCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      defaultValueCodeableReference: freezed == defaultValueCodeableReference
          ? _value.defaultValueCodeableReference
          : defaultValueCodeableReference // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      defaultValueCoding: freezed == defaultValueCoding
          ? _value.defaultValueCoding
          : defaultValueCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      defaultValueContactPoint: freezed == defaultValueContactPoint
          ? _value.defaultValueContactPoint
          : defaultValueContactPoint // ignore: cast_nullable_to_non_nullable
              as ContactPoint?,
      defaultValueCount: freezed == defaultValueCount
          ? _value.defaultValueCount
          : defaultValueCount // ignore: cast_nullable_to_non_nullable
              as Count?,
      defaultValueDistance: freezed == defaultValueDistance
          ? _value.defaultValueDistance
          : defaultValueDistance // ignore: cast_nullable_to_non_nullable
              as Distance?,
      defaultValueDuration: freezed == defaultValueDuration
          ? _value.defaultValueDuration
          : defaultValueDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      defaultValueHumanName: freezed == defaultValueHumanName
          ? _value.defaultValueHumanName
          : defaultValueHumanName // ignore: cast_nullable_to_non_nullable
              as HumanName?,
      defaultValueIdentifier: freezed == defaultValueIdentifier
          ? _value.defaultValueIdentifier
          : defaultValueIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      defaultValueMoney: freezed == defaultValueMoney
          ? _value.defaultValueMoney
          : defaultValueMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      defaultValuePeriod: freezed == defaultValuePeriod
          ? _value.defaultValuePeriod
          : defaultValuePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      defaultValueQuantity: freezed == defaultValueQuantity
          ? _value.defaultValueQuantity
          : defaultValueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      defaultValueRange: freezed == defaultValueRange
          ? _value.defaultValueRange
          : defaultValueRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      defaultValueRatio: freezed == defaultValueRatio
          ? _value.defaultValueRatio
          : defaultValueRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      defaultValueRatioRange: freezed == defaultValueRatioRange
          ? _value.defaultValueRatioRange
          : defaultValueRatioRange // ignore: cast_nullable_to_non_nullable
              as RatioRange?,
      defaultValueReference: freezed == defaultValueReference
          ? _value.defaultValueReference
          : defaultValueReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      defaultValueSampledData: freezed == defaultValueSampledData
          ? _value.defaultValueSampledData
          : defaultValueSampledData // ignore: cast_nullable_to_non_nullable
              as SampledData?,
      defaultValueSignature: freezed == defaultValueSignature
          ? _value.defaultValueSignature
          : defaultValueSignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
      defaultValueTiming: freezed == defaultValueTiming
          ? _value.defaultValueTiming
          : defaultValueTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      defaultValueContactDetail: freezed == defaultValueContactDetail
          ? _value.defaultValueContactDetail
          : defaultValueContactDetail // ignore: cast_nullable_to_non_nullable
              as ContactDetail?,
      defaultValueContributor: freezed == defaultValueContributor
          ? _value.defaultValueContributor
          : defaultValueContributor // ignore: cast_nullable_to_non_nullable
              as Contributor?,
      defaultValueDataRequirement: freezed == defaultValueDataRequirement
          ? _value.defaultValueDataRequirement
          : defaultValueDataRequirement // ignore: cast_nullable_to_non_nullable
              as DataRequirement?,
      defaultValueExpression: freezed == defaultValueExpression
          ? _value.defaultValueExpression
          : defaultValueExpression // ignore: cast_nullable_to_non_nullable
              as FhirExpression?,
      defaultValueParameterDefinition: freezed ==
              defaultValueParameterDefinition
          ? _value.defaultValueParameterDefinition
          : defaultValueParameterDefinition // ignore: cast_nullable_to_non_nullable
              as ParameterDefinition?,
      defaultValueRelatedArtifact: freezed == defaultValueRelatedArtifact
          ? _value.defaultValueRelatedArtifact
          : defaultValueRelatedArtifact // ignore: cast_nullable_to_non_nullable
              as RelatedArtifact?,
      defaultValueTriggerDefinition: freezed == defaultValueTriggerDefinition
          ? _value.defaultValueTriggerDefinition
          : defaultValueTriggerDefinition // ignore: cast_nullable_to_non_nullable
              as TriggerDefinition?,
      defaultValueUsageContext: freezed == defaultValueUsageContext
          ? _value.defaultValueUsageContext
          : defaultValueUsageContext // ignore: cast_nullable_to_non_nullable
              as UsageContext?,
      defaultValueDosage: freezed == defaultValueDosage
          ? _value.defaultValueDosage
          : defaultValueDosage // ignore: cast_nullable_to_non_nullable
              as Dosage?,
      meaningWhenMissing: freezed == meaningWhenMissing
          ? _value.meaningWhenMissing
          : meaningWhenMissing // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      meaningWhenMissingElement: freezed == meaningWhenMissingElement
          ? _value.meaningWhenMissingElement
          : meaningWhenMissingElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      orderMeaning: freezed == orderMeaning
          ? _value.orderMeaning
          : orderMeaning // ignore: cast_nullable_to_non_nullable
              as String?,
      orderMeaningElement: freezed == orderMeaningElement
          ? _value.orderMeaningElement
          : orderMeaningElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedBase64Binary: freezed == fixedBase64Binary
          ? _value.fixedBase64Binary
          : fixedBase64Binary // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      fixedBase64BinaryElement: freezed == fixedBase64BinaryElement
          ? _value.fixedBase64BinaryElement
          : fixedBase64BinaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedBoolean: freezed == fixedBoolean
          ? _value.fixedBoolean
          : fixedBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      fixedBooleanElement: freezed == fixedBooleanElement
          ? _value.fixedBooleanElement
          : fixedBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedCanonical: freezed == fixedCanonical
          ? _value.fixedCanonical
          : fixedCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      fixedCanonicalElement: freezed == fixedCanonicalElement
          ? _value.fixedCanonicalElement
          : fixedCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedCode: freezed == fixedCode
          ? _value.fixedCode
          : fixedCode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      fixedCodeElement: freezed == fixedCodeElement
          ? _value.fixedCodeElement
          : fixedCodeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedDate: freezed == fixedDate
          ? _value.fixedDate
          : fixedDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      fixedDateElement: freezed == fixedDateElement
          ? _value.fixedDateElement
          : fixedDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedDateTime: freezed == fixedDateTime
          ? _value.fixedDateTime
          : fixedDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      fixedDateTimeElement: freezed == fixedDateTimeElement
          ? _value.fixedDateTimeElement
          : fixedDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedDecimal: freezed == fixedDecimal
          ? _value.fixedDecimal
          : fixedDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      fixedDecimalElement: freezed == fixedDecimalElement
          ? _value.fixedDecimalElement
          : fixedDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedId: freezed == fixedId
          ? _value.fixedId
          : fixedId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      fixedIdElement: freezed == fixedIdElement
          ? _value.fixedIdElement
          : fixedIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedInstant: freezed == fixedInstant
          ? _value.fixedInstant
          : fixedInstant // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      fixedInstantElement: freezed == fixedInstantElement
          ? _value.fixedInstantElement
          : fixedInstantElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedInteger: freezed == fixedInteger
          ? _value.fixedInteger
          : fixedInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      fixedIntegerElement: freezed == fixedIntegerElement
          ? _value.fixedIntegerElement
          : fixedIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedMarkdown: freezed == fixedMarkdown
          ? _value.fixedMarkdown
          : fixedMarkdown // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      fixedMarkdownElement: freezed == fixedMarkdownElement
          ? _value.fixedMarkdownElement
          : fixedMarkdownElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedOid: freezed == fixedOid
          ? _value.fixedOid
          : fixedOid // ignore: cast_nullable_to_non_nullable
              as FhirOid?,
      fixedOidElement: freezed == fixedOidElement
          ? _value.fixedOidElement
          : fixedOidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedPositiveInt: freezed == fixedPositiveInt
          ? _value.fixedPositiveInt
          : fixedPositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      fixedPositiveIntElement: freezed == fixedPositiveIntElement
          ? _value.fixedPositiveIntElement
          : fixedPositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedString: freezed == fixedString
          ? _value.fixedString
          : fixedString // ignore: cast_nullable_to_non_nullable
              as String?,
      fixedStringElement: freezed == fixedStringElement
          ? _value.fixedStringElement
          : fixedStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedTime: freezed == fixedTime
          ? _value.fixedTime
          : fixedTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      fixedTimeElement: freezed == fixedTimeElement
          ? _value.fixedTimeElement
          : fixedTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedUnsignedInt: freezed == fixedUnsignedInt
          ? _value.fixedUnsignedInt
          : fixedUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      fixedUnsignedIntElement: freezed == fixedUnsignedIntElement
          ? _value.fixedUnsignedIntElement
          : fixedUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedUri: freezed == fixedUri
          ? _value.fixedUri
          : fixedUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      fixedUriElement: freezed == fixedUriElement
          ? _value.fixedUriElement
          : fixedUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedUrl: freezed == fixedUrl
          ? _value.fixedUrl
          : fixedUrl // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      fixedUrlElement: freezed == fixedUrlElement
          ? _value.fixedUrlElement
          : fixedUrlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedUuid: freezed == fixedUuid
          ? _value.fixedUuid
          : fixedUuid // ignore: cast_nullable_to_non_nullable
              as FhirUuid?,
      fixedUuidElement: freezed == fixedUuidElement
          ? _value.fixedUuidElement
          : fixedUuidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedAddress: freezed == fixedAddress
          ? _value.fixedAddress
          : fixedAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      fixedAge: freezed == fixedAge
          ? _value.fixedAge
          : fixedAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      fixedAnnotation: freezed == fixedAnnotation
          ? _value.fixedAnnotation
          : fixedAnnotation // ignore: cast_nullable_to_non_nullable
              as Annotation?,
      fixedAttachment: freezed == fixedAttachment
          ? _value.fixedAttachment
          : fixedAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      fixedCodeableConcept: freezed == fixedCodeableConcept
          ? _value.fixedCodeableConcept
          : fixedCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      fixedCodeableReference: freezed == fixedCodeableReference
          ? _value.fixedCodeableReference
          : fixedCodeableReference // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      fixedCoding: freezed == fixedCoding
          ? _value.fixedCoding
          : fixedCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      fixedContactPoint: freezed == fixedContactPoint
          ? _value.fixedContactPoint
          : fixedContactPoint // ignore: cast_nullable_to_non_nullable
              as ContactPoint?,
      fixedCount: freezed == fixedCount
          ? _value.fixedCount
          : fixedCount // ignore: cast_nullable_to_non_nullable
              as Count?,
      fixedDistance: freezed == fixedDistance
          ? _value.fixedDistance
          : fixedDistance // ignore: cast_nullable_to_non_nullable
              as Distance?,
      fixedDuration: freezed == fixedDuration
          ? _value.fixedDuration
          : fixedDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      fixedHumanName: freezed == fixedHumanName
          ? _value.fixedHumanName
          : fixedHumanName // ignore: cast_nullable_to_non_nullable
              as HumanName?,
      fixedIdentifier: freezed == fixedIdentifier
          ? _value.fixedIdentifier
          : fixedIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      fixedMoney: freezed == fixedMoney
          ? _value.fixedMoney
          : fixedMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      fixedPeriod: freezed == fixedPeriod
          ? _value.fixedPeriod
          : fixedPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      fixedQuantity: freezed == fixedQuantity
          ? _value.fixedQuantity
          : fixedQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      fixedRange: freezed == fixedRange
          ? _value.fixedRange
          : fixedRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      fixedRatio: freezed == fixedRatio
          ? _value.fixedRatio
          : fixedRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      fixedRatioRange: freezed == fixedRatioRange
          ? _value.fixedRatioRange
          : fixedRatioRange // ignore: cast_nullable_to_non_nullable
              as RatioRange?,
      fixedReference: freezed == fixedReference
          ? _value.fixedReference
          : fixedReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      fixedSampledData: freezed == fixedSampledData
          ? _value.fixedSampledData
          : fixedSampledData // ignore: cast_nullable_to_non_nullable
              as SampledData?,
      fixedSignature: freezed == fixedSignature
          ? _value.fixedSignature
          : fixedSignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
      fixedTiming: freezed == fixedTiming
          ? _value.fixedTiming
          : fixedTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      fixedContactDetail: freezed == fixedContactDetail
          ? _value.fixedContactDetail
          : fixedContactDetail // ignore: cast_nullable_to_non_nullable
              as ContactDetail?,
      fixedContributor: freezed == fixedContributor
          ? _value.fixedContributor
          : fixedContributor // ignore: cast_nullable_to_non_nullable
              as Contributor?,
      fixedDataRequirement: freezed == fixedDataRequirement
          ? _value.fixedDataRequirement
          : fixedDataRequirement // ignore: cast_nullable_to_non_nullable
              as DataRequirement?,
      fixedExpression: freezed == fixedExpression
          ? _value.fixedExpression
          : fixedExpression // ignore: cast_nullable_to_non_nullable
              as FhirExpression?,
      fixedParameterDefinition: freezed == fixedParameterDefinition
          ? _value.fixedParameterDefinition
          : fixedParameterDefinition // ignore: cast_nullable_to_non_nullable
              as ParameterDefinition?,
      fixedRelatedArtifact: freezed == fixedRelatedArtifact
          ? _value.fixedRelatedArtifact
          : fixedRelatedArtifact // ignore: cast_nullable_to_non_nullable
              as RelatedArtifact?,
      fixedTriggerDefinition: freezed == fixedTriggerDefinition
          ? _value.fixedTriggerDefinition
          : fixedTriggerDefinition // ignore: cast_nullable_to_non_nullable
              as TriggerDefinition?,
      fixedUsageContext: freezed == fixedUsageContext
          ? _value.fixedUsageContext
          : fixedUsageContext // ignore: cast_nullable_to_non_nullable
              as UsageContext?,
      fixedDosage: freezed == fixedDosage
          ? _value.fixedDosage
          : fixedDosage // ignore: cast_nullable_to_non_nullable
              as Dosage?,
      patternBase64Binary: freezed == patternBase64Binary
          ? _value.patternBase64Binary
          : patternBase64Binary // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      patternBase64BinaryElement: freezed == patternBase64BinaryElement
          ? _value.patternBase64BinaryElement
          : patternBase64BinaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternBoolean: freezed == patternBoolean
          ? _value.patternBoolean
          : patternBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      patternBooleanElement: freezed == patternBooleanElement
          ? _value.patternBooleanElement
          : patternBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternCanonical: freezed == patternCanonical
          ? _value.patternCanonical
          : patternCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      patternCanonicalElement: freezed == patternCanonicalElement
          ? _value.patternCanonicalElement
          : patternCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternCode: freezed == patternCode
          ? _value.patternCode
          : patternCode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      patternCodeElement: freezed == patternCodeElement
          ? _value.patternCodeElement
          : patternCodeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternDate: freezed == patternDate
          ? _value.patternDate
          : patternDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      patternDateElement: freezed == patternDateElement
          ? _value.patternDateElement
          : patternDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternDateTime: freezed == patternDateTime
          ? _value.patternDateTime
          : patternDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      patternDateTimeElement: freezed == patternDateTimeElement
          ? _value.patternDateTimeElement
          : patternDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternDecimal: freezed == patternDecimal
          ? _value.patternDecimal
          : patternDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      patternDecimalElement: freezed == patternDecimalElement
          ? _value.patternDecimalElement
          : patternDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternId: freezed == patternId
          ? _value.patternId
          : patternId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      patternIdElement: freezed == patternIdElement
          ? _value.patternIdElement
          : patternIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternInstant: freezed == patternInstant
          ? _value.patternInstant
          : patternInstant // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      patternInstantElement: freezed == patternInstantElement
          ? _value.patternInstantElement
          : patternInstantElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternInteger: freezed == patternInteger
          ? _value.patternInteger
          : patternInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      patternIntegerElement: freezed == patternIntegerElement
          ? _value.patternIntegerElement
          : patternIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternMarkdown: freezed == patternMarkdown
          ? _value.patternMarkdown
          : patternMarkdown // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      patternMarkdownElement: freezed == patternMarkdownElement
          ? _value.patternMarkdownElement
          : patternMarkdownElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternOid: freezed == patternOid
          ? _value.patternOid
          : patternOid // ignore: cast_nullable_to_non_nullable
              as FhirOid?,
      patternOidElement: freezed == patternOidElement
          ? _value.patternOidElement
          : patternOidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternPositiveInt: freezed == patternPositiveInt
          ? _value.patternPositiveInt
          : patternPositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      patternPositiveIntElement: freezed == patternPositiveIntElement
          ? _value.patternPositiveIntElement
          : patternPositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternString: freezed == patternString
          ? _value.patternString
          : patternString // ignore: cast_nullable_to_non_nullable
              as String?,
      patternStringElement: freezed == patternStringElement
          ? _value.patternStringElement
          : patternStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternTime: freezed == patternTime
          ? _value.patternTime
          : patternTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      patternTimeElement: freezed == patternTimeElement
          ? _value.patternTimeElement
          : patternTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternUnsignedInt: freezed == patternUnsignedInt
          ? _value.patternUnsignedInt
          : patternUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      patternUnsignedIntElement: freezed == patternUnsignedIntElement
          ? _value.patternUnsignedIntElement
          : patternUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternUri: freezed == patternUri
          ? _value.patternUri
          : patternUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      patternUriElement: freezed == patternUriElement
          ? _value.patternUriElement
          : patternUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternUrl: freezed == patternUrl
          ? _value.patternUrl
          : patternUrl // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      patternUrlElement: freezed == patternUrlElement
          ? _value.patternUrlElement
          : patternUrlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternUuid: freezed == patternUuid
          ? _value.patternUuid
          : patternUuid // ignore: cast_nullable_to_non_nullable
              as FhirUuid?,
      patternUuidElement: freezed == patternUuidElement
          ? _value.patternUuidElement
          : patternUuidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternAddress: freezed == patternAddress
          ? _value.patternAddress
          : patternAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      patternAge: freezed == patternAge
          ? _value.patternAge
          : patternAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      patternAnnotation: freezed == patternAnnotation
          ? _value.patternAnnotation
          : patternAnnotation // ignore: cast_nullable_to_non_nullable
              as Annotation?,
      patternAttachment: freezed == patternAttachment
          ? _value.patternAttachment
          : patternAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      patternCodeableConcept: freezed == patternCodeableConcept
          ? _value.patternCodeableConcept
          : patternCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      patternCodeableReference: freezed == patternCodeableReference
          ? _value.patternCodeableReference
          : patternCodeableReference // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      patternCoding: freezed == patternCoding
          ? _value.patternCoding
          : patternCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      patternContactPoint: freezed == patternContactPoint
          ? _value.patternContactPoint
          : patternContactPoint // ignore: cast_nullable_to_non_nullable
              as ContactPoint?,
      patternCount: freezed == patternCount
          ? _value.patternCount
          : patternCount // ignore: cast_nullable_to_non_nullable
              as Count?,
      patternDistance: freezed == patternDistance
          ? _value.patternDistance
          : patternDistance // ignore: cast_nullable_to_non_nullable
              as Distance?,
      patternDuration: freezed == patternDuration
          ? _value.patternDuration
          : patternDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      patternHumanName: freezed == patternHumanName
          ? _value.patternHumanName
          : patternHumanName // ignore: cast_nullable_to_non_nullable
              as HumanName?,
      patternIdentifier: freezed == patternIdentifier
          ? _value.patternIdentifier
          : patternIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      patternMoney: freezed == patternMoney
          ? _value.patternMoney
          : patternMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      patternPeriod: freezed == patternPeriod
          ? _value.patternPeriod
          : patternPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      patternQuantity: freezed == patternQuantity
          ? _value.patternQuantity
          : patternQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      patternRange: freezed == patternRange
          ? _value.patternRange
          : patternRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      patternRatio: freezed == patternRatio
          ? _value.patternRatio
          : patternRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      patternRatioRange: freezed == patternRatioRange
          ? _value.patternRatioRange
          : patternRatioRange // ignore: cast_nullable_to_non_nullable
              as RatioRange?,
      patternReference: freezed == patternReference
          ? _value.patternReference
          : patternReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      patternSampledData: freezed == patternSampledData
          ? _value.patternSampledData
          : patternSampledData // ignore: cast_nullable_to_non_nullable
              as SampledData?,
      patternSignature: freezed == patternSignature
          ? _value.patternSignature
          : patternSignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
      patternTiming: freezed == patternTiming
          ? _value.patternTiming
          : patternTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      patternContactDetail: freezed == patternContactDetail
          ? _value.patternContactDetail
          : patternContactDetail // ignore: cast_nullable_to_non_nullable
              as ContactDetail?,
      patternContributor: freezed == patternContributor
          ? _value.patternContributor
          : patternContributor // ignore: cast_nullable_to_non_nullable
              as Contributor?,
      patternDataRequirement: freezed == patternDataRequirement
          ? _value.patternDataRequirement
          : patternDataRequirement // ignore: cast_nullable_to_non_nullable
              as DataRequirement?,
      patternExpression: freezed == patternExpression
          ? _value.patternExpression
          : patternExpression // ignore: cast_nullable_to_non_nullable
              as FhirExpression?,
      patternParameterDefinition: freezed == patternParameterDefinition
          ? _value.patternParameterDefinition
          : patternParameterDefinition // ignore: cast_nullable_to_non_nullable
              as ParameterDefinition?,
      patternRelatedArtifact: freezed == patternRelatedArtifact
          ? _value.patternRelatedArtifact
          : patternRelatedArtifact // ignore: cast_nullable_to_non_nullable
              as RelatedArtifact?,
      patternTriggerDefinition: freezed == patternTriggerDefinition
          ? _value.patternTriggerDefinition
          : patternTriggerDefinition // ignore: cast_nullable_to_non_nullable
              as TriggerDefinition?,
      patternUsageContext: freezed == patternUsageContext
          ? _value.patternUsageContext
          : patternUsageContext // ignore: cast_nullable_to_non_nullable
              as UsageContext?,
      patternDosage: freezed == patternDosage
          ? _value.patternDosage
          : patternDosage // ignore: cast_nullable_to_non_nullable
              as Dosage?,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinitionExample>?,
      minValueDate: freezed == minValueDate
          ? _value.minValueDate
          : minValueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      minValueDateElement: freezed == minValueDateElement
          ? _value.minValueDateElement
          : minValueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      minValueDateTime: freezed == minValueDateTime
          ? _value.minValueDateTime
          : minValueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      minValueDateTimeElement: freezed == minValueDateTimeElement
          ? _value.minValueDateTimeElement
          : minValueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      minValueInstant: freezed == minValueInstant
          ? _value.minValueInstant
          : minValueInstant // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      minValueInstantElement: freezed == minValueInstantElement
          ? _value.minValueInstantElement
          : minValueInstantElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      minValueTime: freezed == minValueTime
          ? _value.minValueTime
          : minValueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      minValueTimeElement: freezed == minValueTimeElement
          ? _value.minValueTimeElement
          : minValueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      minValueDecimal: freezed == minValueDecimal
          ? _value.minValueDecimal
          : minValueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      minValueDecimalElement: freezed == minValueDecimalElement
          ? _value.minValueDecimalElement
          : minValueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      minValueInteger: freezed == minValueInteger
          ? _value.minValueInteger
          : minValueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      minValueIntegerElement: freezed == minValueIntegerElement
          ? _value.minValueIntegerElement
          : minValueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      minValuePositiveInt: freezed == minValuePositiveInt
          ? _value.minValuePositiveInt
          : minValuePositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      minValuePositiveIntElement: freezed == minValuePositiveIntElement
          ? _value.minValuePositiveIntElement
          : minValuePositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      minValueUnsignedInt: freezed == minValueUnsignedInt
          ? _value.minValueUnsignedInt
          : minValueUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      minValueUnsignedIntElement: freezed == minValueUnsignedIntElement
          ? _value.minValueUnsignedIntElement
          : minValueUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      minValueQuantity: freezed == minValueQuantity
          ? _value.minValueQuantity
          : minValueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      maxValueDate: freezed == maxValueDate
          ? _value.maxValueDate
          : maxValueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      maxValueDateElement: freezed == maxValueDateElement
          ? _value.maxValueDateElement
          : maxValueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxValueDateTime: freezed == maxValueDateTime
          ? _value.maxValueDateTime
          : maxValueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      maxValueDateTimeElement: freezed == maxValueDateTimeElement
          ? _value.maxValueDateTimeElement
          : maxValueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxValueInstant: freezed == maxValueInstant
          ? _value.maxValueInstant
          : maxValueInstant // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      maxValueInstantElement: freezed == maxValueInstantElement
          ? _value.maxValueInstantElement
          : maxValueInstantElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxValueTime: freezed == maxValueTime
          ? _value.maxValueTime
          : maxValueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      maxValueTimeElement: freezed == maxValueTimeElement
          ? _value.maxValueTimeElement
          : maxValueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxValueDecimal: freezed == maxValueDecimal
          ? _value.maxValueDecimal
          : maxValueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      maxValueDecimalElement: freezed == maxValueDecimalElement
          ? _value.maxValueDecimalElement
          : maxValueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxValueInteger: freezed == maxValueInteger
          ? _value.maxValueInteger
          : maxValueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      maxValueIntegerElement: freezed == maxValueIntegerElement
          ? _value.maxValueIntegerElement
          : maxValueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxValuePositiveInt: freezed == maxValuePositiveInt
          ? _value.maxValuePositiveInt
          : maxValuePositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      maxValuePositiveIntElement: freezed == maxValuePositiveIntElement
          ? _value.maxValuePositiveIntElement
          : maxValuePositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxValueUnsignedInt: freezed == maxValueUnsignedInt
          ? _value.maxValueUnsignedInt
          : maxValueUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      maxValueUnsignedIntElement: freezed == maxValueUnsignedIntElement
          ? _value.maxValueUnsignedIntElement
          : maxValueUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxValueQuantity: freezed == maxValueQuantity
          ? _value.maxValueQuantity
          : maxValueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      maxLength: freezed == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      maxLengthElement: freezed == maxLengthElement
          ? _value.maxLengthElement
          : maxLengthElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as List<FhirId>?,
      conditionElement: freezed == conditionElement
          ? _value.conditionElement
          : conditionElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      constraint: freezed == constraint
          ? _value.constraint
          : constraint // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinitionConstraint>?,
      mustSupport: freezed == mustSupport
          ? _value.mustSupport
          : mustSupport // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      mustSupportElement: freezed == mustSupportElement
          ? _value.mustSupportElement
          : mustSupportElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      isModifier: freezed == isModifier
          ? _value.isModifier
          : isModifier // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      isModifierElement: freezed == isModifierElement
          ? _value.isModifierElement
          : isModifierElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      isModifierReason: freezed == isModifierReason
          ? _value.isModifierReason
          : isModifierReason // ignore: cast_nullable_to_non_nullable
              as String?,
      isModifierReasonElement: freezed == isModifierReasonElement
          ? _value.isModifierReasonElement
          : isModifierReasonElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      isSummary: freezed == isSummary
          ? _value.isSummary
          : isSummary // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      isSummaryElement: freezed == isSummaryElement
          ? _value.isSummaryElement
          : isSummaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      binding: freezed == binding
          ? _value.binding
          : binding // ignore: cast_nullable_to_non_nullable
              as ElementDefinitionBinding?,
      mapping: freezed == mapping
          ? _value.mapping
          : mapping // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinitionMapping>?,
    ) as $Val);
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ElementDefinitionSlicingCopyWith<$Res>? get slicing {
    if (_value.slicing == null) {
      return null;
    }

    return $ElementDefinitionSlicingCopyWith<$Res>(_value.slicing!, (value) {
      return _then(_value.copyWith(slicing: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ElementDefinitionBaseCopyWith<$Res>? get base {
    if (_value.base == null) {
      return null;
    }

    return $ElementDefinitionBaseCopyWith<$Res>(_value.base!, (value) {
      return _then(_value.copyWith(base: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get defaultValueAddress {
    if (_value.defaultValueAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.defaultValueAddress!, (value) {
      return _then(_value.copyWith(defaultValueAddress: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res>? get defaultValueAge {
    if (_value.defaultValueAge == null) {
      return null;
    }

    return $AgeCopyWith<$Res>(_value.defaultValueAge!, (value) {
      return _then(_value.copyWith(defaultValueAge: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnotationCopyWith<$Res>? get defaultValueAnnotation {
    if (_value.defaultValueAnnotation == null) {
      return null;
    }

    return $AnnotationCopyWith<$Res>(_value.defaultValueAnnotation!, (value) {
      return _then(_value.copyWith(defaultValueAnnotation: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get defaultValueAttachment {
    if (_value.defaultValueAttachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.defaultValueAttachment!, (value) {
      return _then(_value.copyWith(defaultValueAttachment: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get defaultValueCodeableConcept {
    if (_value.defaultValueCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.defaultValueCodeableConcept!,
        (value) {
      return _then(_value.copyWith(defaultValueCodeableConcept: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res>? get defaultValueCodeableReference {
    if (_value.defaultValueCodeableReference == null) {
      return null;
    }

    return $CodeableReferenceCopyWith<$Res>(
        _value.defaultValueCodeableReference!, (value) {
      return _then(
          _value.copyWith(defaultValueCodeableReference: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodingCopyWith<$Res>? get defaultValueCoding {
    if (_value.defaultValueCoding == null) {
      return null;
    }

    return $CodingCopyWith<$Res>(_value.defaultValueCoding!, (value) {
      return _then(_value.copyWith(defaultValueCoding: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactPointCopyWith<$Res>? get defaultValueContactPoint {
    if (_value.defaultValueContactPoint == null) {
      return null;
    }

    return $ContactPointCopyWith<$Res>(_value.defaultValueContactPoint!,
        (value) {
      return _then(_value.copyWith(defaultValueContactPoint: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountCopyWith<$Res>? get defaultValueCount {
    if (_value.defaultValueCount == null) {
      return null;
    }

    return $CountCopyWith<$Res>(_value.defaultValueCount!, (value) {
      return _then(_value.copyWith(defaultValueCount: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistanceCopyWith<$Res>? get defaultValueDistance {
    if (_value.defaultValueDistance == null) {
      return null;
    }

    return $DistanceCopyWith<$Res>(_value.defaultValueDistance!, (value) {
      return _then(_value.copyWith(defaultValueDistance: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FhirDurationCopyWith<$Res>? get defaultValueDuration {
    if (_value.defaultValueDuration == null) {
      return null;
    }

    return $FhirDurationCopyWith<$Res>(_value.defaultValueDuration!, (value) {
      return _then(_value.copyWith(defaultValueDuration: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HumanNameCopyWith<$Res>? get defaultValueHumanName {
    if (_value.defaultValueHumanName == null) {
      return null;
    }

    return $HumanNameCopyWith<$Res>(_value.defaultValueHumanName!, (value) {
      return _then(_value.copyWith(defaultValueHumanName: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdentifierCopyWith<$Res>? get defaultValueIdentifier {
    if (_value.defaultValueIdentifier == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.defaultValueIdentifier!, (value) {
      return _then(_value.copyWith(defaultValueIdentifier: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get defaultValueMoney {
    if (_value.defaultValueMoney == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.defaultValueMoney!, (value) {
      return _then(_value.copyWith(defaultValueMoney: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get defaultValuePeriod {
    if (_value.defaultValuePeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.defaultValuePeriod!, (value) {
      return _then(_value.copyWith(defaultValuePeriod: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get defaultValueQuantity {
    if (_value.defaultValueQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.defaultValueQuantity!, (value) {
      return _then(_value.copyWith(defaultValueQuantity: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get defaultValueRange {
    if (_value.defaultValueRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.defaultValueRange!, (value) {
      return _then(_value.copyWith(defaultValueRange: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatioCopyWith<$Res>? get defaultValueRatio {
    if (_value.defaultValueRatio == null) {
      return null;
    }

    return $RatioCopyWith<$Res>(_value.defaultValueRatio!, (value) {
      return _then(_value.copyWith(defaultValueRatio: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatioRangeCopyWith<$Res>? get defaultValueRatioRange {
    if (_value.defaultValueRatioRange == null) {
      return null;
    }

    return $RatioRangeCopyWith<$Res>(_value.defaultValueRatioRange!, (value) {
      return _then(_value.copyWith(defaultValueRatioRange: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get defaultValueReference {
    if (_value.defaultValueReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.defaultValueReference!, (value) {
      return _then(_value.copyWith(defaultValueReference: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SampledDataCopyWith<$Res>? get defaultValueSampledData {
    if (_value.defaultValueSampledData == null) {
      return null;
    }

    return $SampledDataCopyWith<$Res>(_value.defaultValueSampledData!, (value) {
      return _then(_value.copyWith(defaultValueSampledData: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignatureCopyWith<$Res>? get defaultValueSignature {
    if (_value.defaultValueSignature == null) {
      return null;
    }

    return $SignatureCopyWith<$Res>(_value.defaultValueSignature!, (value) {
      return _then(_value.copyWith(defaultValueSignature: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimingCopyWith<$Res>? get defaultValueTiming {
    if (_value.defaultValueTiming == null) {
      return null;
    }

    return $TimingCopyWith<$Res>(_value.defaultValueTiming!, (value) {
      return _then(_value.copyWith(defaultValueTiming: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactDetailCopyWith<$Res>? get defaultValueContactDetail {
    if (_value.defaultValueContactDetail == null) {
      return null;
    }

    return $ContactDetailCopyWith<$Res>(_value.defaultValueContactDetail!,
        (value) {
      return _then(_value.copyWith(defaultValueContactDetail: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContributorCopyWith<$Res>? get defaultValueContributor {
    if (_value.defaultValueContributor == null) {
      return null;
    }

    return $ContributorCopyWith<$Res>(_value.defaultValueContributor!, (value) {
      return _then(_value.copyWith(defaultValueContributor: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataRequirementCopyWith<$Res>? get defaultValueDataRequirement {
    if (_value.defaultValueDataRequirement == null) {
      return null;
    }

    return $DataRequirementCopyWith<$Res>(_value.defaultValueDataRequirement!,
        (value) {
      return _then(_value.copyWith(defaultValueDataRequirement: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FhirExpressionCopyWith<$Res>? get defaultValueExpression {
    if (_value.defaultValueExpression == null) {
      return null;
    }

    return $FhirExpressionCopyWith<$Res>(_value.defaultValueExpression!,
        (value) {
      return _then(_value.copyWith(defaultValueExpression: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParameterDefinitionCopyWith<$Res>? get defaultValueParameterDefinition {
    if (_value.defaultValueParameterDefinition == null) {
      return null;
    }

    return $ParameterDefinitionCopyWith<$Res>(
        _value.defaultValueParameterDefinition!, (value) {
      return _then(
          _value.copyWith(defaultValueParameterDefinition: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RelatedArtifactCopyWith<$Res>? get defaultValueRelatedArtifact {
    if (_value.defaultValueRelatedArtifact == null) {
      return null;
    }

    return $RelatedArtifactCopyWith<$Res>(_value.defaultValueRelatedArtifact!,
        (value) {
      return _then(_value.copyWith(defaultValueRelatedArtifact: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TriggerDefinitionCopyWith<$Res>? get defaultValueTriggerDefinition {
    if (_value.defaultValueTriggerDefinition == null) {
      return null;
    }

    return $TriggerDefinitionCopyWith<$Res>(
        _value.defaultValueTriggerDefinition!, (value) {
      return _then(
          _value.copyWith(defaultValueTriggerDefinition: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageContextCopyWith<$Res>? get defaultValueUsageContext {
    if (_value.defaultValueUsageContext == null) {
      return null;
    }

    return $UsageContextCopyWith<$Res>(_value.defaultValueUsageContext!,
        (value) {
      return _then(_value.copyWith(defaultValueUsageContext: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DosageCopyWith<$Res>? get defaultValueDosage {
    if (_value.defaultValueDosage == null) {
      return null;
    }

    return $DosageCopyWith<$Res>(_value.defaultValueDosage!, (value) {
      return _then(_value.copyWith(defaultValueDosage: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get fixedAddress {
    if (_value.fixedAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.fixedAddress!, (value) {
      return _then(_value.copyWith(fixedAddress: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res>? get fixedAge {
    if (_value.fixedAge == null) {
      return null;
    }

    return $AgeCopyWith<$Res>(_value.fixedAge!, (value) {
      return _then(_value.copyWith(fixedAge: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnotationCopyWith<$Res>? get fixedAnnotation {
    if (_value.fixedAnnotation == null) {
      return null;
    }

    return $AnnotationCopyWith<$Res>(_value.fixedAnnotation!, (value) {
      return _then(_value.copyWith(fixedAnnotation: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get fixedAttachment {
    if (_value.fixedAttachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.fixedAttachment!, (value) {
      return _then(_value.copyWith(fixedAttachment: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get fixedCodeableConcept {
    if (_value.fixedCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.fixedCodeableConcept!,
        (value) {
      return _then(_value.copyWith(fixedCodeableConcept: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res>? get fixedCodeableReference {
    if (_value.fixedCodeableReference == null) {
      return null;
    }

    return $CodeableReferenceCopyWith<$Res>(_value.fixedCodeableReference!,
        (value) {
      return _then(_value.copyWith(fixedCodeableReference: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodingCopyWith<$Res>? get fixedCoding {
    if (_value.fixedCoding == null) {
      return null;
    }

    return $CodingCopyWith<$Res>(_value.fixedCoding!, (value) {
      return _then(_value.copyWith(fixedCoding: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactPointCopyWith<$Res>? get fixedContactPoint {
    if (_value.fixedContactPoint == null) {
      return null;
    }

    return $ContactPointCopyWith<$Res>(_value.fixedContactPoint!, (value) {
      return _then(_value.copyWith(fixedContactPoint: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountCopyWith<$Res>? get fixedCount {
    if (_value.fixedCount == null) {
      return null;
    }

    return $CountCopyWith<$Res>(_value.fixedCount!, (value) {
      return _then(_value.copyWith(fixedCount: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistanceCopyWith<$Res>? get fixedDistance {
    if (_value.fixedDistance == null) {
      return null;
    }

    return $DistanceCopyWith<$Res>(_value.fixedDistance!, (value) {
      return _then(_value.copyWith(fixedDistance: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FhirDurationCopyWith<$Res>? get fixedDuration {
    if (_value.fixedDuration == null) {
      return null;
    }

    return $FhirDurationCopyWith<$Res>(_value.fixedDuration!, (value) {
      return _then(_value.copyWith(fixedDuration: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HumanNameCopyWith<$Res>? get fixedHumanName {
    if (_value.fixedHumanName == null) {
      return null;
    }

    return $HumanNameCopyWith<$Res>(_value.fixedHumanName!, (value) {
      return _then(_value.copyWith(fixedHumanName: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdentifierCopyWith<$Res>? get fixedIdentifier {
    if (_value.fixedIdentifier == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.fixedIdentifier!, (value) {
      return _then(_value.copyWith(fixedIdentifier: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get fixedMoney {
    if (_value.fixedMoney == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.fixedMoney!, (value) {
      return _then(_value.copyWith(fixedMoney: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get fixedPeriod {
    if (_value.fixedPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.fixedPeriod!, (value) {
      return _then(_value.copyWith(fixedPeriod: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get fixedQuantity {
    if (_value.fixedQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.fixedQuantity!, (value) {
      return _then(_value.copyWith(fixedQuantity: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get fixedRange {
    if (_value.fixedRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.fixedRange!, (value) {
      return _then(_value.copyWith(fixedRange: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatioCopyWith<$Res>? get fixedRatio {
    if (_value.fixedRatio == null) {
      return null;
    }

    return $RatioCopyWith<$Res>(_value.fixedRatio!, (value) {
      return _then(_value.copyWith(fixedRatio: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatioRangeCopyWith<$Res>? get fixedRatioRange {
    if (_value.fixedRatioRange == null) {
      return null;
    }

    return $RatioRangeCopyWith<$Res>(_value.fixedRatioRange!, (value) {
      return _then(_value.copyWith(fixedRatioRange: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get fixedReference {
    if (_value.fixedReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.fixedReference!, (value) {
      return _then(_value.copyWith(fixedReference: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SampledDataCopyWith<$Res>? get fixedSampledData {
    if (_value.fixedSampledData == null) {
      return null;
    }

    return $SampledDataCopyWith<$Res>(_value.fixedSampledData!, (value) {
      return _then(_value.copyWith(fixedSampledData: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignatureCopyWith<$Res>? get fixedSignature {
    if (_value.fixedSignature == null) {
      return null;
    }

    return $SignatureCopyWith<$Res>(_value.fixedSignature!, (value) {
      return _then(_value.copyWith(fixedSignature: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimingCopyWith<$Res>? get fixedTiming {
    if (_value.fixedTiming == null) {
      return null;
    }

    return $TimingCopyWith<$Res>(_value.fixedTiming!, (value) {
      return _then(_value.copyWith(fixedTiming: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactDetailCopyWith<$Res>? get fixedContactDetail {
    if (_value.fixedContactDetail == null) {
      return null;
    }

    return $ContactDetailCopyWith<$Res>(_value.fixedContactDetail!, (value) {
      return _then(_value.copyWith(fixedContactDetail: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContributorCopyWith<$Res>? get fixedContributor {
    if (_value.fixedContributor == null) {
      return null;
    }

    return $ContributorCopyWith<$Res>(_value.fixedContributor!, (value) {
      return _then(_value.copyWith(fixedContributor: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataRequirementCopyWith<$Res>? get fixedDataRequirement {
    if (_value.fixedDataRequirement == null) {
      return null;
    }

    return $DataRequirementCopyWith<$Res>(_value.fixedDataRequirement!,
        (value) {
      return _then(_value.copyWith(fixedDataRequirement: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FhirExpressionCopyWith<$Res>? get fixedExpression {
    if (_value.fixedExpression == null) {
      return null;
    }

    return $FhirExpressionCopyWith<$Res>(_value.fixedExpression!, (value) {
      return _then(_value.copyWith(fixedExpression: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParameterDefinitionCopyWith<$Res>? get fixedParameterDefinition {
    if (_value.fixedParameterDefinition == null) {
      return null;
    }

    return $ParameterDefinitionCopyWith<$Res>(_value.fixedParameterDefinition!,
        (value) {
      return _then(_value.copyWith(fixedParameterDefinition: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RelatedArtifactCopyWith<$Res>? get fixedRelatedArtifact {
    if (_value.fixedRelatedArtifact == null) {
      return null;
    }

    return $RelatedArtifactCopyWith<$Res>(_value.fixedRelatedArtifact!,
        (value) {
      return _then(_value.copyWith(fixedRelatedArtifact: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TriggerDefinitionCopyWith<$Res>? get fixedTriggerDefinition {
    if (_value.fixedTriggerDefinition == null) {
      return null;
    }

    return $TriggerDefinitionCopyWith<$Res>(_value.fixedTriggerDefinition!,
        (value) {
      return _then(_value.copyWith(fixedTriggerDefinition: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageContextCopyWith<$Res>? get fixedUsageContext {
    if (_value.fixedUsageContext == null) {
      return null;
    }

    return $UsageContextCopyWith<$Res>(_value.fixedUsageContext!, (value) {
      return _then(_value.copyWith(fixedUsageContext: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DosageCopyWith<$Res>? get fixedDosage {
    if (_value.fixedDosage == null) {
      return null;
    }

    return $DosageCopyWith<$Res>(_value.fixedDosage!, (value) {
      return _then(_value.copyWith(fixedDosage: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get patternAddress {
    if (_value.patternAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.patternAddress!, (value) {
      return _then(_value.copyWith(patternAddress: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res>? get patternAge {
    if (_value.patternAge == null) {
      return null;
    }

    return $AgeCopyWith<$Res>(_value.patternAge!, (value) {
      return _then(_value.copyWith(patternAge: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnotationCopyWith<$Res>? get patternAnnotation {
    if (_value.patternAnnotation == null) {
      return null;
    }

    return $AnnotationCopyWith<$Res>(_value.patternAnnotation!, (value) {
      return _then(_value.copyWith(patternAnnotation: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get patternAttachment {
    if (_value.patternAttachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.patternAttachment!, (value) {
      return _then(_value.copyWith(patternAttachment: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get patternCodeableConcept {
    if (_value.patternCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.patternCodeableConcept!,
        (value) {
      return _then(_value.copyWith(patternCodeableConcept: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res>? get patternCodeableReference {
    if (_value.patternCodeableReference == null) {
      return null;
    }

    return $CodeableReferenceCopyWith<$Res>(_value.patternCodeableReference!,
        (value) {
      return _then(_value.copyWith(patternCodeableReference: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodingCopyWith<$Res>? get patternCoding {
    if (_value.patternCoding == null) {
      return null;
    }

    return $CodingCopyWith<$Res>(_value.patternCoding!, (value) {
      return _then(_value.copyWith(patternCoding: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactPointCopyWith<$Res>? get patternContactPoint {
    if (_value.patternContactPoint == null) {
      return null;
    }

    return $ContactPointCopyWith<$Res>(_value.patternContactPoint!, (value) {
      return _then(_value.copyWith(patternContactPoint: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountCopyWith<$Res>? get patternCount {
    if (_value.patternCount == null) {
      return null;
    }

    return $CountCopyWith<$Res>(_value.patternCount!, (value) {
      return _then(_value.copyWith(patternCount: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistanceCopyWith<$Res>? get patternDistance {
    if (_value.patternDistance == null) {
      return null;
    }

    return $DistanceCopyWith<$Res>(_value.patternDistance!, (value) {
      return _then(_value.copyWith(patternDistance: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FhirDurationCopyWith<$Res>? get patternDuration {
    if (_value.patternDuration == null) {
      return null;
    }

    return $FhirDurationCopyWith<$Res>(_value.patternDuration!, (value) {
      return _then(_value.copyWith(patternDuration: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HumanNameCopyWith<$Res>? get patternHumanName {
    if (_value.patternHumanName == null) {
      return null;
    }

    return $HumanNameCopyWith<$Res>(_value.patternHumanName!, (value) {
      return _then(_value.copyWith(patternHumanName: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdentifierCopyWith<$Res>? get patternIdentifier {
    if (_value.patternIdentifier == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.patternIdentifier!, (value) {
      return _then(_value.copyWith(patternIdentifier: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get patternMoney {
    if (_value.patternMoney == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.patternMoney!, (value) {
      return _then(_value.copyWith(patternMoney: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get patternPeriod {
    if (_value.patternPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.patternPeriod!, (value) {
      return _then(_value.copyWith(patternPeriod: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get patternQuantity {
    if (_value.patternQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.patternQuantity!, (value) {
      return _then(_value.copyWith(patternQuantity: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get patternRange {
    if (_value.patternRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.patternRange!, (value) {
      return _then(_value.copyWith(patternRange: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatioCopyWith<$Res>? get patternRatio {
    if (_value.patternRatio == null) {
      return null;
    }

    return $RatioCopyWith<$Res>(_value.patternRatio!, (value) {
      return _then(_value.copyWith(patternRatio: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatioRangeCopyWith<$Res>? get patternRatioRange {
    if (_value.patternRatioRange == null) {
      return null;
    }

    return $RatioRangeCopyWith<$Res>(_value.patternRatioRange!, (value) {
      return _then(_value.copyWith(patternRatioRange: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get patternReference {
    if (_value.patternReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.patternReference!, (value) {
      return _then(_value.copyWith(patternReference: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SampledDataCopyWith<$Res>? get patternSampledData {
    if (_value.patternSampledData == null) {
      return null;
    }

    return $SampledDataCopyWith<$Res>(_value.patternSampledData!, (value) {
      return _then(_value.copyWith(patternSampledData: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignatureCopyWith<$Res>? get patternSignature {
    if (_value.patternSignature == null) {
      return null;
    }

    return $SignatureCopyWith<$Res>(_value.patternSignature!, (value) {
      return _then(_value.copyWith(patternSignature: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimingCopyWith<$Res>? get patternTiming {
    if (_value.patternTiming == null) {
      return null;
    }

    return $TimingCopyWith<$Res>(_value.patternTiming!, (value) {
      return _then(_value.copyWith(patternTiming: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactDetailCopyWith<$Res>? get patternContactDetail {
    if (_value.patternContactDetail == null) {
      return null;
    }

    return $ContactDetailCopyWith<$Res>(_value.patternContactDetail!, (value) {
      return _then(_value.copyWith(patternContactDetail: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContributorCopyWith<$Res>? get patternContributor {
    if (_value.patternContributor == null) {
      return null;
    }

    return $ContributorCopyWith<$Res>(_value.patternContributor!, (value) {
      return _then(_value.copyWith(patternContributor: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataRequirementCopyWith<$Res>? get patternDataRequirement {
    if (_value.patternDataRequirement == null) {
      return null;
    }

    return $DataRequirementCopyWith<$Res>(_value.patternDataRequirement!,
        (value) {
      return _then(_value.copyWith(patternDataRequirement: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FhirExpressionCopyWith<$Res>? get patternExpression {
    if (_value.patternExpression == null) {
      return null;
    }

    return $FhirExpressionCopyWith<$Res>(_value.patternExpression!, (value) {
      return _then(_value.copyWith(patternExpression: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParameterDefinitionCopyWith<$Res>? get patternParameterDefinition {
    if (_value.patternParameterDefinition == null) {
      return null;
    }

    return $ParameterDefinitionCopyWith<$Res>(
        _value.patternParameterDefinition!, (value) {
      return _then(_value.copyWith(patternParameterDefinition: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RelatedArtifactCopyWith<$Res>? get patternRelatedArtifact {
    if (_value.patternRelatedArtifact == null) {
      return null;
    }

    return $RelatedArtifactCopyWith<$Res>(_value.patternRelatedArtifact!,
        (value) {
      return _then(_value.copyWith(patternRelatedArtifact: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TriggerDefinitionCopyWith<$Res>? get patternTriggerDefinition {
    if (_value.patternTriggerDefinition == null) {
      return null;
    }

    return $TriggerDefinitionCopyWith<$Res>(_value.patternTriggerDefinition!,
        (value) {
      return _then(_value.copyWith(patternTriggerDefinition: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageContextCopyWith<$Res>? get patternUsageContext {
    if (_value.patternUsageContext == null) {
      return null;
    }

    return $UsageContextCopyWith<$Res>(_value.patternUsageContext!, (value) {
      return _then(_value.copyWith(patternUsageContext: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DosageCopyWith<$Res>? get patternDosage {
    if (_value.patternDosage == null) {
      return null;
    }

    return $DosageCopyWith<$Res>(_value.patternDosage!, (value) {
      return _then(_value.copyWith(patternDosage: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get minValueQuantity {
    if (_value.minValueQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.minValueQuantity!, (value) {
      return _then(_value.copyWith(minValueQuantity: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get maxValueQuantity {
    if (_value.maxValueQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.maxValueQuantity!, (value) {
      return _then(_value.copyWith(maxValueQuantity: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ElementDefinitionBindingCopyWith<$Res>? get binding {
    if (_value.binding == null) {
      return null;
    }

    return $ElementDefinitionBindingCopyWith<$Res>(_value.binding!, (value) {
      return _then(_value.copyWith(binding: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ElementDefinitionImplCopyWith<$Res>
    implements $ElementDefinitionCopyWith<$Res> {
  factory _$$ElementDefinitionImplCopyWith(_$ElementDefinitionImpl value,
          $Res Function(_$ElementDefinitionImpl) then) =
      __$$ElementDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? path,
      @JsonKey(name: '_path') PrimitiveElement? pathElement,
      List<ElementDefinitionRepresentation>? representation,
      @JsonKey(name: '_representation')
      List<PrimitiveElement>? representationElement,
      String? sliceName,
      @JsonKey(name: '_sliceName') PrimitiveElement? sliceNameElement,
      FhirBoolean? sliceIsConstraining,
      @JsonKey(name: '_sliceIsConstraining')
      PrimitiveElement? sliceIsConstrainingElement,
      String? label,
      @JsonKey(name: '_label') PrimitiveElement? labelElement,
      List<Coding>? code,
      ElementDefinitionSlicing? slicing,
      String? short,
      @JsonKey(name: '_short') PrimitiveElement? shortElement,
      FhirMarkdown? definition,
      @JsonKey(name: '_definition') PrimitiveElement? definitionElement,
      FhirMarkdown? comment,
      @JsonKey(name: '_comment') PrimitiveElement? commentElement,
      FhirMarkdown? requirements,
      @JsonKey(name: '_requirements') PrimitiveElement? requirementsElement,
      List<String>? alias,
      @JsonKey(name: '_alias') List<PrimitiveElement>? aliasElement,
      FhirUnsignedInt? min,
      @JsonKey(name: '_min') PrimitiveElement? minElement,
      String? max,
      @JsonKey(name: '_max') PrimitiveElement? maxElement,
      ElementDefinitionBase? base,
      FhirUri? contentReference,
      @JsonKey(name: '_contentReference')
      PrimitiveElement? contentReferenceElement,
      List<ElementDefinitionType>? type,
      FhirBase64Binary? defaultValueBase64Binary,
      @JsonKey(name: '_defaultValueBase64Binary')
      PrimitiveElement? defaultValueBase64BinaryElement,
      FhirBoolean? defaultValueBoolean,
      @JsonKey(name: '_defaultValueBoolean')
      PrimitiveElement? defaultValueBooleanElement,
      FhirCanonical? defaultValueCanonical,
      @JsonKey(name: '_defaultValueCanonical')
      PrimitiveElement? defaultValueCanonicalElement,
      FhirCode? defaultValueCode,
      @JsonKey(name: '_defaultValueCode')
      PrimitiveElement? defaultValueCodeElement,
      FhirDate? defaultValueDate,
      @JsonKey(name: '_defaultValueDate')
      PrimitiveElement? defaultValueDateElement,
      FhirDateTime? defaultValueDateTime,
      @JsonKey(name: '_defaultValueDateTime')
      PrimitiveElement? defaultValueDateTimeElement,
      FhirDecimal? defaultValueDecimal,
      @JsonKey(name: '_defaultValueDecimal')
      PrimitiveElement? defaultValueDecimalElement,
      FhirId? defaultValueId,
      @JsonKey(name: '_defaultValueId') PrimitiveElement? defaultValueIdElement,
      FhirInstant? defaultValueInstant,
      @JsonKey(name: '_defaultValueInstant')
      PrimitiveElement? defaultValueInstantElement,
      FhirInteger? defaultValueInteger,
      @JsonKey(name: '_defaultValueInteger')
      PrimitiveElement? defaultValueIntegerElement,
      FhirMarkdown? defaultValueMarkdown,
      @JsonKey(name: '_defaultValueMarkdown')
      PrimitiveElement? defaultValueMarkdownElement,
      FhirOid? defaultValueOid,
      @JsonKey(name: '_defaultValueOid')
      PrimitiveElement? defaultValueOidElement,
      FhirPositiveInt? defaultValuePositiveInt,
      @JsonKey(name: '_defaultValuePositiveInt')
      PrimitiveElement? defaultValuePositiveIntElement,
      String? defaultValueString,
      @JsonKey(name: '_defaultValueString')
      PrimitiveElement? defaultValueStringElement,
      FhirTime? defaultValueTime,
      @JsonKey(name: '_defaultValueTime')
      PrimitiveElement? defaultValueTimeElement,
      FhirUnsignedInt? defaultValueUnsignedInt,
      @JsonKey(name: '_defaultValueUnsignedInt')
      PrimitiveElement? defaultValueUnsignedIntElement,
      FhirUri? defaultValueUri,
      @JsonKey(name: '_defaultValueUri')
      PrimitiveElement? defaultValueUriElement,
      FhirUrl? defaultValueUrl,
      @JsonKey(name: '_defaultValueUrl')
      PrimitiveElement? defaultValueUrlElement,
      FhirUuid? defaultValueUuid,
      @JsonKey(name: '_defaultValueUuid')
      PrimitiveElement? defaultValueUuidElement,
      Address? defaultValueAddress,
      Age? defaultValueAge,
      Annotation? defaultValueAnnotation,
      Attachment? defaultValueAttachment,
      CodeableConcept? defaultValueCodeableConcept,
      CodeableReference? defaultValueCodeableReference,
      Coding? defaultValueCoding,
      ContactPoint? defaultValueContactPoint,
      Count? defaultValueCount,
      Distance? defaultValueDistance,
      FhirDuration? defaultValueDuration,
      HumanName? defaultValueHumanName,
      Identifier? defaultValueIdentifier,
      Money? defaultValueMoney,
      Period? defaultValuePeriod,
      Quantity? defaultValueQuantity,
      Range? defaultValueRange,
      Ratio? defaultValueRatio,
      RatioRange? defaultValueRatioRange,
      Reference? defaultValueReference,
      SampledData? defaultValueSampledData,
      Signature? defaultValueSignature,
      Timing? defaultValueTiming,
      ContactDetail? defaultValueContactDetail,
      Contributor? defaultValueContributor,
      DataRequirement? defaultValueDataRequirement,
      FhirExpression? defaultValueExpression,
      ParameterDefinition? defaultValueParameterDefinition,
      RelatedArtifact? defaultValueRelatedArtifact,
      TriggerDefinition? defaultValueTriggerDefinition,
      UsageContext? defaultValueUsageContext,
      Dosage? defaultValueDosage,
      FhirMarkdown? meaningWhenMissing,
      @JsonKey(name: '_meaningWhenMissing')
      PrimitiveElement? meaningWhenMissingElement,
      String? orderMeaning,
      @JsonKey(name: '_orderMeaning') PrimitiveElement? orderMeaningElement,
      FhirBase64Binary? fixedBase64Binary,
      @JsonKey(name: '_fixedBase64Binary')
      PrimitiveElement? fixedBase64BinaryElement,
      FhirBoolean? fixedBoolean,
      @JsonKey(name: '_fixedBoolean') PrimitiveElement? fixedBooleanElement,
      FhirCanonical? fixedCanonical,
      @JsonKey(name: '_fixedCanonical') PrimitiveElement? fixedCanonicalElement,
      FhirCode? fixedCode,
      @JsonKey(name: '_fixedCode') PrimitiveElement? fixedCodeElement,
      FhirDate? fixedDate,
      @JsonKey(name: '_fixedDate') PrimitiveElement? fixedDateElement,
      FhirDateTime? fixedDateTime,
      @JsonKey(name: '_fixedDateTime') PrimitiveElement? fixedDateTimeElement,
      FhirDecimal? fixedDecimal,
      @JsonKey(name: '_fixedDecimal') PrimitiveElement? fixedDecimalElement,
      FhirId? fixedId,
      @JsonKey(name: '_fixedId') PrimitiveElement? fixedIdElement,
      FhirInstant? fixedInstant,
      @JsonKey(name: '_fixedInstant') PrimitiveElement? fixedInstantElement,
      FhirInteger? fixedInteger,
      @JsonKey(name: '_fixedInteger') PrimitiveElement? fixedIntegerElement,
      FhirMarkdown? fixedMarkdown,
      @JsonKey(name: '_fixedMarkdown') PrimitiveElement? fixedMarkdownElement,
      FhirOid? fixedOid,
      @JsonKey(name: '_fixedOid') PrimitiveElement? fixedOidElement,
      FhirPositiveInt? fixedPositiveInt,
      @JsonKey(name: '_fixedPositiveInt')
      PrimitiveElement? fixedPositiveIntElement,
      String? fixedString,
      @JsonKey(name: '_fixedString') PrimitiveElement? fixedStringElement,
      FhirTime? fixedTime,
      @JsonKey(name: '_fixedTime') PrimitiveElement? fixedTimeElement,
      FhirUnsignedInt? fixedUnsignedInt,
      @JsonKey(name: '_fixedUnsignedInt')
      PrimitiveElement? fixedUnsignedIntElement,
      FhirUri? fixedUri,
      @JsonKey(name: '_fixedUri') PrimitiveElement? fixedUriElement,
      FhirUrl? fixedUrl,
      @JsonKey(name: '_fixedUrl') PrimitiveElement? fixedUrlElement,
      FhirUuid? fixedUuid,
      @JsonKey(name: '_fixedUuid') PrimitiveElement? fixedUuidElement,
      Address? fixedAddress,
      Age? fixedAge,
      Annotation? fixedAnnotation,
      Attachment? fixedAttachment,
      CodeableConcept? fixedCodeableConcept,
      CodeableReference? fixedCodeableReference,
      Coding? fixedCoding,
      ContactPoint? fixedContactPoint,
      Count? fixedCount,
      Distance? fixedDistance,
      FhirDuration? fixedDuration,
      HumanName? fixedHumanName,
      Identifier? fixedIdentifier,
      Money? fixedMoney,
      Period? fixedPeriod,
      Quantity? fixedQuantity,
      Range? fixedRange,
      Ratio? fixedRatio,
      RatioRange? fixedRatioRange,
      Reference? fixedReference,
      SampledData? fixedSampledData,
      Signature? fixedSignature,
      Timing? fixedTiming,
      ContactDetail? fixedContactDetail,
      Contributor? fixedContributor,
      DataRequirement? fixedDataRequirement,
      FhirExpression? fixedExpression,
      ParameterDefinition? fixedParameterDefinition,
      RelatedArtifact? fixedRelatedArtifact,
      TriggerDefinition? fixedTriggerDefinition,
      UsageContext? fixedUsageContext,
      Dosage? fixedDosage,
      FhirBase64Binary? patternBase64Binary,
      @JsonKey(name: '_patternBase64Binary')
      PrimitiveElement? patternBase64BinaryElement,
      FhirBoolean? patternBoolean,
      @JsonKey(name: '_patternBoolean') PrimitiveElement? patternBooleanElement,
      FhirCanonical? patternCanonical,
      @JsonKey(name: '_patternCanonical')
      PrimitiveElement? patternCanonicalElement,
      FhirCode? patternCode,
      @JsonKey(name: '_patternCode') PrimitiveElement? patternCodeElement,
      FhirDate? patternDate,
      @JsonKey(name: '_patternDate') PrimitiveElement? patternDateElement,
      FhirDateTime? patternDateTime,
      @JsonKey(name: '_patternDateTime')
      PrimitiveElement? patternDateTimeElement,
      FhirDecimal? patternDecimal,
      @JsonKey(name: '_patternDecimal') PrimitiveElement? patternDecimalElement,
      FhirId? patternId,
      @JsonKey(name: '_patternId') PrimitiveElement? patternIdElement,
      FhirInstant? patternInstant,
      @JsonKey(name: '_patternInstant') PrimitiveElement? patternInstantElement,
      FhirInteger? patternInteger,
      @JsonKey(name: '_patternInteger') PrimitiveElement? patternIntegerElement,
      FhirMarkdown? patternMarkdown,
      @JsonKey(name: '_patternMarkdown')
      PrimitiveElement? patternMarkdownElement,
      FhirOid? patternOid,
      @JsonKey(name: '_patternOid') PrimitiveElement? patternOidElement,
      FhirPositiveInt? patternPositiveInt,
      @JsonKey(name: '_patternPositiveInt')
      PrimitiveElement? patternPositiveIntElement,
      String? patternString,
      @JsonKey(name: '_patternString') PrimitiveElement? patternStringElement,
      FhirTime? patternTime,
      @JsonKey(name: '_patternTime') PrimitiveElement? patternTimeElement,
      FhirUnsignedInt? patternUnsignedInt,
      @JsonKey(name: '_patternUnsignedInt')
      PrimitiveElement? patternUnsignedIntElement,
      FhirUri? patternUri,
      @JsonKey(name: '_patternUri') PrimitiveElement? patternUriElement,
      FhirUrl? patternUrl,
      @JsonKey(name: '_patternUrl') PrimitiveElement? patternUrlElement,
      FhirUuid? patternUuid,
      @JsonKey(name: '_patternUuid') PrimitiveElement? patternUuidElement,
      Address? patternAddress,
      Age? patternAge,
      Annotation? patternAnnotation,
      Attachment? patternAttachment,
      CodeableConcept? patternCodeableConcept,
      CodeableReference? patternCodeableReference,
      Coding? patternCoding,
      ContactPoint? patternContactPoint,
      Count? patternCount,
      Distance? patternDistance,
      FhirDuration? patternDuration,
      HumanName? patternHumanName,
      Identifier? patternIdentifier,
      Money? patternMoney,
      Period? patternPeriod,
      Quantity? patternQuantity,
      Range? patternRange,
      Ratio? patternRatio,
      RatioRange? patternRatioRange,
      Reference? patternReference,
      SampledData? patternSampledData,
      Signature? patternSignature,
      Timing? patternTiming,
      ContactDetail? patternContactDetail,
      Contributor? patternContributor,
      DataRequirement? patternDataRequirement,
      FhirExpression? patternExpression,
      ParameterDefinition? patternParameterDefinition,
      RelatedArtifact? patternRelatedArtifact,
      TriggerDefinition? patternTriggerDefinition,
      UsageContext? patternUsageContext,
      Dosage? patternDosage,
      List<ElementDefinitionExample>? example,
      FhirDate? minValueDate,
      @JsonKey(name: '_minValueDate') PrimitiveElement? minValueDateElement,
      FhirDateTime? minValueDateTime,
      @JsonKey(name: '_minValueDateTime')
      PrimitiveElement? minValueDateTimeElement,
      FhirInstant? minValueInstant,
      @JsonKey(name: '_minValueInstant')
      PrimitiveElement? minValueInstantElement,
      FhirTime? minValueTime,
      @JsonKey(name: '_minValueTime') PrimitiveElement? minValueTimeElement,
      FhirDecimal? minValueDecimal,
      @JsonKey(name: '_minValueDecimal')
      PrimitiveElement? minValueDecimalElement,
      FhirInteger? minValueInteger,
      @JsonKey(name: '_minValueInteger')
      PrimitiveElement? minValueIntegerElement,
      FhirPositiveInt? minValuePositiveInt,
      @JsonKey(name: '_minValuePositiveInt')
      PrimitiveElement? minValuePositiveIntElement,
      FhirUnsignedInt? minValueUnsignedInt,
      @JsonKey(name: '_minValueUnsignedInt')
      PrimitiveElement? minValueUnsignedIntElement,
      Quantity? minValueQuantity,
      FhirDate? maxValueDate,
      @JsonKey(name: '_maxValueDate') PrimitiveElement? maxValueDateElement,
      FhirDateTime? maxValueDateTime,
      @JsonKey(name: '_maxValueDateTime')
      PrimitiveElement? maxValueDateTimeElement,
      FhirInstant? maxValueInstant,
      @JsonKey(name: '_maxValueInstant')
      PrimitiveElement? maxValueInstantElement,
      FhirTime? maxValueTime,
      @JsonKey(name: '_maxValueTime') PrimitiveElement? maxValueTimeElement,
      FhirDecimal? maxValueDecimal,
      @JsonKey(name: '_maxValueDecimal')
      PrimitiveElement? maxValueDecimalElement,
      FhirInteger? maxValueInteger,
      @JsonKey(name: '_maxValueInteger')
      PrimitiveElement? maxValueIntegerElement,
      FhirPositiveInt? maxValuePositiveInt,
      @JsonKey(name: '_maxValuePositiveInt')
      PrimitiveElement? maxValuePositiveIntElement,
      FhirUnsignedInt? maxValueUnsignedInt,
      @JsonKey(name: '_maxValueUnsignedInt')
      PrimitiveElement? maxValueUnsignedIntElement,
      Quantity? maxValueQuantity,
      FhirInteger? maxLength,
      @JsonKey(name: '_maxLength') PrimitiveElement? maxLengthElement,
      List<FhirId>? condition,
      @JsonKey(name: '_condition') List<PrimitiveElement>? conditionElement,
      List<ElementDefinitionConstraint>? constraint,
      FhirBoolean? mustSupport,
      @JsonKey(name: '_mustSupport') PrimitiveElement? mustSupportElement,
      FhirBoolean? isModifier,
      @JsonKey(name: '_isModifier') PrimitiveElement? isModifierElement,
      String? isModifierReason,
      @JsonKey(name: '_isModifierReason')
      PrimitiveElement? isModifierReasonElement,
      FhirBoolean? isSummary,
      @JsonKey(name: '_isSummary') PrimitiveElement? isSummaryElement,
      ElementDefinitionBinding? binding,
      List<ElementDefinitionMapping>? mapping});

  @override
  $ElementDefinitionSlicingCopyWith<$Res>? get slicing;
  @override
  $ElementDefinitionBaseCopyWith<$Res>? get base;
  @override
  $AddressCopyWith<$Res>? get defaultValueAddress;
  @override
  $AgeCopyWith<$Res>? get defaultValueAge;
  @override
  $AnnotationCopyWith<$Res>? get defaultValueAnnotation;
  @override
  $AttachmentCopyWith<$Res>? get defaultValueAttachment;
  @override
  $CodeableConceptCopyWith<$Res>? get defaultValueCodeableConcept;
  @override
  $CodeableReferenceCopyWith<$Res>? get defaultValueCodeableReference;
  @override
  $CodingCopyWith<$Res>? get defaultValueCoding;
  @override
  $ContactPointCopyWith<$Res>? get defaultValueContactPoint;
  @override
  $CountCopyWith<$Res>? get defaultValueCount;
  @override
  $DistanceCopyWith<$Res>? get defaultValueDistance;
  @override
  $FhirDurationCopyWith<$Res>? get defaultValueDuration;
  @override
  $HumanNameCopyWith<$Res>? get defaultValueHumanName;
  @override
  $IdentifierCopyWith<$Res>? get defaultValueIdentifier;
  @override
  $MoneyCopyWith<$Res>? get defaultValueMoney;
  @override
  $PeriodCopyWith<$Res>? get defaultValuePeriod;
  @override
  $QuantityCopyWith<$Res>? get defaultValueQuantity;
  @override
  $RangeCopyWith<$Res>? get defaultValueRange;
  @override
  $RatioCopyWith<$Res>? get defaultValueRatio;
  @override
  $RatioRangeCopyWith<$Res>? get defaultValueRatioRange;
  @override
  $ReferenceCopyWith<$Res>? get defaultValueReference;
  @override
  $SampledDataCopyWith<$Res>? get defaultValueSampledData;
  @override
  $SignatureCopyWith<$Res>? get defaultValueSignature;
  @override
  $TimingCopyWith<$Res>? get defaultValueTiming;
  @override
  $ContactDetailCopyWith<$Res>? get defaultValueContactDetail;
  @override
  $ContributorCopyWith<$Res>? get defaultValueContributor;
  @override
  $DataRequirementCopyWith<$Res>? get defaultValueDataRequirement;
  @override
  $FhirExpressionCopyWith<$Res>? get defaultValueExpression;
  @override
  $ParameterDefinitionCopyWith<$Res>? get defaultValueParameterDefinition;
  @override
  $RelatedArtifactCopyWith<$Res>? get defaultValueRelatedArtifact;
  @override
  $TriggerDefinitionCopyWith<$Res>? get defaultValueTriggerDefinition;
  @override
  $UsageContextCopyWith<$Res>? get defaultValueUsageContext;
  @override
  $DosageCopyWith<$Res>? get defaultValueDosage;
  @override
  $AddressCopyWith<$Res>? get fixedAddress;
  @override
  $AgeCopyWith<$Res>? get fixedAge;
  @override
  $AnnotationCopyWith<$Res>? get fixedAnnotation;
  @override
  $AttachmentCopyWith<$Res>? get fixedAttachment;
  @override
  $CodeableConceptCopyWith<$Res>? get fixedCodeableConcept;
  @override
  $CodeableReferenceCopyWith<$Res>? get fixedCodeableReference;
  @override
  $CodingCopyWith<$Res>? get fixedCoding;
  @override
  $ContactPointCopyWith<$Res>? get fixedContactPoint;
  @override
  $CountCopyWith<$Res>? get fixedCount;
  @override
  $DistanceCopyWith<$Res>? get fixedDistance;
  @override
  $FhirDurationCopyWith<$Res>? get fixedDuration;
  @override
  $HumanNameCopyWith<$Res>? get fixedHumanName;
  @override
  $IdentifierCopyWith<$Res>? get fixedIdentifier;
  @override
  $MoneyCopyWith<$Res>? get fixedMoney;
  @override
  $PeriodCopyWith<$Res>? get fixedPeriod;
  @override
  $QuantityCopyWith<$Res>? get fixedQuantity;
  @override
  $RangeCopyWith<$Res>? get fixedRange;
  @override
  $RatioCopyWith<$Res>? get fixedRatio;
  @override
  $RatioRangeCopyWith<$Res>? get fixedRatioRange;
  @override
  $ReferenceCopyWith<$Res>? get fixedReference;
  @override
  $SampledDataCopyWith<$Res>? get fixedSampledData;
  @override
  $SignatureCopyWith<$Res>? get fixedSignature;
  @override
  $TimingCopyWith<$Res>? get fixedTiming;
  @override
  $ContactDetailCopyWith<$Res>? get fixedContactDetail;
  @override
  $ContributorCopyWith<$Res>? get fixedContributor;
  @override
  $DataRequirementCopyWith<$Res>? get fixedDataRequirement;
  @override
  $FhirExpressionCopyWith<$Res>? get fixedExpression;
  @override
  $ParameterDefinitionCopyWith<$Res>? get fixedParameterDefinition;
  @override
  $RelatedArtifactCopyWith<$Res>? get fixedRelatedArtifact;
  @override
  $TriggerDefinitionCopyWith<$Res>? get fixedTriggerDefinition;
  @override
  $UsageContextCopyWith<$Res>? get fixedUsageContext;
  @override
  $DosageCopyWith<$Res>? get fixedDosage;
  @override
  $AddressCopyWith<$Res>? get patternAddress;
  @override
  $AgeCopyWith<$Res>? get patternAge;
  @override
  $AnnotationCopyWith<$Res>? get patternAnnotation;
  @override
  $AttachmentCopyWith<$Res>? get patternAttachment;
  @override
  $CodeableConceptCopyWith<$Res>? get patternCodeableConcept;
  @override
  $CodeableReferenceCopyWith<$Res>? get patternCodeableReference;
  @override
  $CodingCopyWith<$Res>? get patternCoding;
  @override
  $ContactPointCopyWith<$Res>? get patternContactPoint;
  @override
  $CountCopyWith<$Res>? get patternCount;
  @override
  $DistanceCopyWith<$Res>? get patternDistance;
  @override
  $FhirDurationCopyWith<$Res>? get patternDuration;
  @override
  $HumanNameCopyWith<$Res>? get patternHumanName;
  @override
  $IdentifierCopyWith<$Res>? get patternIdentifier;
  @override
  $MoneyCopyWith<$Res>? get patternMoney;
  @override
  $PeriodCopyWith<$Res>? get patternPeriod;
  @override
  $QuantityCopyWith<$Res>? get patternQuantity;
  @override
  $RangeCopyWith<$Res>? get patternRange;
  @override
  $RatioCopyWith<$Res>? get patternRatio;
  @override
  $RatioRangeCopyWith<$Res>? get patternRatioRange;
  @override
  $ReferenceCopyWith<$Res>? get patternReference;
  @override
  $SampledDataCopyWith<$Res>? get patternSampledData;
  @override
  $SignatureCopyWith<$Res>? get patternSignature;
  @override
  $TimingCopyWith<$Res>? get patternTiming;
  @override
  $ContactDetailCopyWith<$Res>? get patternContactDetail;
  @override
  $ContributorCopyWith<$Res>? get patternContributor;
  @override
  $DataRequirementCopyWith<$Res>? get patternDataRequirement;
  @override
  $FhirExpressionCopyWith<$Res>? get patternExpression;
  @override
  $ParameterDefinitionCopyWith<$Res>? get patternParameterDefinition;
  @override
  $RelatedArtifactCopyWith<$Res>? get patternRelatedArtifact;
  @override
  $TriggerDefinitionCopyWith<$Res>? get patternTriggerDefinition;
  @override
  $UsageContextCopyWith<$Res>? get patternUsageContext;
  @override
  $DosageCopyWith<$Res>? get patternDosage;
  @override
  $QuantityCopyWith<$Res>? get minValueQuantity;
  @override
  $QuantityCopyWith<$Res>? get maxValueQuantity;
  @override
  $ElementDefinitionBindingCopyWith<$Res>? get binding;
}

/// @nodoc
class __$$ElementDefinitionImplCopyWithImpl<$Res>
    extends _$ElementDefinitionCopyWithImpl<$Res, _$ElementDefinitionImpl>
    implements _$$ElementDefinitionImplCopyWith<$Res> {
  __$$ElementDefinitionImplCopyWithImpl(_$ElementDefinitionImpl _value,
      $Res Function(_$ElementDefinitionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? path = freezed,
    Object? pathElement = freezed,
    Object? representation = freezed,
    Object? representationElement = freezed,
    Object? sliceName = freezed,
    Object? sliceNameElement = freezed,
    Object? sliceIsConstraining = freezed,
    Object? sliceIsConstrainingElement = freezed,
    Object? label = freezed,
    Object? labelElement = freezed,
    Object? code = freezed,
    Object? slicing = freezed,
    Object? short = freezed,
    Object? shortElement = freezed,
    Object? definition = freezed,
    Object? definitionElement = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
    Object? requirements = freezed,
    Object? requirementsElement = freezed,
    Object? alias = freezed,
    Object? aliasElement = freezed,
    Object? min = freezed,
    Object? minElement = freezed,
    Object? max = freezed,
    Object? maxElement = freezed,
    Object? base = freezed,
    Object? contentReference = freezed,
    Object? contentReferenceElement = freezed,
    Object? type = freezed,
    Object? defaultValueBase64Binary = freezed,
    Object? defaultValueBase64BinaryElement = freezed,
    Object? defaultValueBoolean = freezed,
    Object? defaultValueBooleanElement = freezed,
    Object? defaultValueCanonical = freezed,
    Object? defaultValueCanonicalElement = freezed,
    Object? defaultValueCode = freezed,
    Object? defaultValueCodeElement = freezed,
    Object? defaultValueDate = freezed,
    Object? defaultValueDateElement = freezed,
    Object? defaultValueDateTime = freezed,
    Object? defaultValueDateTimeElement = freezed,
    Object? defaultValueDecimal = freezed,
    Object? defaultValueDecimalElement = freezed,
    Object? defaultValueId = freezed,
    Object? defaultValueIdElement = freezed,
    Object? defaultValueInstant = freezed,
    Object? defaultValueInstantElement = freezed,
    Object? defaultValueInteger = freezed,
    Object? defaultValueIntegerElement = freezed,
    Object? defaultValueMarkdown = freezed,
    Object? defaultValueMarkdownElement = freezed,
    Object? defaultValueOid = freezed,
    Object? defaultValueOidElement = freezed,
    Object? defaultValuePositiveInt = freezed,
    Object? defaultValuePositiveIntElement = freezed,
    Object? defaultValueString = freezed,
    Object? defaultValueStringElement = freezed,
    Object? defaultValueTime = freezed,
    Object? defaultValueTimeElement = freezed,
    Object? defaultValueUnsignedInt = freezed,
    Object? defaultValueUnsignedIntElement = freezed,
    Object? defaultValueUri = freezed,
    Object? defaultValueUriElement = freezed,
    Object? defaultValueUrl = freezed,
    Object? defaultValueUrlElement = freezed,
    Object? defaultValueUuid = freezed,
    Object? defaultValueUuidElement = freezed,
    Object? defaultValueAddress = freezed,
    Object? defaultValueAge = freezed,
    Object? defaultValueAnnotation = freezed,
    Object? defaultValueAttachment = freezed,
    Object? defaultValueCodeableConcept = freezed,
    Object? defaultValueCodeableReference = freezed,
    Object? defaultValueCoding = freezed,
    Object? defaultValueContactPoint = freezed,
    Object? defaultValueCount = freezed,
    Object? defaultValueDistance = freezed,
    Object? defaultValueDuration = freezed,
    Object? defaultValueHumanName = freezed,
    Object? defaultValueIdentifier = freezed,
    Object? defaultValueMoney = freezed,
    Object? defaultValuePeriod = freezed,
    Object? defaultValueQuantity = freezed,
    Object? defaultValueRange = freezed,
    Object? defaultValueRatio = freezed,
    Object? defaultValueRatioRange = freezed,
    Object? defaultValueReference = freezed,
    Object? defaultValueSampledData = freezed,
    Object? defaultValueSignature = freezed,
    Object? defaultValueTiming = freezed,
    Object? defaultValueContactDetail = freezed,
    Object? defaultValueContributor = freezed,
    Object? defaultValueDataRequirement = freezed,
    Object? defaultValueExpression = freezed,
    Object? defaultValueParameterDefinition = freezed,
    Object? defaultValueRelatedArtifact = freezed,
    Object? defaultValueTriggerDefinition = freezed,
    Object? defaultValueUsageContext = freezed,
    Object? defaultValueDosage = freezed,
    Object? meaningWhenMissing = freezed,
    Object? meaningWhenMissingElement = freezed,
    Object? orderMeaning = freezed,
    Object? orderMeaningElement = freezed,
    Object? fixedBase64Binary = freezed,
    Object? fixedBase64BinaryElement = freezed,
    Object? fixedBoolean = freezed,
    Object? fixedBooleanElement = freezed,
    Object? fixedCanonical = freezed,
    Object? fixedCanonicalElement = freezed,
    Object? fixedCode = freezed,
    Object? fixedCodeElement = freezed,
    Object? fixedDate = freezed,
    Object? fixedDateElement = freezed,
    Object? fixedDateTime = freezed,
    Object? fixedDateTimeElement = freezed,
    Object? fixedDecimal = freezed,
    Object? fixedDecimalElement = freezed,
    Object? fixedId = freezed,
    Object? fixedIdElement = freezed,
    Object? fixedInstant = freezed,
    Object? fixedInstantElement = freezed,
    Object? fixedInteger = freezed,
    Object? fixedIntegerElement = freezed,
    Object? fixedMarkdown = freezed,
    Object? fixedMarkdownElement = freezed,
    Object? fixedOid = freezed,
    Object? fixedOidElement = freezed,
    Object? fixedPositiveInt = freezed,
    Object? fixedPositiveIntElement = freezed,
    Object? fixedString = freezed,
    Object? fixedStringElement = freezed,
    Object? fixedTime = freezed,
    Object? fixedTimeElement = freezed,
    Object? fixedUnsignedInt = freezed,
    Object? fixedUnsignedIntElement = freezed,
    Object? fixedUri = freezed,
    Object? fixedUriElement = freezed,
    Object? fixedUrl = freezed,
    Object? fixedUrlElement = freezed,
    Object? fixedUuid = freezed,
    Object? fixedUuidElement = freezed,
    Object? fixedAddress = freezed,
    Object? fixedAge = freezed,
    Object? fixedAnnotation = freezed,
    Object? fixedAttachment = freezed,
    Object? fixedCodeableConcept = freezed,
    Object? fixedCodeableReference = freezed,
    Object? fixedCoding = freezed,
    Object? fixedContactPoint = freezed,
    Object? fixedCount = freezed,
    Object? fixedDistance = freezed,
    Object? fixedDuration = freezed,
    Object? fixedHumanName = freezed,
    Object? fixedIdentifier = freezed,
    Object? fixedMoney = freezed,
    Object? fixedPeriod = freezed,
    Object? fixedQuantity = freezed,
    Object? fixedRange = freezed,
    Object? fixedRatio = freezed,
    Object? fixedRatioRange = freezed,
    Object? fixedReference = freezed,
    Object? fixedSampledData = freezed,
    Object? fixedSignature = freezed,
    Object? fixedTiming = freezed,
    Object? fixedContactDetail = freezed,
    Object? fixedContributor = freezed,
    Object? fixedDataRequirement = freezed,
    Object? fixedExpression = freezed,
    Object? fixedParameterDefinition = freezed,
    Object? fixedRelatedArtifact = freezed,
    Object? fixedTriggerDefinition = freezed,
    Object? fixedUsageContext = freezed,
    Object? fixedDosage = freezed,
    Object? patternBase64Binary = freezed,
    Object? patternBase64BinaryElement = freezed,
    Object? patternBoolean = freezed,
    Object? patternBooleanElement = freezed,
    Object? patternCanonical = freezed,
    Object? patternCanonicalElement = freezed,
    Object? patternCode = freezed,
    Object? patternCodeElement = freezed,
    Object? patternDate = freezed,
    Object? patternDateElement = freezed,
    Object? patternDateTime = freezed,
    Object? patternDateTimeElement = freezed,
    Object? patternDecimal = freezed,
    Object? patternDecimalElement = freezed,
    Object? patternId = freezed,
    Object? patternIdElement = freezed,
    Object? patternInstant = freezed,
    Object? patternInstantElement = freezed,
    Object? patternInteger = freezed,
    Object? patternIntegerElement = freezed,
    Object? patternMarkdown = freezed,
    Object? patternMarkdownElement = freezed,
    Object? patternOid = freezed,
    Object? patternOidElement = freezed,
    Object? patternPositiveInt = freezed,
    Object? patternPositiveIntElement = freezed,
    Object? patternString = freezed,
    Object? patternStringElement = freezed,
    Object? patternTime = freezed,
    Object? patternTimeElement = freezed,
    Object? patternUnsignedInt = freezed,
    Object? patternUnsignedIntElement = freezed,
    Object? patternUri = freezed,
    Object? patternUriElement = freezed,
    Object? patternUrl = freezed,
    Object? patternUrlElement = freezed,
    Object? patternUuid = freezed,
    Object? patternUuidElement = freezed,
    Object? patternAddress = freezed,
    Object? patternAge = freezed,
    Object? patternAnnotation = freezed,
    Object? patternAttachment = freezed,
    Object? patternCodeableConcept = freezed,
    Object? patternCodeableReference = freezed,
    Object? patternCoding = freezed,
    Object? patternContactPoint = freezed,
    Object? patternCount = freezed,
    Object? patternDistance = freezed,
    Object? patternDuration = freezed,
    Object? patternHumanName = freezed,
    Object? patternIdentifier = freezed,
    Object? patternMoney = freezed,
    Object? patternPeriod = freezed,
    Object? patternQuantity = freezed,
    Object? patternRange = freezed,
    Object? patternRatio = freezed,
    Object? patternRatioRange = freezed,
    Object? patternReference = freezed,
    Object? patternSampledData = freezed,
    Object? patternSignature = freezed,
    Object? patternTiming = freezed,
    Object? patternContactDetail = freezed,
    Object? patternContributor = freezed,
    Object? patternDataRequirement = freezed,
    Object? patternExpression = freezed,
    Object? patternParameterDefinition = freezed,
    Object? patternRelatedArtifact = freezed,
    Object? patternTriggerDefinition = freezed,
    Object? patternUsageContext = freezed,
    Object? patternDosage = freezed,
    Object? example = freezed,
    Object? minValueDate = freezed,
    Object? minValueDateElement = freezed,
    Object? minValueDateTime = freezed,
    Object? minValueDateTimeElement = freezed,
    Object? minValueInstant = freezed,
    Object? minValueInstantElement = freezed,
    Object? minValueTime = freezed,
    Object? minValueTimeElement = freezed,
    Object? minValueDecimal = freezed,
    Object? minValueDecimalElement = freezed,
    Object? minValueInteger = freezed,
    Object? minValueIntegerElement = freezed,
    Object? minValuePositiveInt = freezed,
    Object? minValuePositiveIntElement = freezed,
    Object? minValueUnsignedInt = freezed,
    Object? minValueUnsignedIntElement = freezed,
    Object? minValueQuantity = freezed,
    Object? maxValueDate = freezed,
    Object? maxValueDateElement = freezed,
    Object? maxValueDateTime = freezed,
    Object? maxValueDateTimeElement = freezed,
    Object? maxValueInstant = freezed,
    Object? maxValueInstantElement = freezed,
    Object? maxValueTime = freezed,
    Object? maxValueTimeElement = freezed,
    Object? maxValueDecimal = freezed,
    Object? maxValueDecimalElement = freezed,
    Object? maxValueInteger = freezed,
    Object? maxValueIntegerElement = freezed,
    Object? maxValuePositiveInt = freezed,
    Object? maxValuePositiveIntElement = freezed,
    Object? maxValueUnsignedInt = freezed,
    Object? maxValueUnsignedIntElement = freezed,
    Object? maxValueQuantity = freezed,
    Object? maxLength = freezed,
    Object? maxLengthElement = freezed,
    Object? condition = freezed,
    Object? conditionElement = freezed,
    Object? constraint = freezed,
    Object? mustSupport = freezed,
    Object? mustSupportElement = freezed,
    Object? isModifier = freezed,
    Object? isModifierElement = freezed,
    Object? isModifierReason = freezed,
    Object? isModifierReasonElement = freezed,
    Object? isSummary = freezed,
    Object? isSummaryElement = freezed,
    Object? binding = freezed,
    Object? mapping = freezed,
  }) {
    return _then(_$ElementDefinitionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      pathElement: freezed == pathElement
          ? _value.pathElement
          : pathElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      representation: freezed == representation
          ? _value._representation
          : representation // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinitionRepresentation>?,
      representationElement: freezed == representationElement
          ? _value._representationElement
          : representationElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      sliceName: freezed == sliceName
          ? _value.sliceName
          : sliceName // ignore: cast_nullable_to_non_nullable
              as String?,
      sliceNameElement: freezed == sliceNameElement
          ? _value.sliceNameElement
          : sliceNameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      sliceIsConstraining: freezed == sliceIsConstraining
          ? _value.sliceIsConstraining
          : sliceIsConstraining // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      sliceIsConstrainingElement: freezed == sliceIsConstrainingElement
          ? _value.sliceIsConstrainingElement
          : sliceIsConstrainingElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      labelElement: freezed == labelElement
          ? _value.labelElement
          : labelElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      code: freezed == code
          ? _value._code
          : code // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      slicing: freezed == slicing
          ? _value.slicing
          : slicing // ignore: cast_nullable_to_non_nullable
              as ElementDefinitionSlicing?,
      short: freezed == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String?,
      shortElement: freezed == shortElement
          ? _value.shortElement
          : shortElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      definitionElement: freezed == definitionElement
          ? _value.definitionElement
          : definitionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      requirements: freezed == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      requirementsElement: freezed == requirementsElement
          ? _value.requirementsElement
          : requirementsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      alias: freezed == alias
          ? _value._alias
          : alias // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aliasElement: freezed == aliasElement
          ? _value._aliasElement
          : aliasElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      minElement: freezed == minElement
          ? _value.minElement
          : minElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as String?,
      maxElement: freezed == maxElement
          ? _value.maxElement
          : maxElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as ElementDefinitionBase?,
      contentReference: freezed == contentReference
          ? _value.contentReference
          : contentReference // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      contentReferenceElement: freezed == contentReferenceElement
          ? _value.contentReferenceElement
          : contentReferenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinitionType>?,
      defaultValueBase64Binary: freezed == defaultValueBase64Binary
          ? _value.defaultValueBase64Binary
          : defaultValueBase64Binary // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      defaultValueBase64BinaryElement: freezed ==
              defaultValueBase64BinaryElement
          ? _value.defaultValueBase64BinaryElement
          : defaultValueBase64BinaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueBoolean: freezed == defaultValueBoolean
          ? _value.defaultValueBoolean
          : defaultValueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      defaultValueBooleanElement: freezed == defaultValueBooleanElement
          ? _value.defaultValueBooleanElement
          : defaultValueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueCanonical: freezed == defaultValueCanonical
          ? _value.defaultValueCanonical
          : defaultValueCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      defaultValueCanonicalElement: freezed == defaultValueCanonicalElement
          ? _value.defaultValueCanonicalElement
          : defaultValueCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueCode: freezed == defaultValueCode
          ? _value.defaultValueCode
          : defaultValueCode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      defaultValueCodeElement: freezed == defaultValueCodeElement
          ? _value.defaultValueCodeElement
          : defaultValueCodeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueDate: freezed == defaultValueDate
          ? _value.defaultValueDate
          : defaultValueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      defaultValueDateElement: freezed == defaultValueDateElement
          ? _value.defaultValueDateElement
          : defaultValueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueDateTime: freezed == defaultValueDateTime
          ? _value.defaultValueDateTime
          : defaultValueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      defaultValueDateTimeElement: freezed == defaultValueDateTimeElement
          ? _value.defaultValueDateTimeElement
          : defaultValueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueDecimal: freezed == defaultValueDecimal
          ? _value.defaultValueDecimal
          : defaultValueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      defaultValueDecimalElement: freezed == defaultValueDecimalElement
          ? _value.defaultValueDecimalElement
          : defaultValueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueId: freezed == defaultValueId
          ? _value.defaultValueId
          : defaultValueId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      defaultValueIdElement: freezed == defaultValueIdElement
          ? _value.defaultValueIdElement
          : defaultValueIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueInstant: freezed == defaultValueInstant
          ? _value.defaultValueInstant
          : defaultValueInstant // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      defaultValueInstantElement: freezed == defaultValueInstantElement
          ? _value.defaultValueInstantElement
          : defaultValueInstantElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueInteger: freezed == defaultValueInteger
          ? _value.defaultValueInteger
          : defaultValueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      defaultValueIntegerElement: freezed == defaultValueIntegerElement
          ? _value.defaultValueIntegerElement
          : defaultValueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueMarkdown: freezed == defaultValueMarkdown
          ? _value.defaultValueMarkdown
          : defaultValueMarkdown // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      defaultValueMarkdownElement: freezed == defaultValueMarkdownElement
          ? _value.defaultValueMarkdownElement
          : defaultValueMarkdownElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueOid: freezed == defaultValueOid
          ? _value.defaultValueOid
          : defaultValueOid // ignore: cast_nullable_to_non_nullable
              as FhirOid?,
      defaultValueOidElement: freezed == defaultValueOidElement
          ? _value.defaultValueOidElement
          : defaultValueOidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValuePositiveInt: freezed == defaultValuePositiveInt
          ? _value.defaultValuePositiveInt
          : defaultValuePositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      defaultValuePositiveIntElement: freezed == defaultValuePositiveIntElement
          ? _value.defaultValuePositiveIntElement
          : defaultValuePositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueString: freezed == defaultValueString
          ? _value.defaultValueString
          : defaultValueString // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultValueStringElement: freezed == defaultValueStringElement
          ? _value.defaultValueStringElement
          : defaultValueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueTime: freezed == defaultValueTime
          ? _value.defaultValueTime
          : defaultValueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      defaultValueTimeElement: freezed == defaultValueTimeElement
          ? _value.defaultValueTimeElement
          : defaultValueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueUnsignedInt: freezed == defaultValueUnsignedInt
          ? _value.defaultValueUnsignedInt
          : defaultValueUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      defaultValueUnsignedIntElement: freezed == defaultValueUnsignedIntElement
          ? _value.defaultValueUnsignedIntElement
          : defaultValueUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueUri: freezed == defaultValueUri
          ? _value.defaultValueUri
          : defaultValueUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      defaultValueUriElement: freezed == defaultValueUriElement
          ? _value.defaultValueUriElement
          : defaultValueUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueUrl: freezed == defaultValueUrl
          ? _value.defaultValueUrl
          : defaultValueUrl // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      defaultValueUrlElement: freezed == defaultValueUrlElement
          ? _value.defaultValueUrlElement
          : defaultValueUrlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueUuid: freezed == defaultValueUuid
          ? _value.defaultValueUuid
          : defaultValueUuid // ignore: cast_nullable_to_non_nullable
              as FhirUuid?,
      defaultValueUuidElement: freezed == defaultValueUuidElement
          ? _value.defaultValueUuidElement
          : defaultValueUuidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueAddress: freezed == defaultValueAddress
          ? _value.defaultValueAddress
          : defaultValueAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      defaultValueAge: freezed == defaultValueAge
          ? _value.defaultValueAge
          : defaultValueAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      defaultValueAnnotation: freezed == defaultValueAnnotation
          ? _value.defaultValueAnnotation
          : defaultValueAnnotation // ignore: cast_nullable_to_non_nullable
              as Annotation?,
      defaultValueAttachment: freezed == defaultValueAttachment
          ? _value.defaultValueAttachment
          : defaultValueAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      defaultValueCodeableConcept: freezed == defaultValueCodeableConcept
          ? _value.defaultValueCodeableConcept
          : defaultValueCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      defaultValueCodeableReference: freezed == defaultValueCodeableReference
          ? _value.defaultValueCodeableReference
          : defaultValueCodeableReference // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      defaultValueCoding: freezed == defaultValueCoding
          ? _value.defaultValueCoding
          : defaultValueCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      defaultValueContactPoint: freezed == defaultValueContactPoint
          ? _value.defaultValueContactPoint
          : defaultValueContactPoint // ignore: cast_nullable_to_non_nullable
              as ContactPoint?,
      defaultValueCount: freezed == defaultValueCount
          ? _value.defaultValueCount
          : defaultValueCount // ignore: cast_nullable_to_non_nullable
              as Count?,
      defaultValueDistance: freezed == defaultValueDistance
          ? _value.defaultValueDistance
          : defaultValueDistance // ignore: cast_nullable_to_non_nullable
              as Distance?,
      defaultValueDuration: freezed == defaultValueDuration
          ? _value.defaultValueDuration
          : defaultValueDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      defaultValueHumanName: freezed == defaultValueHumanName
          ? _value.defaultValueHumanName
          : defaultValueHumanName // ignore: cast_nullable_to_non_nullable
              as HumanName?,
      defaultValueIdentifier: freezed == defaultValueIdentifier
          ? _value.defaultValueIdentifier
          : defaultValueIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      defaultValueMoney: freezed == defaultValueMoney
          ? _value.defaultValueMoney
          : defaultValueMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      defaultValuePeriod: freezed == defaultValuePeriod
          ? _value.defaultValuePeriod
          : defaultValuePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      defaultValueQuantity: freezed == defaultValueQuantity
          ? _value.defaultValueQuantity
          : defaultValueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      defaultValueRange: freezed == defaultValueRange
          ? _value.defaultValueRange
          : defaultValueRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      defaultValueRatio: freezed == defaultValueRatio
          ? _value.defaultValueRatio
          : defaultValueRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      defaultValueRatioRange: freezed == defaultValueRatioRange
          ? _value.defaultValueRatioRange
          : defaultValueRatioRange // ignore: cast_nullable_to_non_nullable
              as RatioRange?,
      defaultValueReference: freezed == defaultValueReference
          ? _value.defaultValueReference
          : defaultValueReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      defaultValueSampledData: freezed == defaultValueSampledData
          ? _value.defaultValueSampledData
          : defaultValueSampledData // ignore: cast_nullable_to_non_nullable
              as SampledData?,
      defaultValueSignature: freezed == defaultValueSignature
          ? _value.defaultValueSignature
          : defaultValueSignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
      defaultValueTiming: freezed == defaultValueTiming
          ? _value.defaultValueTiming
          : defaultValueTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      defaultValueContactDetail: freezed == defaultValueContactDetail
          ? _value.defaultValueContactDetail
          : defaultValueContactDetail // ignore: cast_nullable_to_non_nullable
              as ContactDetail?,
      defaultValueContributor: freezed == defaultValueContributor
          ? _value.defaultValueContributor
          : defaultValueContributor // ignore: cast_nullable_to_non_nullable
              as Contributor?,
      defaultValueDataRequirement: freezed == defaultValueDataRequirement
          ? _value.defaultValueDataRequirement
          : defaultValueDataRequirement // ignore: cast_nullable_to_non_nullable
              as DataRequirement?,
      defaultValueExpression: freezed == defaultValueExpression
          ? _value.defaultValueExpression
          : defaultValueExpression // ignore: cast_nullable_to_non_nullable
              as FhirExpression?,
      defaultValueParameterDefinition: freezed ==
              defaultValueParameterDefinition
          ? _value.defaultValueParameterDefinition
          : defaultValueParameterDefinition // ignore: cast_nullable_to_non_nullable
              as ParameterDefinition?,
      defaultValueRelatedArtifact: freezed == defaultValueRelatedArtifact
          ? _value.defaultValueRelatedArtifact
          : defaultValueRelatedArtifact // ignore: cast_nullable_to_non_nullable
              as RelatedArtifact?,
      defaultValueTriggerDefinition: freezed == defaultValueTriggerDefinition
          ? _value.defaultValueTriggerDefinition
          : defaultValueTriggerDefinition // ignore: cast_nullable_to_non_nullable
              as TriggerDefinition?,
      defaultValueUsageContext: freezed == defaultValueUsageContext
          ? _value.defaultValueUsageContext
          : defaultValueUsageContext // ignore: cast_nullable_to_non_nullable
              as UsageContext?,
      defaultValueDosage: freezed == defaultValueDosage
          ? _value.defaultValueDosage
          : defaultValueDosage // ignore: cast_nullable_to_non_nullable
              as Dosage?,
      meaningWhenMissing: freezed == meaningWhenMissing
          ? _value.meaningWhenMissing
          : meaningWhenMissing // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      meaningWhenMissingElement: freezed == meaningWhenMissingElement
          ? _value.meaningWhenMissingElement
          : meaningWhenMissingElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      orderMeaning: freezed == orderMeaning
          ? _value.orderMeaning
          : orderMeaning // ignore: cast_nullable_to_non_nullable
              as String?,
      orderMeaningElement: freezed == orderMeaningElement
          ? _value.orderMeaningElement
          : orderMeaningElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedBase64Binary: freezed == fixedBase64Binary
          ? _value.fixedBase64Binary
          : fixedBase64Binary // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      fixedBase64BinaryElement: freezed == fixedBase64BinaryElement
          ? _value.fixedBase64BinaryElement
          : fixedBase64BinaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedBoolean: freezed == fixedBoolean
          ? _value.fixedBoolean
          : fixedBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      fixedBooleanElement: freezed == fixedBooleanElement
          ? _value.fixedBooleanElement
          : fixedBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedCanonical: freezed == fixedCanonical
          ? _value.fixedCanonical
          : fixedCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      fixedCanonicalElement: freezed == fixedCanonicalElement
          ? _value.fixedCanonicalElement
          : fixedCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedCode: freezed == fixedCode
          ? _value.fixedCode
          : fixedCode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      fixedCodeElement: freezed == fixedCodeElement
          ? _value.fixedCodeElement
          : fixedCodeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedDate: freezed == fixedDate
          ? _value.fixedDate
          : fixedDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      fixedDateElement: freezed == fixedDateElement
          ? _value.fixedDateElement
          : fixedDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedDateTime: freezed == fixedDateTime
          ? _value.fixedDateTime
          : fixedDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      fixedDateTimeElement: freezed == fixedDateTimeElement
          ? _value.fixedDateTimeElement
          : fixedDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedDecimal: freezed == fixedDecimal
          ? _value.fixedDecimal
          : fixedDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      fixedDecimalElement: freezed == fixedDecimalElement
          ? _value.fixedDecimalElement
          : fixedDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedId: freezed == fixedId
          ? _value.fixedId
          : fixedId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      fixedIdElement: freezed == fixedIdElement
          ? _value.fixedIdElement
          : fixedIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedInstant: freezed == fixedInstant
          ? _value.fixedInstant
          : fixedInstant // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      fixedInstantElement: freezed == fixedInstantElement
          ? _value.fixedInstantElement
          : fixedInstantElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedInteger: freezed == fixedInteger
          ? _value.fixedInteger
          : fixedInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      fixedIntegerElement: freezed == fixedIntegerElement
          ? _value.fixedIntegerElement
          : fixedIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedMarkdown: freezed == fixedMarkdown
          ? _value.fixedMarkdown
          : fixedMarkdown // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      fixedMarkdownElement: freezed == fixedMarkdownElement
          ? _value.fixedMarkdownElement
          : fixedMarkdownElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedOid: freezed == fixedOid
          ? _value.fixedOid
          : fixedOid // ignore: cast_nullable_to_non_nullable
              as FhirOid?,
      fixedOidElement: freezed == fixedOidElement
          ? _value.fixedOidElement
          : fixedOidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedPositiveInt: freezed == fixedPositiveInt
          ? _value.fixedPositiveInt
          : fixedPositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      fixedPositiveIntElement: freezed == fixedPositiveIntElement
          ? _value.fixedPositiveIntElement
          : fixedPositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedString: freezed == fixedString
          ? _value.fixedString
          : fixedString // ignore: cast_nullable_to_non_nullable
              as String?,
      fixedStringElement: freezed == fixedStringElement
          ? _value.fixedStringElement
          : fixedStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedTime: freezed == fixedTime
          ? _value.fixedTime
          : fixedTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      fixedTimeElement: freezed == fixedTimeElement
          ? _value.fixedTimeElement
          : fixedTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedUnsignedInt: freezed == fixedUnsignedInt
          ? _value.fixedUnsignedInt
          : fixedUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      fixedUnsignedIntElement: freezed == fixedUnsignedIntElement
          ? _value.fixedUnsignedIntElement
          : fixedUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedUri: freezed == fixedUri
          ? _value.fixedUri
          : fixedUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      fixedUriElement: freezed == fixedUriElement
          ? _value.fixedUriElement
          : fixedUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedUrl: freezed == fixedUrl
          ? _value.fixedUrl
          : fixedUrl // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      fixedUrlElement: freezed == fixedUrlElement
          ? _value.fixedUrlElement
          : fixedUrlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedUuid: freezed == fixedUuid
          ? _value.fixedUuid
          : fixedUuid // ignore: cast_nullable_to_non_nullable
              as FhirUuid?,
      fixedUuidElement: freezed == fixedUuidElement
          ? _value.fixedUuidElement
          : fixedUuidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fixedAddress: freezed == fixedAddress
          ? _value.fixedAddress
          : fixedAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      fixedAge: freezed == fixedAge
          ? _value.fixedAge
          : fixedAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      fixedAnnotation: freezed == fixedAnnotation
          ? _value.fixedAnnotation
          : fixedAnnotation // ignore: cast_nullable_to_non_nullable
              as Annotation?,
      fixedAttachment: freezed == fixedAttachment
          ? _value.fixedAttachment
          : fixedAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      fixedCodeableConcept: freezed == fixedCodeableConcept
          ? _value.fixedCodeableConcept
          : fixedCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      fixedCodeableReference: freezed == fixedCodeableReference
          ? _value.fixedCodeableReference
          : fixedCodeableReference // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      fixedCoding: freezed == fixedCoding
          ? _value.fixedCoding
          : fixedCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      fixedContactPoint: freezed == fixedContactPoint
          ? _value.fixedContactPoint
          : fixedContactPoint // ignore: cast_nullable_to_non_nullable
              as ContactPoint?,
      fixedCount: freezed == fixedCount
          ? _value.fixedCount
          : fixedCount // ignore: cast_nullable_to_non_nullable
              as Count?,
      fixedDistance: freezed == fixedDistance
          ? _value.fixedDistance
          : fixedDistance // ignore: cast_nullable_to_non_nullable
              as Distance?,
      fixedDuration: freezed == fixedDuration
          ? _value.fixedDuration
          : fixedDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      fixedHumanName: freezed == fixedHumanName
          ? _value.fixedHumanName
          : fixedHumanName // ignore: cast_nullable_to_non_nullable
              as HumanName?,
      fixedIdentifier: freezed == fixedIdentifier
          ? _value.fixedIdentifier
          : fixedIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      fixedMoney: freezed == fixedMoney
          ? _value.fixedMoney
          : fixedMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      fixedPeriod: freezed == fixedPeriod
          ? _value.fixedPeriod
          : fixedPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      fixedQuantity: freezed == fixedQuantity
          ? _value.fixedQuantity
          : fixedQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      fixedRange: freezed == fixedRange
          ? _value.fixedRange
          : fixedRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      fixedRatio: freezed == fixedRatio
          ? _value.fixedRatio
          : fixedRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      fixedRatioRange: freezed == fixedRatioRange
          ? _value.fixedRatioRange
          : fixedRatioRange // ignore: cast_nullable_to_non_nullable
              as RatioRange?,
      fixedReference: freezed == fixedReference
          ? _value.fixedReference
          : fixedReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      fixedSampledData: freezed == fixedSampledData
          ? _value.fixedSampledData
          : fixedSampledData // ignore: cast_nullable_to_non_nullable
              as SampledData?,
      fixedSignature: freezed == fixedSignature
          ? _value.fixedSignature
          : fixedSignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
      fixedTiming: freezed == fixedTiming
          ? _value.fixedTiming
          : fixedTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      fixedContactDetail: freezed == fixedContactDetail
          ? _value.fixedContactDetail
          : fixedContactDetail // ignore: cast_nullable_to_non_nullable
              as ContactDetail?,
      fixedContributor: freezed == fixedContributor
          ? _value.fixedContributor
          : fixedContributor // ignore: cast_nullable_to_non_nullable
              as Contributor?,
      fixedDataRequirement: freezed == fixedDataRequirement
          ? _value.fixedDataRequirement
          : fixedDataRequirement // ignore: cast_nullable_to_non_nullable
              as DataRequirement?,
      fixedExpression: freezed == fixedExpression
          ? _value.fixedExpression
          : fixedExpression // ignore: cast_nullable_to_non_nullable
              as FhirExpression?,
      fixedParameterDefinition: freezed == fixedParameterDefinition
          ? _value.fixedParameterDefinition
          : fixedParameterDefinition // ignore: cast_nullable_to_non_nullable
              as ParameterDefinition?,
      fixedRelatedArtifact: freezed == fixedRelatedArtifact
          ? _value.fixedRelatedArtifact
          : fixedRelatedArtifact // ignore: cast_nullable_to_non_nullable
              as RelatedArtifact?,
      fixedTriggerDefinition: freezed == fixedTriggerDefinition
          ? _value.fixedTriggerDefinition
          : fixedTriggerDefinition // ignore: cast_nullable_to_non_nullable
              as TriggerDefinition?,
      fixedUsageContext: freezed == fixedUsageContext
          ? _value.fixedUsageContext
          : fixedUsageContext // ignore: cast_nullable_to_non_nullable
              as UsageContext?,
      fixedDosage: freezed == fixedDosage
          ? _value.fixedDosage
          : fixedDosage // ignore: cast_nullable_to_non_nullable
              as Dosage?,
      patternBase64Binary: freezed == patternBase64Binary
          ? _value.patternBase64Binary
          : patternBase64Binary // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      patternBase64BinaryElement: freezed == patternBase64BinaryElement
          ? _value.patternBase64BinaryElement
          : patternBase64BinaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternBoolean: freezed == patternBoolean
          ? _value.patternBoolean
          : patternBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      patternBooleanElement: freezed == patternBooleanElement
          ? _value.patternBooleanElement
          : patternBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternCanonical: freezed == patternCanonical
          ? _value.patternCanonical
          : patternCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      patternCanonicalElement: freezed == patternCanonicalElement
          ? _value.patternCanonicalElement
          : patternCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternCode: freezed == patternCode
          ? _value.patternCode
          : patternCode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      patternCodeElement: freezed == patternCodeElement
          ? _value.patternCodeElement
          : patternCodeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternDate: freezed == patternDate
          ? _value.patternDate
          : patternDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      patternDateElement: freezed == patternDateElement
          ? _value.patternDateElement
          : patternDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternDateTime: freezed == patternDateTime
          ? _value.patternDateTime
          : patternDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      patternDateTimeElement: freezed == patternDateTimeElement
          ? _value.patternDateTimeElement
          : patternDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternDecimal: freezed == patternDecimal
          ? _value.patternDecimal
          : patternDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      patternDecimalElement: freezed == patternDecimalElement
          ? _value.patternDecimalElement
          : patternDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternId: freezed == patternId
          ? _value.patternId
          : patternId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      patternIdElement: freezed == patternIdElement
          ? _value.patternIdElement
          : patternIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternInstant: freezed == patternInstant
          ? _value.patternInstant
          : patternInstant // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      patternInstantElement: freezed == patternInstantElement
          ? _value.patternInstantElement
          : patternInstantElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternInteger: freezed == patternInteger
          ? _value.patternInteger
          : patternInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      patternIntegerElement: freezed == patternIntegerElement
          ? _value.patternIntegerElement
          : patternIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternMarkdown: freezed == patternMarkdown
          ? _value.patternMarkdown
          : patternMarkdown // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      patternMarkdownElement: freezed == patternMarkdownElement
          ? _value.patternMarkdownElement
          : patternMarkdownElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternOid: freezed == patternOid
          ? _value.patternOid
          : patternOid // ignore: cast_nullable_to_non_nullable
              as FhirOid?,
      patternOidElement: freezed == patternOidElement
          ? _value.patternOidElement
          : patternOidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternPositiveInt: freezed == patternPositiveInt
          ? _value.patternPositiveInt
          : patternPositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      patternPositiveIntElement: freezed == patternPositiveIntElement
          ? _value.patternPositiveIntElement
          : patternPositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternString: freezed == patternString
          ? _value.patternString
          : patternString // ignore: cast_nullable_to_non_nullable
              as String?,
      patternStringElement: freezed == patternStringElement
          ? _value.patternStringElement
          : patternStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternTime: freezed == patternTime
          ? _value.patternTime
          : patternTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      patternTimeElement: freezed == patternTimeElement
          ? _value.patternTimeElement
          : patternTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternUnsignedInt: freezed == patternUnsignedInt
          ? _value.patternUnsignedInt
          : patternUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      patternUnsignedIntElement: freezed == patternUnsignedIntElement
          ? _value.patternUnsignedIntElement
          : patternUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternUri: freezed == patternUri
          ? _value.patternUri
          : patternUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      patternUriElement: freezed == patternUriElement
          ? _value.patternUriElement
          : patternUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternUrl: freezed == patternUrl
          ? _value.patternUrl
          : patternUrl // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      patternUrlElement: freezed == patternUrlElement
          ? _value.patternUrlElement
          : patternUrlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternUuid: freezed == patternUuid
          ? _value.patternUuid
          : patternUuid // ignore: cast_nullable_to_non_nullable
              as FhirUuid?,
      patternUuidElement: freezed == patternUuidElement
          ? _value.patternUuidElement
          : patternUuidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patternAddress: freezed == patternAddress
          ? _value.patternAddress
          : patternAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      patternAge: freezed == patternAge
          ? _value.patternAge
          : patternAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      patternAnnotation: freezed == patternAnnotation
          ? _value.patternAnnotation
          : patternAnnotation // ignore: cast_nullable_to_non_nullable
              as Annotation?,
      patternAttachment: freezed == patternAttachment
          ? _value.patternAttachment
          : patternAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      patternCodeableConcept: freezed == patternCodeableConcept
          ? _value.patternCodeableConcept
          : patternCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      patternCodeableReference: freezed == patternCodeableReference
          ? _value.patternCodeableReference
          : patternCodeableReference // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      patternCoding: freezed == patternCoding
          ? _value.patternCoding
          : patternCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      patternContactPoint: freezed == patternContactPoint
          ? _value.patternContactPoint
          : patternContactPoint // ignore: cast_nullable_to_non_nullable
              as ContactPoint?,
      patternCount: freezed == patternCount
          ? _value.patternCount
          : patternCount // ignore: cast_nullable_to_non_nullable
              as Count?,
      patternDistance: freezed == patternDistance
          ? _value.patternDistance
          : patternDistance // ignore: cast_nullable_to_non_nullable
              as Distance?,
      patternDuration: freezed == patternDuration
          ? _value.patternDuration
          : patternDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      patternHumanName: freezed == patternHumanName
          ? _value.patternHumanName
          : patternHumanName // ignore: cast_nullable_to_non_nullable
              as HumanName?,
      patternIdentifier: freezed == patternIdentifier
          ? _value.patternIdentifier
          : patternIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      patternMoney: freezed == patternMoney
          ? _value.patternMoney
          : patternMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      patternPeriod: freezed == patternPeriod
          ? _value.patternPeriod
          : patternPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      patternQuantity: freezed == patternQuantity
          ? _value.patternQuantity
          : patternQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      patternRange: freezed == patternRange
          ? _value.patternRange
          : patternRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      patternRatio: freezed == patternRatio
          ? _value.patternRatio
          : patternRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      patternRatioRange: freezed == patternRatioRange
          ? _value.patternRatioRange
          : patternRatioRange // ignore: cast_nullable_to_non_nullable
              as RatioRange?,
      patternReference: freezed == patternReference
          ? _value.patternReference
          : patternReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      patternSampledData: freezed == patternSampledData
          ? _value.patternSampledData
          : patternSampledData // ignore: cast_nullable_to_non_nullable
              as SampledData?,
      patternSignature: freezed == patternSignature
          ? _value.patternSignature
          : patternSignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
      patternTiming: freezed == patternTiming
          ? _value.patternTiming
          : patternTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      patternContactDetail: freezed == patternContactDetail
          ? _value.patternContactDetail
          : patternContactDetail // ignore: cast_nullable_to_non_nullable
              as ContactDetail?,
      patternContributor: freezed == patternContributor
          ? _value.patternContributor
          : patternContributor // ignore: cast_nullable_to_non_nullable
              as Contributor?,
      patternDataRequirement: freezed == patternDataRequirement
          ? _value.patternDataRequirement
          : patternDataRequirement // ignore: cast_nullable_to_non_nullable
              as DataRequirement?,
      patternExpression: freezed == patternExpression
          ? _value.patternExpression
          : patternExpression // ignore: cast_nullable_to_non_nullable
              as FhirExpression?,
      patternParameterDefinition: freezed == patternParameterDefinition
          ? _value.patternParameterDefinition
          : patternParameterDefinition // ignore: cast_nullable_to_non_nullable
              as ParameterDefinition?,
      patternRelatedArtifact: freezed == patternRelatedArtifact
          ? _value.patternRelatedArtifact
          : patternRelatedArtifact // ignore: cast_nullable_to_non_nullable
              as RelatedArtifact?,
      patternTriggerDefinition: freezed == patternTriggerDefinition
          ? _value.patternTriggerDefinition
          : patternTriggerDefinition // ignore: cast_nullable_to_non_nullable
              as TriggerDefinition?,
      patternUsageContext: freezed == patternUsageContext
          ? _value.patternUsageContext
          : patternUsageContext // ignore: cast_nullable_to_non_nullable
              as UsageContext?,
      patternDosage: freezed == patternDosage
          ? _value.patternDosage
          : patternDosage // ignore: cast_nullable_to_non_nullable
              as Dosage?,
      example: freezed == example
          ? _value._example
          : example // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinitionExample>?,
      minValueDate: freezed == minValueDate
          ? _value.minValueDate
          : minValueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      minValueDateElement: freezed == minValueDateElement
          ? _value.minValueDateElement
          : minValueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      minValueDateTime: freezed == minValueDateTime
          ? _value.minValueDateTime
          : minValueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      minValueDateTimeElement: freezed == minValueDateTimeElement
          ? _value.minValueDateTimeElement
          : minValueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      minValueInstant: freezed == minValueInstant
          ? _value.minValueInstant
          : minValueInstant // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      minValueInstantElement: freezed == minValueInstantElement
          ? _value.minValueInstantElement
          : minValueInstantElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      minValueTime: freezed == minValueTime
          ? _value.minValueTime
          : minValueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      minValueTimeElement: freezed == minValueTimeElement
          ? _value.minValueTimeElement
          : minValueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      minValueDecimal: freezed == minValueDecimal
          ? _value.minValueDecimal
          : minValueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      minValueDecimalElement: freezed == minValueDecimalElement
          ? _value.minValueDecimalElement
          : minValueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      minValueInteger: freezed == minValueInteger
          ? _value.minValueInteger
          : minValueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      minValueIntegerElement: freezed == minValueIntegerElement
          ? _value.minValueIntegerElement
          : minValueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      minValuePositiveInt: freezed == minValuePositiveInt
          ? _value.minValuePositiveInt
          : minValuePositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      minValuePositiveIntElement: freezed == minValuePositiveIntElement
          ? _value.minValuePositiveIntElement
          : minValuePositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      minValueUnsignedInt: freezed == minValueUnsignedInt
          ? _value.minValueUnsignedInt
          : minValueUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      minValueUnsignedIntElement: freezed == minValueUnsignedIntElement
          ? _value.minValueUnsignedIntElement
          : minValueUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      minValueQuantity: freezed == minValueQuantity
          ? _value.minValueQuantity
          : minValueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      maxValueDate: freezed == maxValueDate
          ? _value.maxValueDate
          : maxValueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      maxValueDateElement: freezed == maxValueDateElement
          ? _value.maxValueDateElement
          : maxValueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxValueDateTime: freezed == maxValueDateTime
          ? _value.maxValueDateTime
          : maxValueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      maxValueDateTimeElement: freezed == maxValueDateTimeElement
          ? _value.maxValueDateTimeElement
          : maxValueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxValueInstant: freezed == maxValueInstant
          ? _value.maxValueInstant
          : maxValueInstant // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      maxValueInstantElement: freezed == maxValueInstantElement
          ? _value.maxValueInstantElement
          : maxValueInstantElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxValueTime: freezed == maxValueTime
          ? _value.maxValueTime
          : maxValueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      maxValueTimeElement: freezed == maxValueTimeElement
          ? _value.maxValueTimeElement
          : maxValueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxValueDecimal: freezed == maxValueDecimal
          ? _value.maxValueDecimal
          : maxValueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      maxValueDecimalElement: freezed == maxValueDecimalElement
          ? _value.maxValueDecimalElement
          : maxValueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxValueInteger: freezed == maxValueInteger
          ? _value.maxValueInteger
          : maxValueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      maxValueIntegerElement: freezed == maxValueIntegerElement
          ? _value.maxValueIntegerElement
          : maxValueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxValuePositiveInt: freezed == maxValuePositiveInt
          ? _value.maxValuePositiveInt
          : maxValuePositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      maxValuePositiveIntElement: freezed == maxValuePositiveIntElement
          ? _value.maxValuePositiveIntElement
          : maxValuePositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxValueUnsignedInt: freezed == maxValueUnsignedInt
          ? _value.maxValueUnsignedInt
          : maxValueUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      maxValueUnsignedIntElement: freezed == maxValueUnsignedIntElement
          ? _value.maxValueUnsignedIntElement
          : maxValueUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxValueQuantity: freezed == maxValueQuantity
          ? _value.maxValueQuantity
          : maxValueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      maxLength: freezed == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      maxLengthElement: freezed == maxLengthElement
          ? _value.maxLengthElement
          : maxLengthElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      condition: freezed == condition
          ? _value._condition
          : condition // ignore: cast_nullable_to_non_nullable
              as List<FhirId>?,
      conditionElement: freezed == conditionElement
          ? _value._conditionElement
          : conditionElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      constraint: freezed == constraint
          ? _value._constraint
          : constraint // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinitionConstraint>?,
      mustSupport: freezed == mustSupport
          ? _value.mustSupport
          : mustSupport // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      mustSupportElement: freezed == mustSupportElement
          ? _value.mustSupportElement
          : mustSupportElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      isModifier: freezed == isModifier
          ? _value.isModifier
          : isModifier // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      isModifierElement: freezed == isModifierElement
          ? _value.isModifierElement
          : isModifierElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      isModifierReason: freezed == isModifierReason
          ? _value.isModifierReason
          : isModifierReason // ignore: cast_nullable_to_non_nullable
              as String?,
      isModifierReasonElement: freezed == isModifierReasonElement
          ? _value.isModifierReasonElement
          : isModifierReasonElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      isSummary: freezed == isSummary
          ? _value.isSummary
          : isSummary // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      isSummaryElement: freezed == isSummaryElement
          ? _value.isSummaryElement
          : isSummaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      binding: freezed == binding
          ? _value.binding
          : binding // ignore: cast_nullable_to_non_nullable
              as ElementDefinitionBinding?,
      mapping: freezed == mapping
          ? _value._mapping
          : mapping // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinitionMapping>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElementDefinitionImpl extends _ElementDefinition {
  _$ElementDefinitionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.path,
      @JsonKey(name: '_path') this.pathElement,
      final List<ElementDefinitionRepresentation>? representation,
      @JsonKey(name: '_representation')
      final List<PrimitiveElement>? representationElement,
      this.sliceName,
      @JsonKey(name: '_sliceName') this.sliceNameElement,
      this.sliceIsConstraining,
      @JsonKey(name: '_sliceIsConstraining') this.sliceIsConstrainingElement,
      this.label,
      @JsonKey(name: '_label') this.labelElement,
      final List<Coding>? code,
      this.slicing,
      this.short,
      @JsonKey(name: '_short') this.shortElement,
      this.definition,
      @JsonKey(name: '_definition') this.definitionElement,
      this.comment,
      @JsonKey(name: '_comment') this.commentElement,
      this.requirements,
      @JsonKey(name: '_requirements') this.requirementsElement,
      final List<String>? alias,
      @JsonKey(name: '_alias') final List<PrimitiveElement>? aliasElement,
      this.min,
      @JsonKey(name: '_min') this.minElement,
      this.max,
      @JsonKey(name: '_max') this.maxElement,
      this.base,
      this.contentReference,
      @JsonKey(name: '_contentReference') this.contentReferenceElement,
      final List<ElementDefinitionType>? type,
      this.defaultValueBase64Binary,
      @JsonKey(name: '_defaultValueBase64Binary')
      this.defaultValueBase64BinaryElement,
      this.defaultValueBoolean,
      @JsonKey(name: '_defaultValueBoolean') this.defaultValueBooleanElement,
      this.defaultValueCanonical,
      @JsonKey(name: '_defaultValueCanonical')
      this.defaultValueCanonicalElement,
      this.defaultValueCode,
      @JsonKey(name: '_defaultValueCode') this.defaultValueCodeElement,
      this.defaultValueDate,
      @JsonKey(name: '_defaultValueDate') this.defaultValueDateElement,
      this.defaultValueDateTime,
      @JsonKey(name: '_defaultValueDateTime') this.defaultValueDateTimeElement,
      this.defaultValueDecimal,
      @JsonKey(name: '_defaultValueDecimal') this.defaultValueDecimalElement,
      this.defaultValueId,
      @JsonKey(name: '_defaultValueId') this.defaultValueIdElement,
      this.defaultValueInstant,
      @JsonKey(name: '_defaultValueInstant') this.defaultValueInstantElement,
      this.defaultValueInteger,
      @JsonKey(name: '_defaultValueInteger') this.defaultValueIntegerElement,
      this.defaultValueMarkdown,
      @JsonKey(name: '_defaultValueMarkdown') this.defaultValueMarkdownElement,
      this.defaultValueOid,
      @JsonKey(name: '_defaultValueOid') this.defaultValueOidElement,
      this.defaultValuePositiveInt,
      @JsonKey(name: '_defaultValuePositiveInt')
      this.defaultValuePositiveIntElement,
      this.defaultValueString,
      @JsonKey(name: '_defaultValueString') this.defaultValueStringElement,
      this.defaultValueTime,
      @JsonKey(name: '_defaultValueTime') this.defaultValueTimeElement,
      this.defaultValueUnsignedInt,
      @JsonKey(name: '_defaultValueUnsignedInt')
      this.defaultValueUnsignedIntElement,
      this.defaultValueUri,
      @JsonKey(name: '_defaultValueUri') this.defaultValueUriElement,
      this.defaultValueUrl,
      @JsonKey(name: '_defaultValueUrl') this.defaultValueUrlElement,
      this.defaultValueUuid,
      @JsonKey(name: '_defaultValueUuid') this.defaultValueUuidElement,
      this.defaultValueAddress,
      this.defaultValueAge,
      this.defaultValueAnnotation,
      this.defaultValueAttachment,
      this.defaultValueCodeableConcept,
      this.defaultValueCodeableReference,
      this.defaultValueCoding,
      this.defaultValueContactPoint,
      this.defaultValueCount,
      this.defaultValueDistance,
      this.defaultValueDuration,
      this.defaultValueHumanName,
      this.defaultValueIdentifier,
      this.defaultValueMoney,
      this.defaultValuePeriod,
      this.defaultValueQuantity,
      this.defaultValueRange,
      this.defaultValueRatio,
      this.defaultValueRatioRange,
      this.defaultValueReference,
      this.defaultValueSampledData,
      this.defaultValueSignature,
      this.defaultValueTiming,
      this.defaultValueContactDetail,
      this.defaultValueContributor,
      this.defaultValueDataRequirement,
      this.defaultValueExpression,
      this.defaultValueParameterDefinition,
      this.defaultValueRelatedArtifact,
      this.defaultValueTriggerDefinition,
      this.defaultValueUsageContext,
      this.defaultValueDosage,
      this.meaningWhenMissing,
      @JsonKey(name: '_meaningWhenMissing') this.meaningWhenMissingElement,
      this.orderMeaning,
      @JsonKey(name: '_orderMeaning') this.orderMeaningElement,
      this.fixedBase64Binary,
      @JsonKey(name: '_fixedBase64Binary') this.fixedBase64BinaryElement,
      this.fixedBoolean,
      @JsonKey(name: '_fixedBoolean') this.fixedBooleanElement,
      this.fixedCanonical,
      @JsonKey(name: '_fixedCanonical') this.fixedCanonicalElement,
      this.fixedCode,
      @JsonKey(name: '_fixedCode') this.fixedCodeElement,
      this.fixedDate,
      @JsonKey(name: '_fixedDate') this.fixedDateElement,
      this.fixedDateTime,
      @JsonKey(name: '_fixedDateTime') this.fixedDateTimeElement,
      this.fixedDecimal,
      @JsonKey(name: '_fixedDecimal') this.fixedDecimalElement,
      this.fixedId,
      @JsonKey(name: '_fixedId') this.fixedIdElement,
      this.fixedInstant,
      @JsonKey(name: '_fixedInstant') this.fixedInstantElement,
      this.fixedInteger,
      @JsonKey(name: '_fixedInteger') this.fixedIntegerElement,
      this.fixedMarkdown,
      @JsonKey(name: '_fixedMarkdown') this.fixedMarkdownElement,
      this.fixedOid,
      @JsonKey(name: '_fixedOid') this.fixedOidElement,
      this.fixedPositiveInt,
      @JsonKey(name: '_fixedPositiveInt') this.fixedPositiveIntElement,
      this.fixedString,
      @JsonKey(name: '_fixedString') this.fixedStringElement,
      this.fixedTime,
      @JsonKey(name: '_fixedTime') this.fixedTimeElement,
      this.fixedUnsignedInt,
      @JsonKey(name: '_fixedUnsignedInt') this.fixedUnsignedIntElement,
      this.fixedUri,
      @JsonKey(name: '_fixedUri') this.fixedUriElement,
      this.fixedUrl,
      @JsonKey(name: '_fixedUrl') this.fixedUrlElement,
      this.fixedUuid,
      @JsonKey(name: '_fixedUuid') this.fixedUuidElement,
      this.fixedAddress,
      this.fixedAge,
      this.fixedAnnotation,
      this.fixedAttachment,
      this.fixedCodeableConcept,
      this.fixedCodeableReference,
      this.fixedCoding,
      this.fixedContactPoint,
      this.fixedCount,
      this.fixedDistance,
      this.fixedDuration,
      this.fixedHumanName,
      this.fixedIdentifier,
      this.fixedMoney,
      this.fixedPeriod,
      this.fixedQuantity,
      this.fixedRange,
      this.fixedRatio,
      this.fixedRatioRange,
      this.fixedReference,
      this.fixedSampledData,
      this.fixedSignature,
      this.fixedTiming,
      this.fixedContactDetail,
      this.fixedContributor,
      this.fixedDataRequirement,
      this.fixedExpression,
      this.fixedParameterDefinition,
      this.fixedRelatedArtifact,
      this.fixedTriggerDefinition,
      this.fixedUsageContext,
      this.fixedDosage,
      this.patternBase64Binary,
      @JsonKey(name: '_patternBase64Binary') this.patternBase64BinaryElement,
      this.patternBoolean,
      @JsonKey(name: '_patternBoolean') this.patternBooleanElement,
      this.patternCanonical,
      @JsonKey(name: '_patternCanonical') this.patternCanonicalElement,
      this.patternCode,
      @JsonKey(name: '_patternCode') this.patternCodeElement,
      this.patternDate,
      @JsonKey(name: '_patternDate') this.patternDateElement,
      this.patternDateTime,
      @JsonKey(name: '_patternDateTime') this.patternDateTimeElement,
      this.patternDecimal,
      @JsonKey(name: '_patternDecimal') this.patternDecimalElement,
      this.patternId,
      @JsonKey(name: '_patternId') this.patternIdElement,
      this.patternInstant,
      @JsonKey(name: '_patternInstant') this.patternInstantElement,
      this.patternInteger,
      @JsonKey(name: '_patternInteger') this.patternIntegerElement,
      this.patternMarkdown,
      @JsonKey(name: '_patternMarkdown') this.patternMarkdownElement,
      this.patternOid,
      @JsonKey(name: '_patternOid') this.patternOidElement,
      this.patternPositiveInt,
      @JsonKey(name: '_patternPositiveInt') this.patternPositiveIntElement,
      this.patternString,
      @JsonKey(name: '_patternString') this.patternStringElement,
      this.patternTime,
      @JsonKey(name: '_patternTime') this.patternTimeElement,
      this.patternUnsignedInt,
      @JsonKey(name: '_patternUnsignedInt') this.patternUnsignedIntElement,
      this.patternUri,
      @JsonKey(name: '_patternUri') this.patternUriElement,
      this.patternUrl,
      @JsonKey(name: '_patternUrl') this.patternUrlElement,
      this.patternUuid,
      @JsonKey(name: '_patternUuid') this.patternUuidElement,
      this.patternAddress,
      this.patternAge,
      this.patternAnnotation,
      this.patternAttachment,
      this.patternCodeableConcept,
      this.patternCodeableReference,
      this.patternCoding,
      this.patternContactPoint,
      this.patternCount,
      this.patternDistance,
      this.patternDuration,
      this.patternHumanName,
      this.patternIdentifier,
      this.patternMoney,
      this.patternPeriod,
      this.patternQuantity,
      this.patternRange,
      this.patternRatio,
      this.patternRatioRange,
      this.patternReference,
      this.patternSampledData,
      this.patternSignature,
      this.patternTiming,
      this.patternContactDetail,
      this.patternContributor,
      this.patternDataRequirement,
      this.patternExpression,
      this.patternParameterDefinition,
      this.patternRelatedArtifact,
      this.patternTriggerDefinition,
      this.patternUsageContext,
      this.patternDosage,
      final List<ElementDefinitionExample>? example,
      this.minValueDate,
      @JsonKey(name: '_minValueDate') this.minValueDateElement,
      this.minValueDateTime,
      @JsonKey(name: '_minValueDateTime') this.minValueDateTimeElement,
      this.minValueInstant,
      @JsonKey(name: '_minValueInstant') this.minValueInstantElement,
      this.minValueTime,
      @JsonKey(name: '_minValueTime') this.minValueTimeElement,
      this.minValueDecimal,
      @JsonKey(name: '_minValueDecimal') this.minValueDecimalElement,
      this.minValueInteger,
      @JsonKey(name: '_minValueInteger') this.minValueIntegerElement,
      this.minValuePositiveInt,
      @JsonKey(name: '_minValuePositiveInt') this.minValuePositiveIntElement,
      this.minValueUnsignedInt,
      @JsonKey(name: '_minValueUnsignedInt') this.minValueUnsignedIntElement,
      this.minValueQuantity,
      this.maxValueDate,
      @JsonKey(name: '_maxValueDate') this.maxValueDateElement,
      this.maxValueDateTime,
      @JsonKey(name: '_maxValueDateTime') this.maxValueDateTimeElement,
      this.maxValueInstant,
      @JsonKey(name: '_maxValueInstant') this.maxValueInstantElement,
      this.maxValueTime,
      @JsonKey(name: '_maxValueTime') this.maxValueTimeElement,
      this.maxValueDecimal,
      @JsonKey(name: '_maxValueDecimal') this.maxValueDecimalElement,
      this.maxValueInteger,
      @JsonKey(name: '_maxValueInteger') this.maxValueIntegerElement,
      this.maxValuePositiveInt,
      @JsonKey(name: '_maxValuePositiveInt') this.maxValuePositiveIntElement,
      this.maxValueUnsignedInt,
      @JsonKey(name: '_maxValueUnsignedInt') this.maxValueUnsignedIntElement,
      this.maxValueQuantity,
      this.maxLength,
      @JsonKey(name: '_maxLength') this.maxLengthElement,
      final List<FhirId>? condition,
      @JsonKey(name: '_condition')
      final List<PrimitiveElement>? conditionElement,
      final List<ElementDefinitionConstraint>? constraint,
      this.mustSupport,
      @JsonKey(name: '_mustSupport') this.mustSupportElement,
      this.isModifier,
      @JsonKey(name: '_isModifier') this.isModifierElement,
      this.isModifierReason,
      @JsonKey(name: '_isModifierReason') this.isModifierReasonElement,
      this.isSummary,
      @JsonKey(name: '_isSummary') this.isSummaryElement,
      this.binding,
      final List<ElementDefinitionMapping>? mapping})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _representation = representation,
        _representationElement = representationElement,
        _code = code,
        _alias = alias,
        _aliasElement = aliasElement,
        _type = type,
        _example = example,
        _condition = condition,
        _conditionElement = conditionElement,
        _constraint = constraint,
        _mapping = mapping,
        super._();

  factory _$ElementDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElementDefinitionImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [path] The path identifies the element and is expressed as a
  /// "."-separated list of ancestor elements, beginning with the name of the
  ///  resource or extension.
  @override
  final String? path;

  /// [pathElement] Extensions for path
  @override
  @JsonKey(name: '_path')
  final PrimitiveElement? pathElement;

  /// [representation] Codes that define how this element is represented in
  ///  instances, when the deviation varies from the normal case.
  final List<ElementDefinitionRepresentation>? _representation;

  /// [representation] Codes that define how this element is represented in
  ///  instances, when the deviation varies from the normal case.
  @override
  List<ElementDefinitionRepresentation>? get representation {
    final value = _representation;
    if (value == null) return null;
    if (_representation is EqualUnmodifiableListView) return _representation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [representationElement] Extensions for representation
  final List<PrimitiveElement>? _representationElement;

  /// [representationElement] Extensions for representation
  @override
  @JsonKey(name: '_representation')
  List<PrimitiveElement>? get representationElement {
    final value = _representationElement;
    if (value == null) return null;
    if (_representationElement is EqualUnmodifiableListView)
      return _representationElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [sliceName] The name of this element definition slice, when slicing is
  /// working. The name must be a token with no dots or spaces. This is a unique
  /// name referring to a specific set of constraints applied to this element,
  ///  used to provide a name to different slices of the same element.
  @override
  final String? sliceName;

  /// [sliceNameElement] Extensions for sliceName
  @override
  @JsonKey(name: '_sliceName')
  final PrimitiveElement? sliceNameElement;

  /// [sliceIsConstraining] If true, indicates that this slice definition is
  /// constraining a slice definition with the same name in an inherited
  /// profile. If false, the slice is not overriding any slice in an inherited
  /// profile. If missing, the slice might or might not be overriding a slice in
  ///  an inherited profile, depending on the sliceName.
  @override
  final FhirBoolean? sliceIsConstraining;

  /// [sliceIsConstrainingElement] Extensions for sliceIsConstraining
  @override
  @JsonKey(name: '_sliceIsConstraining')
  final PrimitiveElement? sliceIsConstrainingElement;

  /// [label] A single preferred label which is the text to display beside the
  /// element indicating its meaning or to use to prompt for the element in a
  ///  user display or form.
  @override
  final String? label;

  /// [labelElement] Extensions for label
  @override
  @JsonKey(name: '_label')
  final PrimitiveElement? labelElement;

  /// [code] A code that has the same meaning as the element in a particular
  ///  terminology.
  final List<Coding>? _code;

  /// [code] A code that has the same meaning as the element in a particular
  ///  terminology.
  @override
  List<Coding>? get code {
    final value = _code;
    if (value == null) return null;
    if (_code is EqualUnmodifiableListView) return _code;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [slicing] Indicates that the element is sliced into a set of alternative
  /// definitions (i.e. in a structure definition, there are multiple different
  /// constraints on a single element in the base resource). Slicing can be used
  /// in any resource that has cardinality ..* on the base resource, or any
  /// resource with a choice of types. The set of slices is any elements that
  /// come after this in the element sequence that have the same path, until a
  ///  shorter path occurs (the shorter path terminates the set).
  @override
  final ElementDefinitionSlicing? slicing;

  /// [short] A concise description of what this element means (e.g. for use in
  ///  autogenerated summaries).
  @override
  final String? short;

  /// [shortElement] Extensions for short
  @override
  @JsonKey(name: '_short')
  final PrimitiveElement? shortElement;

  /// [definition] Provides a complete explanation of the meaning of the data
  /// element for human readability.  For the case of elements derived from
  /// existing elements (e.g. constraints), the definition SHALL be consistent
  /// with the base definition, but convey the meaning of the element in the
  /// particular context of use of the resource. (Note: The text you are reading
  ///  is specified in ElementDefinition.definition).
  @override
  final FhirMarkdown? definition;

  /// [definitionElement] Extensions for definition
  @override
  @JsonKey(name: '_definition')
  final PrimitiveElement? definitionElement;

  /// [comment] Explanatory notes and implementation guidance about the data
  /// element, including notes about how to use the data properly, exceptions to
  /// proper use, etc. (Note: The text you are reading is specified in
  ///  ElementDefinition.comment).
  @override
  final FhirMarkdown? comment;

  /// [commentElement] Extensions for comment
  @override
  @JsonKey(name: '_comment')
  final PrimitiveElement? commentElement;

  /// [requirements] This element is for traceability of why the element was
  /// created and why the constraints exist as they do. This may be used to
  /// point to source materials or specifications that drove the structure of
  ///  this element.
  @override
  final FhirMarkdown? requirements;

  /// [requirementsElement] Extensions for requirements
  @override
  @JsonKey(name: '_requirements')
  final PrimitiveElement? requirementsElement;

  /// [alias] Identifies additional names by which this element might also be
  ///  known.
  final List<String>? _alias;

  /// [alias] Identifies additional names by which this element might also be
  ///  known.
  @override
  List<String>? get alias {
    final value = _alias;
    if (value == null) return null;
    if (_alias is EqualUnmodifiableListView) return _alias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [aliasElement] Extensions for alias
  final List<PrimitiveElement>? _aliasElement;

  /// [aliasElement] Extensions for alias
  @override
  @JsonKey(name: '_alias')
  List<PrimitiveElement>? get aliasElement {
    final value = _aliasElement;
    if (value == null) return null;
    if (_aliasElement is EqualUnmodifiableListView) return _aliasElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [min] The minimum number of times this element SHALL appear in the
  ///  instance.
  @override
  final FhirUnsignedInt? min;

  /// [minElement] Extensions for min
  @override
  @JsonKey(name: '_min')
  final PrimitiveElement? minElement;

  /// [max] The maximum number of times this element is permitted to appear in
  ///  the instance.
  @override
  final String? max;

  /// [maxElement] Extensions for max
  @override
  @JsonKey(name: '_max')
  final PrimitiveElement? maxElement;

  /// [base] Information about the base definition of the element, provided to
  /// make it unnecessary for tools to trace the deviation of the element
  /// through the derived and related profiles. When the element definition is
  /// not the original definition of an element - i.g. either in a constraint on
  /// another type, or for elements from a super type in a snap shot - then the
  /// information in provided in the element definition may be different to the
  /// base definition. On the original definition of the element, it will be
  ///  same.
  @override
  final ElementDefinitionBase? base;

  /// [contentReference] Identifies an element defined elsewhere in the
  /// definition whose content rules should be applied to the current element.
  /// ContentReferences bring across all the rules that are in the
  /// ElementDefinition for the element, including definitions, cardinality
  ///  constraints, bindings, invariants etc.
  @override
  final FhirUri? contentReference;

  /// [contentReferenceElement] Extensions for contentReference
  @override
  @JsonKey(name: '_contentReference')
  final PrimitiveElement? contentReferenceElement;

  /// [type] The data type or resource that the value of this element is
  ///  permitted to be.
  final List<ElementDefinitionType>? _type;

  /// [type] The data type or resource that the value of this element is
  ///  permitted to be.
  @override
  List<ElementDefinitionType>? get type {
    final value = _type;
    if (value == null) return null;
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [defaultValueBase64Binary] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final FhirBase64Binary? defaultValueBase64Binary;
  @override
  @JsonKey(name: '_defaultValueBase64Binary')
  final PrimitiveElement? defaultValueBase64BinaryElement;

  /// [defaultValueBoolean] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final FhirBoolean? defaultValueBoolean;

  /// [defaultValueBooleanElement] Extensions for defaultValueBoolean
  @override
  @JsonKey(name: '_defaultValueBoolean')
  final PrimitiveElement? defaultValueBooleanElement;

  /// [defaultValueCanonical] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final FhirCanonical? defaultValueCanonical;
  @override
  @JsonKey(name: '_defaultValueCanonical')
  final PrimitiveElement? defaultValueCanonicalElement;

  /// [defaultValueCode] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final FhirCode? defaultValueCode;

  /// [defaultValueCodeElement] Extensions for defaultValueCode
  @override
  @JsonKey(name: '_defaultValueCode')
  final PrimitiveElement? defaultValueCodeElement;

  /// [defaultValueDate] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final FhirDate? defaultValueDate;

  /// [defaultValueDateElement] Extensions for defaultValueDate
  @override
  @JsonKey(name: '_defaultValueDate')
  final PrimitiveElement? defaultValueDateElement;

  /// [defaultValueDateTime] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final FhirDateTime? defaultValueDateTime;
  @override
  @JsonKey(name: '_defaultValueDateTime')
  final PrimitiveElement? defaultValueDateTimeElement;

  /// [defaultValueDecimal] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final FhirDecimal? defaultValueDecimal;

  /// [defaultValueDecimalElement] Extensions for defaultValueDecimal
  @override
  @JsonKey(name: '_defaultValueDecimal')
  final PrimitiveElement? defaultValueDecimalElement;

  /// [defaultValueId] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final FhirId? defaultValueId;

  /// [defaultValueIdElement] Extensions for defaultValueId
  @override
  @JsonKey(name: '_defaultValueId')
  final PrimitiveElement? defaultValueIdElement;

  /// [defaultValueInstant] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final FhirInstant? defaultValueInstant;

  /// [defaultValueInstantElement] Extensions for defaultValueInstant
  @override
  @JsonKey(name: '_defaultValueInstant')
  final PrimitiveElement? defaultValueInstantElement;

  /// [defaultValueInteger] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final FhirInteger? defaultValueInteger;

  /// [defaultValueIntegerElement] Extensions for defaultValueInteger
  @override
  @JsonKey(name: '_defaultValueInteger')
  final PrimitiveElement? defaultValueIntegerElement;

  /// [defaultValueMarkdown] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final FhirMarkdown? defaultValueMarkdown;
  @override
  @JsonKey(name: '_defaultValueMarkdown')
  final PrimitiveElement? defaultValueMarkdownElement;

  /// [defaultValueOid] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final FhirOid? defaultValueOid;

  /// [defaultValueOidElement] Extensions for defaultValueOid
  @override
  @JsonKey(name: '_defaultValueOid')
  final PrimitiveElement? defaultValueOidElement;

  /// [defaultValuePositiveInt] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final FhirPositiveInt? defaultValuePositiveInt;
  @override
  @JsonKey(name: '_defaultValuePositiveInt')
  final PrimitiveElement? defaultValuePositiveIntElement;

  /// [defaultValueString] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final String? defaultValueString;

  /// [defaultValueStringElement] Extensions for defaultValueString
  @override
  @JsonKey(name: '_defaultValueString')
  final PrimitiveElement? defaultValueStringElement;

  /// [defaultValueTime] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final FhirTime? defaultValueTime;

  /// [defaultValueTimeElement] Extensions for defaultValueTime
  @override
  @JsonKey(name: '_defaultValueTime')
  final PrimitiveElement? defaultValueTimeElement;

  /// [defaultValueUnsignedInt] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final FhirUnsignedInt? defaultValueUnsignedInt;
  @override
  @JsonKey(name: '_defaultValueUnsignedInt')
  final PrimitiveElement? defaultValueUnsignedIntElement;

  /// [defaultValueUri] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final FhirUri? defaultValueUri;

  /// [defaultValueUriElement] Extensions for defaultValueUri
  @override
  @JsonKey(name: '_defaultValueUri')
  final PrimitiveElement? defaultValueUriElement;

  /// [defaultValueUrl] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final FhirUrl? defaultValueUrl;

  /// [defaultValueUrlElement] Extensions for defaultValueUrl
  @override
  @JsonKey(name: '_defaultValueUrl')
  final PrimitiveElement? defaultValueUrlElement;

  /// [defaultValueUuid] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final FhirUuid? defaultValueUuid;

  /// [defaultValueUuidElement] Extensions for defaultValueUuid
  @override
  @JsonKey(name: '_defaultValueUuid')
  final PrimitiveElement? defaultValueUuidElement;

  /// [defaultValueAddress] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final Address? defaultValueAddress;

  /// [defaultValueAge] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final Age? defaultValueAge;

  /// [defaultValueAnnotation] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final Annotation? defaultValueAnnotation;

  /// [defaultValueAttachment] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final Attachment? defaultValueAttachment;

  /// [defaultValueCodeableConcept] The value that should be used if there is
  /// no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final CodeableConcept? defaultValueCodeableConcept;
  @override
  final CodeableReference? defaultValueCodeableReference;

  /// [defaultValueCoding] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final Coding? defaultValueCoding;

  /// [defaultValueContactPoint] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final ContactPoint? defaultValueContactPoint;

  /// [defaultValueCount] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final Count? defaultValueCount;

  /// [defaultValueDistance] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final Distance? defaultValueDistance;

  /// [defaultValueDuration] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final FhirDuration? defaultValueDuration;

  /// [defaultValueHumanName] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final HumanName? defaultValueHumanName;

  /// [defaultValueIdentifier] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final Identifier? defaultValueIdentifier;

  /// [defaultValueMoney] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final Money? defaultValueMoney;

  /// [defaultValuePeriod] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final Period? defaultValuePeriod;

  /// [defaultValueQuantity] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final Quantity? defaultValueQuantity;

  /// [defaultValueRange] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final Range? defaultValueRange;

  /// [defaultValueRatio] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final Ratio? defaultValueRatio;
  @override
  final RatioRange? defaultValueRatioRange;

  /// [defaultValueReference] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final Reference? defaultValueReference;

  /// [defaultValueSampledData] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final SampledData? defaultValueSampledData;

  /// [defaultValueSignature] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final Signature? defaultValueSignature;

  /// [defaultValueTiming] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final Timing? defaultValueTiming;

  /// [defaultValueContactDetail] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final ContactDetail? defaultValueContactDetail;

  /// [defaultValueContributor] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final Contributor? defaultValueContributor;

  /// [defaultValueDataRequirement] The value that should be used if there is
  /// no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final DataRequirement? defaultValueDataRequirement;

  /// [defaultValueExpression] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final FhirExpression? defaultValueExpression;

  /// [defaultValueParameterDefinition] The value that should be used if there
  /// is no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final ParameterDefinition? defaultValueParameterDefinition;

  /// [defaultValueRelatedArtifact] The value that should be used if there is
  /// no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final RelatedArtifact? defaultValueRelatedArtifact;

  /// [defaultValueTriggerDefinition] The value that should be used if there is
  /// no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final TriggerDefinition? defaultValueTriggerDefinition;

  /// [defaultValueUsageContext] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  final UsageContext? defaultValueUsageContext;

  /// [defaultValueDosage] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  final Dosage? defaultValueDosage;

  /// [meaningWhenMissing] The Implicit meaning that is to be understood when
  /// this element is missing (e.g. 'when this element is missing, the period is
  ///  ongoing').
  @override
  final FhirMarkdown? meaningWhenMissing;

  /// [meaningWhenMissingElement] Extensions for meaningWhenMissing
  @override
  @JsonKey(name: '_meaningWhenMissing')
  final PrimitiveElement? meaningWhenMissingElement;

  /// [orderMeaning] If present, indicates that the order of the repeating
  /// element has meaning and describes what that meaning is.  If absent, it
  ///  means that the order of the element has no meaning.
  @override
  final String? orderMeaning;

  /// [orderMeaningElement] Extensions for orderMeaning
  @override
  @JsonKey(name: '_orderMeaning')
  final PrimitiveElement? orderMeaningElement;

  /// [fixedBase64Binary] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  final FhirBase64Binary? fixedBase64Binary;

  /// [fixedBase64BinaryElement] Extensions for fixedBase64Binary
  @override
  @JsonKey(name: '_fixedBase64Binary')
  final PrimitiveElement? fixedBase64BinaryElement;

  /// [fixedBoolean] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirBoolean? fixedBoolean;

  /// [fixedBooleanElement] Extensions for fixedBoolean
  @override
  @JsonKey(name: '_fixedBoolean')
  final PrimitiveElement? fixedBooleanElement;

  /// [fixedCanonical] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirCanonical? fixedCanonical;

  /// [fixedCanonicalElement] Extensions for fixedCanonical
  @override
  @JsonKey(name: '_fixedCanonical')
  final PrimitiveElement? fixedCanonicalElement;

  /// [fixedCode] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirCode? fixedCode;

  /// [fixedCodeElement] Extensions for fixedCode
  @override
  @JsonKey(name: '_fixedCode')
  final PrimitiveElement? fixedCodeElement;

  /// [fixedDate] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirDate? fixedDate;

  /// [fixedDateElement] Extensions for fixedDate
  @override
  @JsonKey(name: '_fixedDate')
  final PrimitiveElement? fixedDateElement;

  /// [fixedDateTime] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirDateTime? fixedDateTime;

  /// [fixedDateTimeElement] Extensions for fixedDateTime
  @override
  @JsonKey(name: '_fixedDateTime')
  final PrimitiveElement? fixedDateTimeElement;

  /// [fixedDecimal] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirDecimal? fixedDecimal;

  /// [fixedDecimalElement] Extensions for fixedDecimal
  @override
  @JsonKey(name: '_fixedDecimal')
  final PrimitiveElement? fixedDecimalElement;

  /// [fixedId] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirId? fixedId;

  /// [fixedIdElement] Extensions for fixedId
  @override
  @JsonKey(name: '_fixedId')
  final PrimitiveElement? fixedIdElement;

  /// [fixedInstant] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirInstant? fixedInstant;

  /// [fixedInstantElement] Extensions for fixedInstant
  @override
  @JsonKey(name: '_fixedInstant')
  final PrimitiveElement? fixedInstantElement;

  /// [fixedInteger] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirInteger? fixedInteger;

  /// [fixedIntegerElement] Extensions for fixedInteger
  @override
  @JsonKey(name: '_fixedInteger')
  final PrimitiveElement? fixedIntegerElement;

  /// [fixedMarkdown] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirMarkdown? fixedMarkdown;

  /// [fixedMarkdownElement] Extensions for fixedMarkdown
  @override
  @JsonKey(name: '_fixedMarkdown')
  final PrimitiveElement? fixedMarkdownElement;

  /// [fixedOid] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirOid? fixedOid;

  /// [fixedOidElement] Extensions for fixedOid
  @override
  @JsonKey(name: '_fixedOid')
  final PrimitiveElement? fixedOidElement;

  /// [fixedPositiveInt] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirPositiveInt? fixedPositiveInt;

  /// [fixedPositiveIntElement] Extensions for fixedPositiveInt
  @override
  @JsonKey(name: '_fixedPositiveInt')
  final PrimitiveElement? fixedPositiveIntElement;

  /// [fixedString] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final String? fixedString;

  /// [fixedStringElement] Extensions for fixedString
  @override
  @JsonKey(name: '_fixedString')
  final PrimitiveElement? fixedStringElement;

  /// [fixedTime] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirTime? fixedTime;

  /// [fixedTimeElement] Extensions for fixedTime
  @override
  @JsonKey(name: '_fixedTime')
  final PrimitiveElement? fixedTimeElement;

  /// [fixedUnsignedInt] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirUnsignedInt? fixedUnsignedInt;

  /// [fixedUnsignedIntElement] Extensions for fixedUnsignedInt
  @override
  @JsonKey(name: '_fixedUnsignedInt')
  final PrimitiveElement? fixedUnsignedIntElement;

  /// [fixedUri] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirUri? fixedUri;

  /// [fixedUriElement] Extensions for fixedUri
  @override
  @JsonKey(name: '_fixedUri')
  final PrimitiveElement? fixedUriElement;

  /// [fixedUrl] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirUrl? fixedUrl;

  /// [fixedUrlElement] Extensions for fixedUrl
  @override
  @JsonKey(name: '_fixedUrl')
  final PrimitiveElement? fixedUrlElement;

  /// [fixedUuid] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirUuid? fixedUuid;

  /// [fixedUuidElement] Extensions for fixedUuid
  @override
  @JsonKey(name: '_fixedUuid')
  final PrimitiveElement? fixedUuidElement;

  /// [fixedAddress] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Address? fixedAddress;

  /// [fixedAge] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Age? fixedAge;

  /// [fixedAnnotation] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Annotation? fixedAnnotation;

  /// [fixedAttachment] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Attachment? fixedAttachment;

  /// [fixedCodeableConcept] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  final CodeableConcept? fixedCodeableConcept;
  @override
  final CodeableReference? fixedCodeableReference;

  /// [fixedCoding] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Coding? fixedCoding;

  /// [fixedContactPoint] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  final ContactPoint? fixedContactPoint;

  /// [fixedCount] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Count? fixedCount;

  /// [fixedDistance] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Distance? fixedDistance;

  /// [fixedDuration] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirDuration? fixedDuration;

  /// [fixedHumanName] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final HumanName? fixedHumanName;

  /// [fixedIdentifier] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Identifier? fixedIdentifier;

  /// [fixedMoney] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Money? fixedMoney;

  /// [fixedPeriod] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Period? fixedPeriod;

  /// [fixedQuantity] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Quantity? fixedQuantity;

  /// [fixedRange] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Range? fixedRange;

  /// [fixedRatio] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Ratio? fixedRatio;
  @override
  final RatioRange? fixedRatioRange;

  /// [fixedReference] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Reference? fixedReference;

  /// [fixedSampledData] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final SampledData? fixedSampledData;

  /// [fixedSignature] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Signature? fixedSignature;

  /// [fixedTiming] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Timing? fixedTiming;

  /// [fixedContactDetail] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  final ContactDetail? fixedContactDetail;

  /// [fixedContributor] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Contributor? fixedContributor;

  /// [fixedDataRequirement] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  final DataRequirement? fixedDataRequirement;

  /// [fixedExpression] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final FhirExpression? fixedExpression;

  /// [fixedParameterDefinition] Specifies a value that SHALL be exactly the
  /// value  for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  final ParameterDefinition? fixedParameterDefinition;

  /// [fixedRelatedArtifact] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  final RelatedArtifact? fixedRelatedArtifact;

  /// [fixedTriggerDefinition] Specifies a value that SHALL be exactly the
  /// value  for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  final TriggerDefinition? fixedTriggerDefinition;

  /// [fixedUsageContext] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  final UsageContext? fixedUsageContext;

  /// [fixedDosage] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  final Dosage? fixedDosage;

  /// [patternBase64Binary] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirBase64Binary? patternBase64Binary;

  /// [patternBase64BinaryElement] Extensions for patternBase64Binary
  @override
  @JsonKey(name: '_patternBase64Binary')
  final PrimitiveElement? patternBase64BinaryElement;

  /// [patternBoolean] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirBoolean? patternBoolean;

  /// [patternBooleanElement] Extensions for patternBoolean
  @override
  @JsonKey(name: '_patternBoolean')
  final PrimitiveElement? patternBooleanElement;

  /// [patternCanonical] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirCanonical? patternCanonical;

  /// [patternCanonicalElement] Extensions for patternCanonical
  @override
  @JsonKey(name: '_patternCanonical')
  final PrimitiveElement? patternCanonicalElement;

  /// [patternCode] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirCode? patternCode;

  /// [patternCodeElement] Extensions for patternCode
  @override
  @JsonKey(name: '_patternCode')
  final PrimitiveElement? patternCodeElement;

  /// [patternDate] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirDate? patternDate;

  /// [patternDateElement] Extensions for patternDate
  @override
  @JsonKey(name: '_patternDate')
  final PrimitiveElement? patternDateElement;

  /// [patternDateTime] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirDateTime? patternDateTime;

  /// [patternDateTimeElement] Extensions for patternDateTime
  @override
  @JsonKey(name: '_patternDateTime')
  final PrimitiveElement? patternDateTimeElement;

  /// [patternDecimal] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirDecimal? patternDecimal;

  /// [patternDecimalElement] Extensions for patternDecimal
  @override
  @JsonKey(name: '_patternDecimal')
  final PrimitiveElement? patternDecimalElement;

  /// [patternId] Specifies a value that the value in the instance SHALL follow
  /// - that is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  ///  example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirId? patternId;

  /// [patternIdElement] Extensions for patternId
  @override
  @JsonKey(name: '_patternId')
  final PrimitiveElement? patternIdElement;

  /// [patternInstant] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirInstant? patternInstant;

  /// [patternInstantElement] Extensions for patternInstant
  @override
  @JsonKey(name: '_patternInstant')
  final PrimitiveElement? patternInstantElement;

  /// [patternInteger] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirInteger? patternInteger;

  /// [patternIntegerElement] Extensions for patternInteger
  @override
  @JsonKey(name: '_patternInteger')
  final PrimitiveElement? patternIntegerElement;

  /// [patternMarkdown] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirMarkdown? patternMarkdown;

  /// [patternMarkdownElement] Extensions for patternMarkdown
  @override
  @JsonKey(name: '_patternMarkdown')
  final PrimitiveElement? patternMarkdownElement;

  /// [patternOid] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirOid? patternOid;

  /// [patternOidElement] Extensions for patternOid
  @override
  @JsonKey(name: '_patternOid')
  final PrimitiveElement? patternOidElement;

  /// [patternPositiveInt] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirPositiveInt? patternPositiveInt;

  /// [patternPositiveIntElement] Extensions for patternPositiveInt
  @override
  @JsonKey(name: '_patternPositiveInt')
  final PrimitiveElement? patternPositiveIntElement;

  /// [patternString] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final String? patternString;

  /// [patternStringElement] Extensions for patternString
  @override
  @JsonKey(name: '_patternString')
  final PrimitiveElement? patternStringElement;

  /// [patternTime] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirTime? patternTime;

  /// [patternTimeElement] Extensions for patternTime
  @override
  @JsonKey(name: '_patternTime')
  final PrimitiveElement? patternTimeElement;

  /// [patternUnsignedInt] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirUnsignedInt? patternUnsignedInt;

  /// [patternUnsignedIntElement] Extensions for patternUnsignedInt
  @override
  @JsonKey(name: '_patternUnsignedInt')
  final PrimitiveElement? patternUnsignedIntElement;

  /// [patternUri] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirUri? patternUri;

  /// [patternUriElement] Extensions for patternUri
  @override
  @JsonKey(name: '_patternUri')
  final PrimitiveElement? patternUriElement;

  /// [patternUrl] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirUrl? patternUrl;

  /// [patternUrlElement] Extensions for patternUrl
  @override
  @JsonKey(name: '_patternUrl')
  final PrimitiveElement? patternUrlElement;

  /// [patternUuid] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirUuid? patternUuid;

  /// [patternUuidElement] Extensions for patternUuid
  @override
  @JsonKey(name: '_patternUuid')
  final PrimitiveElement? patternUuidElement;

  /// [patternAddress] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Address? patternAddress;

  /// [patternAge] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Age? patternAge;

  /// [patternAnnotation] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Annotation? patternAnnotation;

  /// [patternAttachment] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Attachment? patternAttachment;

  /// [patternCodeableConcept] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final CodeableConcept? patternCodeableConcept;
  @override
  final CodeableReference? patternCodeableReference;

  /// [patternCoding] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Coding? patternCoding;

  /// [patternContactPoint] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final ContactPoint? patternContactPoint;

  /// [patternCount] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Count? patternCount;

  /// [patternDistance] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Distance? patternDistance;

  /// [patternDuration] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirDuration? patternDuration;

  /// [patternHumanName] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final HumanName? patternHumanName;

  /// [patternIdentifier] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Identifier? patternIdentifier;

  /// [patternMoney] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Money? patternMoney;

  /// [patternPeriod] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Period? patternPeriod;

  /// [patternQuantity] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Quantity? patternQuantity;

  /// [patternRange] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Range? patternRange;

  /// [patternRatio] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Ratio? patternRatio;
  @override
  final RatioRange? patternRatioRange;

  /// [patternReference] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Reference? patternReference;

  /// [patternSampledData] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final SampledData? patternSampledData;

  /// [patternSignature] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Signature? patternSignature;

  /// [patternTiming] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Timing? patternTiming;

  /// [patternContactDetail] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final ContactDetail? patternContactDetail;

  /// [patternContributor] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Contributor? patternContributor;

  /// [patternDataRequirement] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final DataRequirement? patternDataRequirement;

  /// [patternExpression] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final FhirExpression? patternExpression;

  /// [patternParameterDefinition] Specifies a value that the value in the
  /// instance SHALL follow - that is, any value in the pattern must be found in
  /// the instance. Other additional values may be found too. This is
  ///  effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final ParameterDefinition? patternParameterDefinition;

  /// [patternRelatedArtifact] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final RelatedArtifact? patternRelatedArtifact;

  /// [patternTriggerDefinition] Specifies a value that the value in the
  /// instance SHALL follow - that is, any value in the pattern must be found in
  /// the instance. Other additional values may be found too. This is
  ///  effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final TriggerDefinition? patternTriggerDefinition;

  /// [patternUsageContext] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final UsageContext? patternUsageContext;

  /// [patternDosage] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  final Dosage? patternDosage;

  /// [example] A sample value for this element demonstrating the type of
  ///  information that would typically be found in the element.
  final List<ElementDefinitionExample>? _example;

  /// [example] A sample value for this element demonstrating the type of
  ///  information that would typically be found in the element.
  @override
  List<ElementDefinitionExample>? get example {
    final value = _example;
    if (value == null) return null;
    if (_example is EqualUnmodifiableListView) return _example;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [minValueDate] The minimum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  final FhirDate? minValueDate;

  /// [minValueDateElement] Extensions for minValueDate
  @override
  @JsonKey(name: '_minValueDate')
  final PrimitiveElement? minValueDateElement;

  /// [minValueDateTime] The minimum allowed value for the element. The value
  /// is inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  final FhirDateTime? minValueDateTime;

  /// [minValueDateTimeElement] Extensions for minValueDateTime
  @override
  @JsonKey(name: '_minValueDateTime')
  final PrimitiveElement? minValueDateTimeElement;

  /// [minValueInstant] The minimum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  final FhirInstant? minValueInstant;

  /// [minValueInstantElement] Extensions for minValueInstant
  @override
  @JsonKey(name: '_minValueInstant')
  final PrimitiveElement? minValueInstantElement;

  /// [minValueTime] The minimum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  final FhirTime? minValueTime;

  /// [minValueTimeElement] Extensions for minValueTime
  @override
  @JsonKey(name: '_minValueTime')
  final PrimitiveElement? minValueTimeElement;

  /// [minValueDecimal] The minimum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  final FhirDecimal? minValueDecimal;

  /// [minValueDecimalElement] Extensions for minValueDecimal
  @override
  @JsonKey(name: '_minValueDecimal')
  final PrimitiveElement? minValueDecimalElement;

  /// [minValueInteger] The minimum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  final FhirInteger? minValueInteger;

  /// [minValueIntegerElement] Extensions for minValueInteger
  @override
  @JsonKey(name: '_minValueInteger')
  final PrimitiveElement? minValueIntegerElement;

  /// [minValuePositiveInt] The minimum allowed value for the element. The
  /// value is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  @override
  final FhirPositiveInt? minValuePositiveInt;

  /// [minValuePositiveIntElement] Extensions for minValuePositiveInt
  @override
  @JsonKey(name: '_minValuePositiveInt')
  final PrimitiveElement? minValuePositiveIntElement;

  /// [minValueUnsignedInt] The minimum allowed value for the element. The
  /// value is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  @override
  final FhirUnsignedInt? minValueUnsignedInt;

  /// [minValueUnsignedIntElement] Extensions for minValueUnsignedInt
  @override
  @JsonKey(name: '_minValueUnsignedInt')
  final PrimitiveElement? minValueUnsignedIntElement;

  /// [minValueQuantity] The minimum allowed value for the element. The value
  /// is inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  final Quantity? minValueQuantity;

  /// [maxValueDate] The maximum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  final FhirDate? maxValueDate;

  /// [maxValueDateElement] Extensions for maxValueDate
  @override
  @JsonKey(name: '_maxValueDate')
  final PrimitiveElement? maxValueDateElement;

  /// [maxValueDateTime] The maximum allowed value for the element. The value
  /// is inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  final FhirDateTime? maxValueDateTime;

  /// [maxValueDateTimeElement] Extensions for maxValueDateTime
  @override
  @JsonKey(name: '_maxValueDateTime')
  final PrimitiveElement? maxValueDateTimeElement;

  /// [maxValueInstant] The maximum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  final FhirInstant? maxValueInstant;

  /// [maxValueInstantElement] Extensions for maxValueInstant
  @override
  @JsonKey(name: '_maxValueInstant')
  final PrimitiveElement? maxValueInstantElement;

  /// [maxValueTime] The maximum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  final FhirTime? maxValueTime;

  /// [maxValueTimeElement] Extensions for maxValueTime
  @override
  @JsonKey(name: '_maxValueTime')
  final PrimitiveElement? maxValueTimeElement;

  /// [maxValueDecimal] The maximum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  final FhirDecimal? maxValueDecimal;

  /// [maxValueDecimalElement] Extensions for maxValueDecimal
  @override
  @JsonKey(name: '_maxValueDecimal')
  final PrimitiveElement? maxValueDecimalElement;

  /// [maxValueInteger] The maximum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  final FhirInteger? maxValueInteger;

  /// [maxValueIntegerElement] Extensions for maxValueInteger
  @override
  @JsonKey(name: '_maxValueInteger')
  final PrimitiveElement? maxValueIntegerElement;

  /// [maxValuePositiveInt] The maximum allowed value for the element. The
  /// value is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  @override
  final FhirPositiveInt? maxValuePositiveInt;

  /// [maxValuePositiveIntElement] Extensions for maxValuePositiveInt
  @override
  @JsonKey(name: '_maxValuePositiveInt')
  final PrimitiveElement? maxValuePositiveIntElement;

  /// [maxValueUnsignedInt] The maximum allowed value for the element. The
  /// value is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  @override
  final FhirUnsignedInt? maxValueUnsignedInt;

  /// [maxValueUnsignedIntElement] Extensions for maxValueUnsignedInt
  @override
  @JsonKey(name: '_maxValueUnsignedInt')
  final PrimitiveElement? maxValueUnsignedIntElement;

  /// [maxValueQuantity] The maximum allowed value for the element. The value
  /// is inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  final Quantity? maxValueQuantity;

  /// [maxLength] Indicates the maximum length in characters that is permitted
  /// to be present in conformant instances and which is expected to be
  ///  supported by conformant consumers that support the element.
  @override
  final FhirInteger? maxLength;

  /// [maxLengthElement] Extensions for maxLength
  @override
  @JsonKey(name: '_maxLength')
  final PrimitiveElement? maxLengthElement;

  /// [condition] A reference to an invariant that may make additional
  ///  statements about the cardinality or value in the instance.
  final List<FhirId>? _condition;

  /// [condition] A reference to an invariant that may make additional
  ///  statements about the cardinality or value in the instance.
  @override
  List<FhirId>? get condition {
    final value = _condition;
    if (value == null) return null;
    if (_condition is EqualUnmodifiableListView) return _condition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [conditionElement] Extensions for condition
  final List<PrimitiveElement>? _conditionElement;

  /// [conditionElement] Extensions for condition
  @override
  @JsonKey(name: '_condition')
  List<PrimitiveElement>? get conditionElement {
    final value = _conditionElement;
    if (value == null) return null;
    if (_conditionElement is EqualUnmodifiableListView)
      return _conditionElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [constraint] Formal constraints such as co-occurrence and other
  /// constraints that can be computationally evaluated within the context of
  ///  the instance.
  final List<ElementDefinitionConstraint>? _constraint;

  /// [constraint] Formal constraints such as co-occurrence and other
  /// constraints that can be computationally evaluated within the context of
  ///  the instance.
  @override
  List<ElementDefinitionConstraint>? get constraint {
    final value = _constraint;
    if (value == null) return null;
    if (_constraint is EqualUnmodifiableListView) return _constraint;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [mustSupport] If true, implementations that produce or consume resources
  /// SHALL provide "support" for the element in some meaningful way.  If false,
  /// the element may be ignored and not supported. If false, whether to
  /// populate or use the data element in any way is at the discretion of the
  ///  implementation.
  @override
  final FhirBoolean? mustSupport;

  /// [mustSupportElement] Extensions for mustSupport
  @override
  @JsonKey(name: '_mustSupport')
  final PrimitiveElement? mustSupportElement;

  /// [isModifier] If true, the value of this element affects the
  /// interpretation of the element or resource that contains it, and the value
  /// of the element cannot be ignored. Typically, this is used for status,
  /// negation and qualification codes. The effect of this is that the element
  /// cannot be ignored by systems: they SHALL either recognize the element and
  /// process it, and/or a pre-determination has been made that it is not
  ///  relevant to their particular system.
  @override
  final FhirBoolean? isModifier;

  /// [isModifierElement] Extensions for isModifier
  @override
  @JsonKey(name: '_isModifier')
  final PrimitiveElement? isModifierElement;

  /// [isModifierReason] Explains how that element affects the interpretation
  ///  of the resource or element that contains it.
  @override
  final String? isModifierReason;

  /// [isModifierReasonElement] Extensions for isModifierReason
  @override
  @JsonKey(name: '_isModifierReason')
  final PrimitiveElement? isModifierReasonElement;

  /// [isSummary] Whether the element should be included if a client requests a
  ///  search with the parameter _summary=true.
  @override
  final FhirBoolean? isSummary;

  /// [isSummaryElement] Extensions for isSummary
  @override
  @JsonKey(name: '_isSummary')
  final PrimitiveElement? isSummaryElement;

  /// [binding] Binds to a value set if this element is coded (code, Coding,
  ///  CodeableConcept, Quantity), or the data types (string, uri).
  @override
  final ElementDefinitionBinding? binding;

  /// [mapping] Identifies a concept from an external specification that
  ///  roughly corresponds to this element.
  final List<ElementDefinitionMapping>? _mapping;

  /// [mapping] Identifies a concept from an external specification that
  ///  roughly corresponds to this element.
  @override
  List<ElementDefinitionMapping>? get mapping {
    final value = _mapping;
    if (value == null) return null;
    if (_mapping is EqualUnmodifiableListView) return _mapping;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ElementDefinition(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, path: $path, pathElement: $pathElement, representation: $representation, representationElement: $representationElement, sliceName: $sliceName, sliceNameElement: $sliceNameElement, sliceIsConstraining: $sliceIsConstraining, sliceIsConstrainingElement: $sliceIsConstrainingElement, label: $label, labelElement: $labelElement, code: $code, slicing: $slicing, short: $short, shortElement: $shortElement, definition: $definition, definitionElement: $definitionElement, comment: $comment, commentElement: $commentElement, requirements: $requirements, requirementsElement: $requirementsElement, alias: $alias, aliasElement: $aliasElement, min: $min, minElement: $minElement, max: $max, maxElement: $maxElement, base: $base, contentReference: $contentReference, contentReferenceElement: $contentReferenceElement, type: $type, defaultValueBase64Binary: $defaultValueBase64Binary, defaultValueBase64BinaryElement: $defaultValueBase64BinaryElement, defaultValueBoolean: $defaultValueBoolean, defaultValueBooleanElement: $defaultValueBooleanElement, defaultValueCanonical: $defaultValueCanonical, defaultValueCanonicalElement: $defaultValueCanonicalElement, defaultValueCode: $defaultValueCode, defaultValueCodeElement: $defaultValueCodeElement, defaultValueDate: $defaultValueDate, defaultValueDateElement: $defaultValueDateElement, defaultValueDateTime: $defaultValueDateTime, defaultValueDateTimeElement: $defaultValueDateTimeElement, defaultValueDecimal: $defaultValueDecimal, defaultValueDecimalElement: $defaultValueDecimalElement, defaultValueId: $defaultValueId, defaultValueIdElement: $defaultValueIdElement, defaultValueInstant: $defaultValueInstant, defaultValueInstantElement: $defaultValueInstantElement, defaultValueInteger: $defaultValueInteger, defaultValueIntegerElement: $defaultValueIntegerElement, defaultValueMarkdown: $defaultValueMarkdown, defaultValueMarkdownElement: $defaultValueMarkdownElement, defaultValueOid: $defaultValueOid, defaultValueOidElement: $defaultValueOidElement, defaultValuePositiveInt: $defaultValuePositiveInt, defaultValuePositiveIntElement: $defaultValuePositiveIntElement, defaultValueString: $defaultValueString, defaultValueStringElement: $defaultValueStringElement, defaultValueTime: $defaultValueTime, defaultValueTimeElement: $defaultValueTimeElement, defaultValueUnsignedInt: $defaultValueUnsignedInt, defaultValueUnsignedIntElement: $defaultValueUnsignedIntElement, defaultValueUri: $defaultValueUri, defaultValueUriElement: $defaultValueUriElement, defaultValueUrl: $defaultValueUrl, defaultValueUrlElement: $defaultValueUrlElement, defaultValueUuid: $defaultValueUuid, defaultValueUuidElement: $defaultValueUuidElement, defaultValueAddress: $defaultValueAddress, defaultValueAge: $defaultValueAge, defaultValueAnnotation: $defaultValueAnnotation, defaultValueAttachment: $defaultValueAttachment, defaultValueCodeableConcept: $defaultValueCodeableConcept, defaultValueCodeableReference: $defaultValueCodeableReference, defaultValueCoding: $defaultValueCoding, defaultValueContactPoint: $defaultValueContactPoint, defaultValueCount: $defaultValueCount, defaultValueDistance: $defaultValueDistance, defaultValueDuration: $defaultValueDuration, defaultValueHumanName: $defaultValueHumanName, defaultValueIdentifier: $defaultValueIdentifier, defaultValueMoney: $defaultValueMoney, defaultValuePeriod: $defaultValuePeriod, defaultValueQuantity: $defaultValueQuantity, defaultValueRange: $defaultValueRange, defaultValueRatio: $defaultValueRatio, defaultValueRatioRange: $defaultValueRatioRange, defaultValueReference: $defaultValueReference, defaultValueSampledData: $defaultValueSampledData, defaultValueSignature: $defaultValueSignature, defaultValueTiming: $defaultValueTiming, defaultValueContactDetail: $defaultValueContactDetail, defaultValueContributor: $defaultValueContributor, defaultValueDataRequirement: $defaultValueDataRequirement, defaultValueExpression: $defaultValueExpression, defaultValueParameterDefinition: $defaultValueParameterDefinition, defaultValueRelatedArtifact: $defaultValueRelatedArtifact, defaultValueTriggerDefinition: $defaultValueTriggerDefinition, defaultValueUsageContext: $defaultValueUsageContext, defaultValueDosage: $defaultValueDosage, meaningWhenMissing: $meaningWhenMissing, meaningWhenMissingElement: $meaningWhenMissingElement, orderMeaning: $orderMeaning, orderMeaningElement: $orderMeaningElement, fixedBase64Binary: $fixedBase64Binary, fixedBase64BinaryElement: $fixedBase64BinaryElement, fixedBoolean: $fixedBoolean, fixedBooleanElement: $fixedBooleanElement, fixedCanonical: $fixedCanonical, fixedCanonicalElement: $fixedCanonicalElement, fixedCode: $fixedCode, fixedCodeElement: $fixedCodeElement, fixedDate: $fixedDate, fixedDateElement: $fixedDateElement, fixedDateTime: $fixedDateTime, fixedDateTimeElement: $fixedDateTimeElement, fixedDecimal: $fixedDecimal, fixedDecimalElement: $fixedDecimalElement, fixedId: $fixedId, fixedIdElement: $fixedIdElement, fixedInstant: $fixedInstant, fixedInstantElement: $fixedInstantElement, fixedInteger: $fixedInteger, fixedIntegerElement: $fixedIntegerElement, fixedMarkdown: $fixedMarkdown, fixedMarkdownElement: $fixedMarkdownElement, fixedOid: $fixedOid, fixedOidElement: $fixedOidElement, fixedPositiveInt: $fixedPositiveInt, fixedPositiveIntElement: $fixedPositiveIntElement, fixedString: $fixedString, fixedStringElement: $fixedStringElement, fixedTime: $fixedTime, fixedTimeElement: $fixedTimeElement, fixedUnsignedInt: $fixedUnsignedInt, fixedUnsignedIntElement: $fixedUnsignedIntElement, fixedUri: $fixedUri, fixedUriElement: $fixedUriElement, fixedUrl: $fixedUrl, fixedUrlElement: $fixedUrlElement, fixedUuid: $fixedUuid, fixedUuidElement: $fixedUuidElement, fixedAddress: $fixedAddress, fixedAge: $fixedAge, fixedAnnotation: $fixedAnnotation, fixedAttachment: $fixedAttachment, fixedCodeableConcept: $fixedCodeableConcept, fixedCodeableReference: $fixedCodeableReference, fixedCoding: $fixedCoding, fixedContactPoint: $fixedContactPoint, fixedCount: $fixedCount, fixedDistance: $fixedDistance, fixedDuration: $fixedDuration, fixedHumanName: $fixedHumanName, fixedIdentifier: $fixedIdentifier, fixedMoney: $fixedMoney, fixedPeriod: $fixedPeriod, fixedQuantity: $fixedQuantity, fixedRange: $fixedRange, fixedRatio: $fixedRatio, fixedRatioRange: $fixedRatioRange, fixedReference: $fixedReference, fixedSampledData: $fixedSampledData, fixedSignature: $fixedSignature, fixedTiming: $fixedTiming, fixedContactDetail: $fixedContactDetail, fixedContributor: $fixedContributor, fixedDataRequirement: $fixedDataRequirement, fixedExpression: $fixedExpression, fixedParameterDefinition: $fixedParameterDefinition, fixedRelatedArtifact: $fixedRelatedArtifact, fixedTriggerDefinition: $fixedTriggerDefinition, fixedUsageContext: $fixedUsageContext, fixedDosage: $fixedDosage, patternBase64Binary: $patternBase64Binary, patternBase64BinaryElement: $patternBase64BinaryElement, patternBoolean: $patternBoolean, patternBooleanElement: $patternBooleanElement, patternCanonical: $patternCanonical, patternCanonicalElement: $patternCanonicalElement, patternCode: $patternCode, patternCodeElement: $patternCodeElement, patternDate: $patternDate, patternDateElement: $patternDateElement, patternDateTime: $patternDateTime, patternDateTimeElement: $patternDateTimeElement, patternDecimal: $patternDecimal, patternDecimalElement: $patternDecimalElement, patternId: $patternId, patternIdElement: $patternIdElement, patternInstant: $patternInstant, patternInstantElement: $patternInstantElement, patternInteger: $patternInteger, patternIntegerElement: $patternIntegerElement, patternMarkdown: $patternMarkdown, patternMarkdownElement: $patternMarkdownElement, patternOid: $patternOid, patternOidElement: $patternOidElement, patternPositiveInt: $patternPositiveInt, patternPositiveIntElement: $patternPositiveIntElement, patternString: $patternString, patternStringElement: $patternStringElement, patternTime: $patternTime, patternTimeElement: $patternTimeElement, patternUnsignedInt: $patternUnsignedInt, patternUnsignedIntElement: $patternUnsignedIntElement, patternUri: $patternUri, patternUriElement: $patternUriElement, patternUrl: $patternUrl, patternUrlElement: $patternUrlElement, patternUuid: $patternUuid, patternUuidElement: $patternUuidElement, patternAddress: $patternAddress, patternAge: $patternAge, patternAnnotation: $patternAnnotation, patternAttachment: $patternAttachment, patternCodeableConcept: $patternCodeableConcept, patternCodeableReference: $patternCodeableReference, patternCoding: $patternCoding, patternContactPoint: $patternContactPoint, patternCount: $patternCount, patternDistance: $patternDistance, patternDuration: $patternDuration, patternHumanName: $patternHumanName, patternIdentifier: $patternIdentifier, patternMoney: $patternMoney, patternPeriod: $patternPeriod, patternQuantity: $patternQuantity, patternRange: $patternRange, patternRatio: $patternRatio, patternRatioRange: $patternRatioRange, patternReference: $patternReference, patternSampledData: $patternSampledData, patternSignature: $patternSignature, patternTiming: $patternTiming, patternContactDetail: $patternContactDetail, patternContributor: $patternContributor, patternDataRequirement: $patternDataRequirement, patternExpression: $patternExpression, patternParameterDefinition: $patternParameterDefinition, patternRelatedArtifact: $patternRelatedArtifact, patternTriggerDefinition: $patternTriggerDefinition, patternUsageContext: $patternUsageContext, patternDosage: $patternDosage, example: $example, minValueDate: $minValueDate, minValueDateElement: $minValueDateElement, minValueDateTime: $minValueDateTime, minValueDateTimeElement: $minValueDateTimeElement, minValueInstant: $minValueInstant, minValueInstantElement: $minValueInstantElement, minValueTime: $minValueTime, minValueTimeElement: $minValueTimeElement, minValueDecimal: $minValueDecimal, minValueDecimalElement: $minValueDecimalElement, minValueInteger: $minValueInteger, minValueIntegerElement: $minValueIntegerElement, minValuePositiveInt: $minValuePositiveInt, minValuePositiveIntElement: $minValuePositiveIntElement, minValueUnsignedInt: $minValueUnsignedInt, minValueUnsignedIntElement: $minValueUnsignedIntElement, minValueQuantity: $minValueQuantity, maxValueDate: $maxValueDate, maxValueDateElement: $maxValueDateElement, maxValueDateTime: $maxValueDateTime, maxValueDateTimeElement: $maxValueDateTimeElement, maxValueInstant: $maxValueInstant, maxValueInstantElement: $maxValueInstantElement, maxValueTime: $maxValueTime, maxValueTimeElement: $maxValueTimeElement, maxValueDecimal: $maxValueDecimal, maxValueDecimalElement: $maxValueDecimalElement, maxValueInteger: $maxValueInteger, maxValueIntegerElement: $maxValueIntegerElement, maxValuePositiveInt: $maxValuePositiveInt, maxValuePositiveIntElement: $maxValuePositiveIntElement, maxValueUnsignedInt: $maxValueUnsignedInt, maxValueUnsignedIntElement: $maxValueUnsignedIntElement, maxValueQuantity: $maxValueQuantity, maxLength: $maxLength, maxLengthElement: $maxLengthElement, condition: $condition, conditionElement: $conditionElement, constraint: $constraint, mustSupport: $mustSupport, mustSupportElement: $mustSupportElement, isModifier: $isModifier, isModifierElement: $isModifierElement, isModifierReason: $isModifierReason, isModifierReasonElement: $isModifierReasonElement, isSummary: $isSummary, isSummaryElement: $isSummaryElement, binding: $binding, mapping: $mapping)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementDefinitionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.pathElement, pathElement) ||
                other.pathElement == pathElement) &&
            const DeepCollectionEquality()
                .equals(other._representation, _representation) &&
            const DeepCollectionEquality()
                .equals(other._representationElement, _representationElement) &&
            (identical(other.sliceName, sliceName) ||
                other.sliceName == sliceName) &&
            (identical(other.sliceNameElement, sliceNameElement) ||
                other.sliceNameElement == sliceNameElement) &&
            (identical(other.sliceIsConstraining, sliceIsConstraining) ||
                other.sliceIsConstraining == sliceIsConstraining) &&
            (identical(other.sliceIsConstrainingElement, sliceIsConstrainingElement) ||
                other.sliceIsConstrainingElement ==
                    sliceIsConstrainingElement) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.labelElement, labelElement) ||
                other.labelElement == labelElement) &&
            const DeepCollectionEquality().equals(other._code, _code) &&
            (identical(other.slicing, slicing) || other.slicing == slicing) &&
            (identical(other.short, short) || other.short == short) &&
            (identical(other.shortElement, shortElement) ||
                other.shortElement == shortElement) &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            (identical(other.definitionElement, definitionElement) ||
                other.definitionElement == definitionElement) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.commentElement, commentElement) ||
                other.commentElement == commentElement) &&
            (identical(other.requirements, requirements) ||
                other.requirements == requirements) &&
            (identical(other.requirementsElement, requirementsElement) ||
                other.requirementsElement == requirementsElement) &&
            const DeepCollectionEquality().equals(other._alias, _alias) &&
            const DeepCollectionEquality()
                .equals(other._aliasElement, _aliasElement) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.minElement, minElement) ||
                other.minElement == minElement) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.maxElement, maxElement) ||
                other.maxElement == maxElement) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.contentReference, contentReference) ||
                other.contentReference == contentReference) &&
            (identical(other.contentReferenceElement, contentReferenceElement) ||
                other.contentReferenceElement == contentReferenceElement) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            (identical(other.defaultValueBase64Binary, defaultValueBase64Binary) ||
                other.defaultValueBase64Binary == defaultValueBase64Binary) &&
            (identical(other.defaultValueBase64BinaryElement, defaultValueBase64BinaryElement) ||
                other.defaultValueBase64BinaryElement ==
                    defaultValueBase64BinaryElement) &&
            (identical(other.defaultValueBoolean, defaultValueBoolean) ||
                other.defaultValueBoolean == defaultValueBoolean) &&
            (identical(other.defaultValueBooleanElement, defaultValueBooleanElement) ||
                other.defaultValueBooleanElement ==
                    defaultValueBooleanElement) &&
            (identical(other.defaultValueCanonical, defaultValueCanonical) ||
                other.defaultValueCanonical == defaultValueCanonical) &&
            (identical(other.defaultValueCanonicalElement, defaultValueCanonicalElement) ||
                other.defaultValueCanonicalElement ==
                    defaultValueCanonicalElement) &&
            (identical(other.defaultValueCode, defaultValueCode) ||
                other.defaultValueCode == defaultValueCode) &&
            (identical(other.defaultValueCodeElement, defaultValueCodeElement) ||
                other.defaultValueCodeElement == defaultValueCodeElement) &&
            (identical(other.defaultValueDate, defaultValueDate) || other.defaultValueDate == defaultValueDate) &&
            (identical(other.defaultValueDateElement, defaultValueDateElement) || other.defaultValueDateElement == defaultValueDateElement) &&
            (identical(other.defaultValueDateTime, defaultValueDateTime) || other.defaultValueDateTime == defaultValueDateTime) &&
            (identical(other.defaultValueDateTimeElement, defaultValueDateTimeElement) || other.defaultValueDateTimeElement == defaultValueDateTimeElement) &&
            (identical(other.defaultValueDecimal, defaultValueDecimal) || other.defaultValueDecimal == defaultValueDecimal) &&
            (identical(other.defaultValueDecimalElement, defaultValueDecimalElement) || other.defaultValueDecimalElement == defaultValueDecimalElement) &&
            (identical(other.defaultValueId, defaultValueId) || other.defaultValueId == defaultValueId) &&
            (identical(other.defaultValueIdElement, defaultValueIdElement) || other.defaultValueIdElement == defaultValueIdElement) &&
            (identical(other.defaultValueInstant, defaultValueInstant) || other.defaultValueInstant == defaultValueInstant) &&
            (identical(other.defaultValueInstantElement, defaultValueInstantElement) || other.defaultValueInstantElement == defaultValueInstantElement) &&
            (identical(other.defaultValueInteger, defaultValueInteger) || other.defaultValueInteger == defaultValueInteger) &&
            (identical(other.defaultValueIntegerElement, defaultValueIntegerElement) || other.defaultValueIntegerElement == defaultValueIntegerElement) &&
            (identical(other.defaultValueMarkdown, defaultValueMarkdown) || other.defaultValueMarkdown == defaultValueMarkdown) &&
            (identical(other.defaultValueMarkdownElement, defaultValueMarkdownElement) || other.defaultValueMarkdownElement == defaultValueMarkdownElement) &&
            (identical(other.defaultValueOid, defaultValueOid) || other.defaultValueOid == defaultValueOid) &&
            (identical(other.defaultValueOidElement, defaultValueOidElement) || other.defaultValueOidElement == defaultValueOidElement) &&
            (identical(other.defaultValuePositiveInt, defaultValuePositiveInt) || other.defaultValuePositiveInt == defaultValuePositiveInt) &&
            (identical(other.defaultValuePositiveIntElement, defaultValuePositiveIntElement) || other.defaultValuePositiveIntElement == defaultValuePositiveIntElement) &&
            (identical(other.defaultValueString, defaultValueString) || other.defaultValueString == defaultValueString) &&
            (identical(other.defaultValueStringElement, defaultValueStringElement) || other.defaultValueStringElement == defaultValueStringElement) &&
            (identical(other.defaultValueTime, defaultValueTime) || other.defaultValueTime == defaultValueTime) &&
            (identical(other.defaultValueTimeElement, defaultValueTimeElement) || other.defaultValueTimeElement == defaultValueTimeElement) &&
            (identical(other.defaultValueUnsignedInt, defaultValueUnsignedInt) || other.defaultValueUnsignedInt == defaultValueUnsignedInt) &&
            (identical(other.defaultValueUnsignedIntElement, defaultValueUnsignedIntElement) || other.defaultValueUnsignedIntElement == defaultValueUnsignedIntElement) &&
            (identical(other.defaultValueUri, defaultValueUri) || other.defaultValueUri == defaultValueUri) &&
            (identical(other.defaultValueUriElement, defaultValueUriElement) || other.defaultValueUriElement == defaultValueUriElement) &&
            (identical(other.defaultValueUrl, defaultValueUrl) || other.defaultValueUrl == defaultValueUrl) &&
            (identical(other.defaultValueUrlElement, defaultValueUrlElement) || other.defaultValueUrlElement == defaultValueUrlElement) &&
            (identical(other.defaultValueUuid, defaultValueUuid) || other.defaultValueUuid == defaultValueUuid) &&
            (identical(other.defaultValueUuidElement, defaultValueUuidElement) || other.defaultValueUuidElement == defaultValueUuidElement) &&
            (identical(other.defaultValueAddress, defaultValueAddress) || other.defaultValueAddress == defaultValueAddress) &&
            (identical(other.defaultValueAge, defaultValueAge) || other.defaultValueAge == defaultValueAge) &&
            (identical(other.defaultValueAnnotation, defaultValueAnnotation) || other.defaultValueAnnotation == defaultValueAnnotation) &&
            (identical(other.defaultValueAttachment, defaultValueAttachment) || other.defaultValueAttachment == defaultValueAttachment) &&
            (identical(other.defaultValueCodeableConcept, defaultValueCodeableConcept) || other.defaultValueCodeableConcept == defaultValueCodeableConcept) &&
            (identical(other.defaultValueCodeableReference, defaultValueCodeableReference) || other.defaultValueCodeableReference == defaultValueCodeableReference) &&
            (identical(other.defaultValueCoding, defaultValueCoding) || other.defaultValueCoding == defaultValueCoding) &&
            (identical(other.defaultValueContactPoint, defaultValueContactPoint) || other.defaultValueContactPoint == defaultValueContactPoint) &&
            (identical(other.defaultValueCount, defaultValueCount) || other.defaultValueCount == defaultValueCount) &&
            (identical(other.defaultValueDistance, defaultValueDistance) || other.defaultValueDistance == defaultValueDistance) &&
            (identical(other.defaultValueDuration, defaultValueDuration) || other.defaultValueDuration == defaultValueDuration) &&
            (identical(other.defaultValueHumanName, defaultValueHumanName) || other.defaultValueHumanName == defaultValueHumanName) &&
            (identical(other.defaultValueIdentifier, defaultValueIdentifier) || other.defaultValueIdentifier == defaultValueIdentifier) &&
            (identical(other.defaultValueMoney, defaultValueMoney) || other.defaultValueMoney == defaultValueMoney) &&
            (identical(other.defaultValuePeriod, defaultValuePeriod) || other.defaultValuePeriod == defaultValuePeriod) &&
            (identical(other.defaultValueQuantity, defaultValueQuantity) || other.defaultValueQuantity == defaultValueQuantity) &&
            (identical(other.defaultValueRange, defaultValueRange) || other.defaultValueRange == defaultValueRange) &&
            (identical(other.defaultValueRatio, defaultValueRatio) || other.defaultValueRatio == defaultValueRatio) &&
            (identical(other.defaultValueRatioRange, defaultValueRatioRange) || other.defaultValueRatioRange == defaultValueRatioRange) &&
            (identical(other.defaultValueReference, defaultValueReference) || other.defaultValueReference == defaultValueReference) &&
            (identical(other.defaultValueSampledData, defaultValueSampledData) || other.defaultValueSampledData == defaultValueSampledData) &&
            (identical(other.defaultValueSignature, defaultValueSignature) || other.defaultValueSignature == defaultValueSignature) &&
            (identical(other.defaultValueTiming, defaultValueTiming) || other.defaultValueTiming == defaultValueTiming) &&
            (identical(other.defaultValueContactDetail, defaultValueContactDetail) || other.defaultValueContactDetail == defaultValueContactDetail) &&
            (identical(other.defaultValueContributor, defaultValueContributor) || other.defaultValueContributor == defaultValueContributor) &&
            (identical(other.defaultValueDataRequirement, defaultValueDataRequirement) || other.defaultValueDataRequirement == defaultValueDataRequirement) &&
            (identical(other.defaultValueExpression, defaultValueExpression) || other.defaultValueExpression == defaultValueExpression) &&
            (identical(other.defaultValueParameterDefinition, defaultValueParameterDefinition) || other.defaultValueParameterDefinition == defaultValueParameterDefinition) &&
            (identical(other.defaultValueRelatedArtifact, defaultValueRelatedArtifact) || other.defaultValueRelatedArtifact == defaultValueRelatedArtifact) &&
            (identical(other.defaultValueTriggerDefinition, defaultValueTriggerDefinition) || other.defaultValueTriggerDefinition == defaultValueTriggerDefinition) &&
            (identical(other.defaultValueUsageContext, defaultValueUsageContext) || other.defaultValueUsageContext == defaultValueUsageContext) &&
            (identical(other.defaultValueDosage, defaultValueDosage) || other.defaultValueDosage == defaultValueDosage) &&
            (identical(other.meaningWhenMissing, meaningWhenMissing) || other.meaningWhenMissing == meaningWhenMissing) &&
            (identical(other.meaningWhenMissingElement, meaningWhenMissingElement) || other.meaningWhenMissingElement == meaningWhenMissingElement) &&
            (identical(other.orderMeaning, orderMeaning) || other.orderMeaning == orderMeaning) &&
            (identical(other.orderMeaningElement, orderMeaningElement) || other.orderMeaningElement == orderMeaningElement) &&
            (identical(other.fixedBase64Binary, fixedBase64Binary) || other.fixedBase64Binary == fixedBase64Binary) &&
            (identical(other.fixedBase64BinaryElement, fixedBase64BinaryElement) || other.fixedBase64BinaryElement == fixedBase64BinaryElement) &&
            (identical(other.fixedBoolean, fixedBoolean) || other.fixedBoolean == fixedBoolean) &&
            (identical(other.fixedBooleanElement, fixedBooleanElement) || other.fixedBooleanElement == fixedBooleanElement) &&
            (identical(other.fixedCanonical, fixedCanonical) || other.fixedCanonical == fixedCanonical) &&
            (identical(other.fixedCanonicalElement, fixedCanonicalElement) || other.fixedCanonicalElement == fixedCanonicalElement) &&
            (identical(other.fixedCode, fixedCode) || other.fixedCode == fixedCode) &&
            (identical(other.fixedCodeElement, fixedCodeElement) || other.fixedCodeElement == fixedCodeElement) &&
            (identical(other.fixedDate, fixedDate) || other.fixedDate == fixedDate) &&
            (identical(other.fixedDateElement, fixedDateElement) || other.fixedDateElement == fixedDateElement) &&
            (identical(other.fixedDateTime, fixedDateTime) || other.fixedDateTime == fixedDateTime) &&
            (identical(other.fixedDateTimeElement, fixedDateTimeElement) || other.fixedDateTimeElement == fixedDateTimeElement) &&
            (identical(other.fixedDecimal, fixedDecimal) || other.fixedDecimal == fixedDecimal) &&
            (identical(other.fixedDecimalElement, fixedDecimalElement) || other.fixedDecimalElement == fixedDecimalElement) &&
            (identical(other.fixedId, fixedId) || other.fixedId == fixedId) &&
            (identical(other.fixedIdElement, fixedIdElement) || other.fixedIdElement == fixedIdElement) &&
            (identical(other.fixedInstant, fixedInstant) || other.fixedInstant == fixedInstant) &&
            (identical(other.fixedInstantElement, fixedInstantElement) || other.fixedInstantElement == fixedInstantElement) &&
            (identical(other.fixedInteger, fixedInteger) || other.fixedInteger == fixedInteger) &&
            (identical(other.fixedIntegerElement, fixedIntegerElement) || other.fixedIntegerElement == fixedIntegerElement) &&
            (identical(other.fixedMarkdown, fixedMarkdown) || other.fixedMarkdown == fixedMarkdown) &&
            (identical(other.fixedMarkdownElement, fixedMarkdownElement) || other.fixedMarkdownElement == fixedMarkdownElement) &&
            (identical(other.fixedOid, fixedOid) || other.fixedOid == fixedOid) &&
            (identical(other.fixedOidElement, fixedOidElement) || other.fixedOidElement == fixedOidElement) &&
            (identical(other.fixedPositiveInt, fixedPositiveInt) || other.fixedPositiveInt == fixedPositiveInt) &&
            (identical(other.fixedPositiveIntElement, fixedPositiveIntElement) || other.fixedPositiveIntElement == fixedPositiveIntElement) &&
            (identical(other.fixedString, fixedString) || other.fixedString == fixedString) &&
            (identical(other.fixedStringElement, fixedStringElement) || other.fixedStringElement == fixedStringElement) &&
            (identical(other.fixedTime, fixedTime) || other.fixedTime == fixedTime) &&
            (identical(other.fixedTimeElement, fixedTimeElement) || other.fixedTimeElement == fixedTimeElement) &&
            (identical(other.fixedUnsignedInt, fixedUnsignedInt) || other.fixedUnsignedInt == fixedUnsignedInt) &&
            (identical(other.fixedUnsignedIntElement, fixedUnsignedIntElement) || other.fixedUnsignedIntElement == fixedUnsignedIntElement) &&
            (identical(other.fixedUri, fixedUri) || other.fixedUri == fixedUri) &&
            (identical(other.fixedUriElement, fixedUriElement) || other.fixedUriElement == fixedUriElement) &&
            (identical(other.fixedUrl, fixedUrl) || other.fixedUrl == fixedUrl) &&
            (identical(other.fixedUrlElement, fixedUrlElement) || other.fixedUrlElement == fixedUrlElement) &&
            (identical(other.fixedUuid, fixedUuid) || other.fixedUuid == fixedUuid) &&
            (identical(other.fixedUuidElement, fixedUuidElement) || other.fixedUuidElement == fixedUuidElement) &&
            (identical(other.fixedAddress, fixedAddress) || other.fixedAddress == fixedAddress) &&
            (identical(other.fixedAge, fixedAge) || other.fixedAge == fixedAge) &&
            (identical(other.fixedAnnotation, fixedAnnotation) || other.fixedAnnotation == fixedAnnotation) &&
            (identical(other.fixedAttachment, fixedAttachment) || other.fixedAttachment == fixedAttachment) &&
            (identical(other.fixedCodeableConcept, fixedCodeableConcept) || other.fixedCodeableConcept == fixedCodeableConcept) &&
            (identical(other.fixedCodeableReference, fixedCodeableReference) || other.fixedCodeableReference == fixedCodeableReference) &&
            (identical(other.fixedCoding, fixedCoding) || other.fixedCoding == fixedCoding) &&
            (identical(other.fixedContactPoint, fixedContactPoint) || other.fixedContactPoint == fixedContactPoint) &&
            (identical(other.fixedCount, fixedCount) || other.fixedCount == fixedCount) &&
            (identical(other.fixedDistance, fixedDistance) || other.fixedDistance == fixedDistance) &&
            (identical(other.fixedDuration, fixedDuration) || other.fixedDuration == fixedDuration) &&
            (identical(other.fixedHumanName, fixedHumanName) || other.fixedHumanName == fixedHumanName) &&
            (identical(other.fixedIdentifier, fixedIdentifier) || other.fixedIdentifier == fixedIdentifier) &&
            (identical(other.fixedMoney, fixedMoney) || other.fixedMoney == fixedMoney) &&
            (identical(other.fixedPeriod, fixedPeriod) || other.fixedPeriod == fixedPeriod) &&
            (identical(other.fixedQuantity, fixedQuantity) || other.fixedQuantity == fixedQuantity) &&
            (identical(other.fixedRange, fixedRange) || other.fixedRange == fixedRange) &&
            (identical(other.fixedRatio, fixedRatio) || other.fixedRatio == fixedRatio) &&
            (identical(other.fixedRatioRange, fixedRatioRange) || other.fixedRatioRange == fixedRatioRange) &&
            (identical(other.fixedReference, fixedReference) || other.fixedReference == fixedReference) &&
            (identical(other.fixedSampledData, fixedSampledData) || other.fixedSampledData == fixedSampledData) &&
            (identical(other.fixedSignature, fixedSignature) || other.fixedSignature == fixedSignature) &&
            (identical(other.fixedTiming, fixedTiming) || other.fixedTiming == fixedTiming) &&
            (identical(other.fixedContactDetail, fixedContactDetail) || other.fixedContactDetail == fixedContactDetail) &&
            (identical(other.fixedContributor, fixedContributor) || other.fixedContributor == fixedContributor) &&
            (identical(other.fixedDataRequirement, fixedDataRequirement) || other.fixedDataRequirement == fixedDataRequirement) &&
            (identical(other.fixedExpression, fixedExpression) || other.fixedExpression == fixedExpression) &&
            (identical(other.fixedParameterDefinition, fixedParameterDefinition) || other.fixedParameterDefinition == fixedParameterDefinition) &&
            (identical(other.fixedRelatedArtifact, fixedRelatedArtifact) || other.fixedRelatedArtifact == fixedRelatedArtifact) &&
            (identical(other.fixedTriggerDefinition, fixedTriggerDefinition) || other.fixedTriggerDefinition == fixedTriggerDefinition) &&
            (identical(other.fixedUsageContext, fixedUsageContext) || other.fixedUsageContext == fixedUsageContext) &&
            (identical(other.fixedDosage, fixedDosage) || other.fixedDosage == fixedDosage) &&
            (identical(other.patternBase64Binary, patternBase64Binary) || other.patternBase64Binary == patternBase64Binary) &&
            (identical(other.patternBase64BinaryElement, patternBase64BinaryElement) || other.patternBase64BinaryElement == patternBase64BinaryElement) &&
            (identical(other.patternBoolean, patternBoolean) || other.patternBoolean == patternBoolean) &&
            (identical(other.patternBooleanElement, patternBooleanElement) || other.patternBooleanElement == patternBooleanElement) &&
            (identical(other.patternCanonical, patternCanonical) || other.patternCanonical == patternCanonical) &&
            (identical(other.patternCanonicalElement, patternCanonicalElement) || other.patternCanonicalElement == patternCanonicalElement) &&
            (identical(other.patternCode, patternCode) || other.patternCode == patternCode) &&
            (identical(other.patternCodeElement, patternCodeElement) || other.patternCodeElement == patternCodeElement) &&
            (identical(other.patternDate, patternDate) || other.patternDate == patternDate) &&
            (identical(other.patternDateElement, patternDateElement) || other.patternDateElement == patternDateElement) &&
            (identical(other.patternDateTime, patternDateTime) || other.patternDateTime == patternDateTime) &&
            (identical(other.patternDateTimeElement, patternDateTimeElement) || other.patternDateTimeElement == patternDateTimeElement) &&
            (identical(other.patternDecimal, patternDecimal) || other.patternDecimal == patternDecimal) &&
            (identical(other.patternDecimalElement, patternDecimalElement) || other.patternDecimalElement == patternDecimalElement) &&
            (identical(other.patternId, patternId) || other.patternId == patternId) &&
            (identical(other.patternIdElement, patternIdElement) || other.patternIdElement == patternIdElement) &&
            (identical(other.patternInstant, patternInstant) || other.patternInstant == patternInstant) &&
            (identical(other.patternInstantElement, patternInstantElement) || other.patternInstantElement == patternInstantElement) &&
            (identical(other.patternInteger, patternInteger) || other.patternInteger == patternInteger) &&
            (identical(other.patternIntegerElement, patternIntegerElement) || other.patternIntegerElement == patternIntegerElement) &&
            (identical(other.patternMarkdown, patternMarkdown) || other.patternMarkdown == patternMarkdown) &&
            (identical(other.patternMarkdownElement, patternMarkdownElement) || other.patternMarkdownElement == patternMarkdownElement) &&
            (identical(other.patternOid, patternOid) || other.patternOid == patternOid) &&
            (identical(other.patternOidElement, patternOidElement) || other.patternOidElement == patternOidElement) &&
            (identical(other.patternPositiveInt, patternPositiveInt) || other.patternPositiveInt == patternPositiveInt) &&
            (identical(other.patternPositiveIntElement, patternPositiveIntElement) || other.patternPositiveIntElement == patternPositiveIntElement) &&
            (identical(other.patternString, patternString) || other.patternString == patternString) &&
            (identical(other.patternStringElement, patternStringElement) || other.patternStringElement == patternStringElement) &&
            (identical(other.patternTime, patternTime) || other.patternTime == patternTime) &&
            (identical(other.patternTimeElement, patternTimeElement) || other.patternTimeElement == patternTimeElement) &&
            (identical(other.patternUnsignedInt, patternUnsignedInt) || other.patternUnsignedInt == patternUnsignedInt) &&
            (identical(other.patternUnsignedIntElement, patternUnsignedIntElement) || other.patternUnsignedIntElement == patternUnsignedIntElement) &&
            (identical(other.patternUri, patternUri) || other.patternUri == patternUri) &&
            (identical(other.patternUriElement, patternUriElement) || other.patternUriElement == patternUriElement) &&
            (identical(other.patternUrl, patternUrl) || other.patternUrl == patternUrl) &&
            (identical(other.patternUrlElement, patternUrlElement) || other.patternUrlElement == patternUrlElement) &&
            (identical(other.patternUuid, patternUuid) || other.patternUuid == patternUuid) &&
            (identical(other.patternUuidElement, patternUuidElement) || other.patternUuidElement == patternUuidElement) &&
            (identical(other.patternAddress, patternAddress) || other.patternAddress == patternAddress) &&
            (identical(other.patternAge, patternAge) || other.patternAge == patternAge) &&
            (identical(other.patternAnnotation, patternAnnotation) || other.patternAnnotation == patternAnnotation) &&
            (identical(other.patternAttachment, patternAttachment) || other.patternAttachment == patternAttachment) &&
            (identical(other.patternCodeableConcept, patternCodeableConcept) || other.patternCodeableConcept == patternCodeableConcept) &&
            (identical(other.patternCodeableReference, patternCodeableReference) || other.patternCodeableReference == patternCodeableReference) &&
            (identical(other.patternCoding, patternCoding) || other.patternCoding == patternCoding) &&
            (identical(other.patternContactPoint, patternContactPoint) || other.patternContactPoint == patternContactPoint) &&
            (identical(other.patternCount, patternCount) || other.patternCount == patternCount) &&
            (identical(other.patternDistance, patternDistance) || other.patternDistance == patternDistance) &&
            (identical(other.patternDuration, patternDuration) || other.patternDuration == patternDuration) &&
            (identical(other.patternHumanName, patternHumanName) || other.patternHumanName == patternHumanName) &&
            (identical(other.patternIdentifier, patternIdentifier) || other.patternIdentifier == patternIdentifier) &&
            (identical(other.patternMoney, patternMoney) || other.patternMoney == patternMoney) &&
            (identical(other.patternPeriod, patternPeriod) || other.patternPeriod == patternPeriod) &&
            (identical(other.patternQuantity, patternQuantity) || other.patternQuantity == patternQuantity) &&
            (identical(other.patternRange, patternRange) || other.patternRange == patternRange) &&
            (identical(other.patternRatio, patternRatio) || other.patternRatio == patternRatio) &&
            (identical(other.patternRatioRange, patternRatioRange) || other.patternRatioRange == patternRatioRange) &&
            (identical(other.patternReference, patternReference) || other.patternReference == patternReference) &&
            (identical(other.patternSampledData, patternSampledData) || other.patternSampledData == patternSampledData) &&
            (identical(other.patternSignature, patternSignature) || other.patternSignature == patternSignature) &&
            (identical(other.patternTiming, patternTiming) || other.patternTiming == patternTiming) &&
            (identical(other.patternContactDetail, patternContactDetail) || other.patternContactDetail == patternContactDetail) &&
            (identical(other.patternContributor, patternContributor) || other.patternContributor == patternContributor) &&
            (identical(other.patternDataRequirement, patternDataRequirement) || other.patternDataRequirement == patternDataRequirement) &&
            (identical(other.patternExpression, patternExpression) || other.patternExpression == patternExpression) &&
            (identical(other.patternParameterDefinition, patternParameterDefinition) || other.patternParameterDefinition == patternParameterDefinition) &&
            (identical(other.patternRelatedArtifact, patternRelatedArtifact) || other.patternRelatedArtifact == patternRelatedArtifact) &&
            (identical(other.patternTriggerDefinition, patternTriggerDefinition) || other.patternTriggerDefinition == patternTriggerDefinition) &&
            (identical(other.patternUsageContext, patternUsageContext) || other.patternUsageContext == patternUsageContext) &&
            (identical(other.patternDosage, patternDosage) || other.patternDosage == patternDosage) &&
            const DeepCollectionEquality().equals(other._example, _example) &&
            (identical(other.minValueDate, minValueDate) || other.minValueDate == minValueDate) &&
            (identical(other.minValueDateElement, minValueDateElement) || other.minValueDateElement == minValueDateElement) &&
            (identical(other.minValueDateTime, minValueDateTime) || other.minValueDateTime == minValueDateTime) &&
            (identical(other.minValueDateTimeElement, minValueDateTimeElement) || other.minValueDateTimeElement == minValueDateTimeElement) &&
            (identical(other.minValueInstant, minValueInstant) || other.minValueInstant == minValueInstant) &&
            (identical(other.minValueInstantElement, minValueInstantElement) || other.minValueInstantElement == minValueInstantElement) &&
            (identical(other.minValueTime, minValueTime) || other.minValueTime == minValueTime) &&
            (identical(other.minValueTimeElement, minValueTimeElement) || other.minValueTimeElement == minValueTimeElement) &&
            (identical(other.minValueDecimal, minValueDecimal) || other.minValueDecimal == minValueDecimal) &&
            (identical(other.minValueDecimalElement, minValueDecimalElement) || other.minValueDecimalElement == minValueDecimalElement) &&
            (identical(other.minValueInteger, minValueInteger) || other.minValueInteger == minValueInteger) &&
            (identical(other.minValueIntegerElement, minValueIntegerElement) || other.minValueIntegerElement == minValueIntegerElement) &&
            (identical(other.minValuePositiveInt, minValuePositiveInt) || other.minValuePositiveInt == minValuePositiveInt) &&
            (identical(other.minValuePositiveIntElement, minValuePositiveIntElement) || other.minValuePositiveIntElement == minValuePositiveIntElement) &&
            (identical(other.minValueUnsignedInt, minValueUnsignedInt) || other.minValueUnsignedInt == minValueUnsignedInt) &&
            (identical(other.minValueUnsignedIntElement, minValueUnsignedIntElement) || other.minValueUnsignedIntElement == minValueUnsignedIntElement) &&
            (identical(other.minValueQuantity, minValueQuantity) || other.minValueQuantity == minValueQuantity) &&
            (identical(other.maxValueDate, maxValueDate) || other.maxValueDate == maxValueDate) &&
            (identical(other.maxValueDateElement, maxValueDateElement) || other.maxValueDateElement == maxValueDateElement) &&
            (identical(other.maxValueDateTime, maxValueDateTime) || other.maxValueDateTime == maxValueDateTime) &&
            (identical(other.maxValueDateTimeElement, maxValueDateTimeElement) || other.maxValueDateTimeElement == maxValueDateTimeElement) &&
            (identical(other.maxValueInstant, maxValueInstant) || other.maxValueInstant == maxValueInstant) &&
            (identical(other.maxValueInstantElement, maxValueInstantElement) || other.maxValueInstantElement == maxValueInstantElement) &&
            (identical(other.maxValueTime, maxValueTime) || other.maxValueTime == maxValueTime) &&
            (identical(other.maxValueTimeElement, maxValueTimeElement) || other.maxValueTimeElement == maxValueTimeElement) &&
            (identical(other.maxValueDecimal, maxValueDecimal) || other.maxValueDecimal == maxValueDecimal) &&
            (identical(other.maxValueDecimalElement, maxValueDecimalElement) || other.maxValueDecimalElement == maxValueDecimalElement) &&
            (identical(other.maxValueInteger, maxValueInteger) || other.maxValueInteger == maxValueInteger) &&
            (identical(other.maxValueIntegerElement, maxValueIntegerElement) || other.maxValueIntegerElement == maxValueIntegerElement) &&
            (identical(other.maxValuePositiveInt, maxValuePositiveInt) || other.maxValuePositiveInt == maxValuePositiveInt) &&
            (identical(other.maxValuePositiveIntElement, maxValuePositiveIntElement) || other.maxValuePositiveIntElement == maxValuePositiveIntElement) &&
            (identical(other.maxValueUnsignedInt, maxValueUnsignedInt) || other.maxValueUnsignedInt == maxValueUnsignedInt) &&
            (identical(other.maxValueUnsignedIntElement, maxValueUnsignedIntElement) || other.maxValueUnsignedIntElement == maxValueUnsignedIntElement) &&
            (identical(other.maxValueQuantity, maxValueQuantity) || other.maxValueQuantity == maxValueQuantity) &&
            (identical(other.maxLength, maxLength) || other.maxLength == maxLength) &&
            (identical(other.maxLengthElement, maxLengthElement) || other.maxLengthElement == maxLengthElement) &&
            const DeepCollectionEquality().equals(other._condition, _condition) &&
            const DeepCollectionEquality().equals(other._conditionElement, _conditionElement) &&
            const DeepCollectionEquality().equals(other._constraint, _constraint) &&
            (identical(other.mustSupport, mustSupport) || other.mustSupport == mustSupport) &&
            (identical(other.mustSupportElement, mustSupportElement) || other.mustSupportElement == mustSupportElement) &&
            (identical(other.isModifier, isModifier) || other.isModifier == isModifier) &&
            (identical(other.isModifierElement, isModifierElement) || other.isModifierElement == isModifierElement) &&
            (identical(other.isModifierReason, isModifierReason) || other.isModifierReason == isModifierReason) &&
            (identical(other.isModifierReasonElement, isModifierReasonElement) || other.isModifierReasonElement == isModifierReasonElement) &&
            (identical(other.isSummary, isSummary) || other.isSummary == isSummary) &&
            (identical(other.isSummaryElement, isSummaryElement) || other.isSummaryElement == isSummaryElement) &&
            (identical(other.binding, binding) || other.binding == binding) &&
            const DeepCollectionEquality().equals(other._mapping, _mapping));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        path,
        pathElement,
        const DeepCollectionEquality().hash(_representation),
        const DeepCollectionEquality().hash(_representationElement),
        sliceName,
        sliceNameElement,
        sliceIsConstraining,
        sliceIsConstrainingElement,
        label,
        labelElement,
        const DeepCollectionEquality().hash(_code),
        slicing,
        short,
        shortElement,
        definition,
        definitionElement,
        comment,
        commentElement,
        requirements,
        requirementsElement,
        const DeepCollectionEquality().hash(_alias),
        const DeepCollectionEquality().hash(_aliasElement),
        min,
        minElement,
        max,
        maxElement,
        base,
        contentReference,
        contentReferenceElement,
        const DeepCollectionEquality().hash(_type),
        defaultValueBase64Binary,
        defaultValueBase64BinaryElement,
        defaultValueBoolean,
        defaultValueBooleanElement,
        defaultValueCanonical,
        defaultValueCanonicalElement,
        defaultValueCode,
        defaultValueCodeElement,
        defaultValueDate,
        defaultValueDateElement,
        defaultValueDateTime,
        defaultValueDateTimeElement,
        defaultValueDecimal,
        defaultValueDecimalElement,
        defaultValueId,
        defaultValueIdElement,
        defaultValueInstant,
        defaultValueInstantElement,
        defaultValueInteger,
        defaultValueIntegerElement,
        defaultValueMarkdown,
        defaultValueMarkdownElement,
        defaultValueOid,
        defaultValueOidElement,
        defaultValuePositiveInt,
        defaultValuePositiveIntElement,
        defaultValueString,
        defaultValueStringElement,
        defaultValueTime,
        defaultValueTimeElement,
        defaultValueUnsignedInt,
        defaultValueUnsignedIntElement,
        defaultValueUri,
        defaultValueUriElement,
        defaultValueUrl,
        defaultValueUrlElement,
        defaultValueUuid,
        defaultValueUuidElement,
        defaultValueAddress,
        defaultValueAge,
        defaultValueAnnotation,
        defaultValueAttachment,
        defaultValueCodeableConcept,
        defaultValueCodeableReference,
        defaultValueCoding,
        defaultValueContactPoint,
        defaultValueCount,
        defaultValueDistance,
        defaultValueDuration,
        defaultValueHumanName,
        defaultValueIdentifier,
        defaultValueMoney,
        defaultValuePeriod,
        defaultValueQuantity,
        defaultValueRange,
        defaultValueRatio,
        defaultValueRatioRange,
        defaultValueReference,
        defaultValueSampledData,
        defaultValueSignature,
        defaultValueTiming,
        defaultValueContactDetail,
        defaultValueContributor,
        defaultValueDataRequirement,
        defaultValueExpression,
        defaultValueParameterDefinition,
        defaultValueRelatedArtifact,
        defaultValueTriggerDefinition,
        defaultValueUsageContext,
        defaultValueDosage,
        meaningWhenMissing,
        meaningWhenMissingElement,
        orderMeaning,
        orderMeaningElement,
        fixedBase64Binary,
        fixedBase64BinaryElement,
        fixedBoolean,
        fixedBooleanElement,
        fixedCanonical,
        fixedCanonicalElement,
        fixedCode,
        fixedCodeElement,
        fixedDate,
        fixedDateElement,
        fixedDateTime,
        fixedDateTimeElement,
        fixedDecimal,
        fixedDecimalElement,
        fixedId,
        fixedIdElement,
        fixedInstant,
        fixedInstantElement,
        fixedInteger,
        fixedIntegerElement,
        fixedMarkdown,
        fixedMarkdownElement,
        fixedOid,
        fixedOidElement,
        fixedPositiveInt,
        fixedPositiveIntElement,
        fixedString,
        fixedStringElement,
        fixedTime,
        fixedTimeElement,
        fixedUnsignedInt,
        fixedUnsignedIntElement,
        fixedUri,
        fixedUriElement,
        fixedUrl,
        fixedUrlElement,
        fixedUuid,
        fixedUuidElement,
        fixedAddress,
        fixedAge,
        fixedAnnotation,
        fixedAttachment,
        fixedCodeableConcept,
        fixedCodeableReference,
        fixedCoding,
        fixedContactPoint,
        fixedCount,
        fixedDistance,
        fixedDuration,
        fixedHumanName,
        fixedIdentifier,
        fixedMoney,
        fixedPeriod,
        fixedQuantity,
        fixedRange,
        fixedRatio,
        fixedRatioRange,
        fixedReference,
        fixedSampledData,
        fixedSignature,
        fixedTiming,
        fixedContactDetail,
        fixedContributor,
        fixedDataRequirement,
        fixedExpression,
        fixedParameterDefinition,
        fixedRelatedArtifact,
        fixedTriggerDefinition,
        fixedUsageContext,
        fixedDosage,
        patternBase64Binary,
        patternBase64BinaryElement,
        patternBoolean,
        patternBooleanElement,
        patternCanonical,
        patternCanonicalElement,
        patternCode,
        patternCodeElement,
        patternDate,
        patternDateElement,
        patternDateTime,
        patternDateTimeElement,
        patternDecimal,
        patternDecimalElement,
        patternId,
        patternIdElement,
        patternInstant,
        patternInstantElement,
        patternInteger,
        patternIntegerElement,
        patternMarkdown,
        patternMarkdownElement,
        patternOid,
        patternOidElement,
        patternPositiveInt,
        patternPositiveIntElement,
        patternString,
        patternStringElement,
        patternTime,
        patternTimeElement,
        patternUnsignedInt,
        patternUnsignedIntElement,
        patternUri,
        patternUriElement,
        patternUrl,
        patternUrlElement,
        patternUuid,
        patternUuidElement,
        patternAddress,
        patternAge,
        patternAnnotation,
        patternAttachment,
        patternCodeableConcept,
        patternCodeableReference,
        patternCoding,
        patternContactPoint,
        patternCount,
        patternDistance,
        patternDuration,
        patternHumanName,
        patternIdentifier,
        patternMoney,
        patternPeriod,
        patternQuantity,
        patternRange,
        patternRatio,
        patternRatioRange,
        patternReference,
        patternSampledData,
        patternSignature,
        patternTiming,
        patternContactDetail,
        patternContributor,
        patternDataRequirement,
        patternExpression,
        patternParameterDefinition,
        patternRelatedArtifact,
        patternTriggerDefinition,
        patternUsageContext,
        patternDosage,
        const DeepCollectionEquality().hash(_example),
        minValueDate,
        minValueDateElement,
        minValueDateTime,
        minValueDateTimeElement,
        minValueInstant,
        minValueInstantElement,
        minValueTime,
        minValueTimeElement,
        minValueDecimal,
        minValueDecimalElement,
        minValueInteger,
        minValueIntegerElement,
        minValuePositiveInt,
        minValuePositiveIntElement,
        minValueUnsignedInt,
        minValueUnsignedIntElement,
        minValueQuantity,
        maxValueDate,
        maxValueDateElement,
        maxValueDateTime,
        maxValueDateTimeElement,
        maxValueInstant,
        maxValueInstantElement,
        maxValueTime,
        maxValueTimeElement,
        maxValueDecimal,
        maxValueDecimalElement,
        maxValueInteger,
        maxValueIntegerElement,
        maxValuePositiveInt,
        maxValuePositiveIntElement,
        maxValueUnsignedInt,
        maxValueUnsignedIntElement,
        maxValueQuantity,
        maxLength,
        maxLengthElement,
        const DeepCollectionEquality().hash(_condition),
        const DeepCollectionEquality().hash(_conditionElement),
        const DeepCollectionEquality().hash(_constraint),
        mustSupport,
        mustSupportElement,
        isModifier,
        isModifierElement,
        isModifierReason,
        isModifierReasonElement,
        isSummary,
        isSummaryElement,
        binding,
        const DeepCollectionEquality().hash(_mapping)
      ]);

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ElementDefinitionImplCopyWith<_$ElementDefinitionImpl> get copyWith =>
      __$$ElementDefinitionImplCopyWithImpl<_$ElementDefinitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElementDefinitionImplToJson(
      this,
    );
  }
}

abstract class _ElementDefinition extends ElementDefinition {
  factory _ElementDefinition(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? path,
      @JsonKey(name: '_path') final PrimitiveElement? pathElement,
      final List<ElementDefinitionRepresentation>? representation,
      @JsonKey(name: '_representation')
      final List<PrimitiveElement>? representationElement,
      final String? sliceName,
      @JsonKey(name: '_sliceName') final PrimitiveElement? sliceNameElement,
      final FhirBoolean? sliceIsConstraining,
      @JsonKey(name: '_sliceIsConstraining')
      final PrimitiveElement? sliceIsConstrainingElement,
      final String? label,
      @JsonKey(name: '_label') final PrimitiveElement? labelElement,
      final List<Coding>? code,
      final ElementDefinitionSlicing? slicing,
      final String? short,
      @JsonKey(name: '_short') final PrimitiveElement? shortElement,
      final FhirMarkdown? definition,
      @JsonKey(name: '_definition') final PrimitiveElement? definitionElement,
      final FhirMarkdown? comment,
      @JsonKey(name: '_comment') final PrimitiveElement? commentElement,
      final FhirMarkdown? requirements,
      @JsonKey(name: '_requirements')
      final PrimitiveElement? requirementsElement,
      final List<String>? alias,
      @JsonKey(name: '_alias') final List<PrimitiveElement>? aliasElement,
      final FhirUnsignedInt? min,
      @JsonKey(name: '_min') final PrimitiveElement? minElement,
      final String? max,
      @JsonKey(name: '_max') final PrimitiveElement? maxElement,
      final ElementDefinitionBase? base,
      final FhirUri? contentReference,
      @JsonKey(name: '_contentReference')
      final PrimitiveElement? contentReferenceElement,
      final List<ElementDefinitionType>? type,
      final FhirBase64Binary? defaultValueBase64Binary,
      @JsonKey(name: '_defaultValueBase64Binary')
      final PrimitiveElement? defaultValueBase64BinaryElement,
      final FhirBoolean? defaultValueBoolean,
      @JsonKey(name: '_defaultValueBoolean')
      final PrimitiveElement? defaultValueBooleanElement,
      final FhirCanonical? defaultValueCanonical,
      @JsonKey(name: '_defaultValueCanonical')
      final PrimitiveElement? defaultValueCanonicalElement,
      final FhirCode? defaultValueCode,
      @JsonKey(name: '_defaultValueCode')
      final PrimitiveElement? defaultValueCodeElement,
      final FhirDate? defaultValueDate,
      @JsonKey(name: '_defaultValueDate')
      final PrimitiveElement? defaultValueDateElement,
      final FhirDateTime? defaultValueDateTime,
      @JsonKey(name: '_defaultValueDateTime')
      final PrimitiveElement? defaultValueDateTimeElement,
      final FhirDecimal? defaultValueDecimal,
      @JsonKey(name: '_defaultValueDecimal')
      final PrimitiveElement? defaultValueDecimalElement,
      final FhirId? defaultValueId,
      @JsonKey(name: '_defaultValueId')
      final PrimitiveElement? defaultValueIdElement,
      final FhirInstant? defaultValueInstant,
      @JsonKey(name: '_defaultValueInstant')
      final PrimitiveElement? defaultValueInstantElement,
      final FhirInteger? defaultValueInteger,
      @JsonKey(name: '_defaultValueInteger')
      final PrimitiveElement? defaultValueIntegerElement,
      final FhirMarkdown? defaultValueMarkdown,
      @JsonKey(name: '_defaultValueMarkdown')
      final PrimitiveElement? defaultValueMarkdownElement,
      final FhirOid? defaultValueOid,
      @JsonKey(name: '_defaultValueOid')
      final PrimitiveElement? defaultValueOidElement,
      final FhirPositiveInt? defaultValuePositiveInt,
      @JsonKey(name: '_defaultValuePositiveInt')
      final PrimitiveElement? defaultValuePositiveIntElement,
      final String? defaultValueString,
      @JsonKey(name: '_defaultValueString')
      final PrimitiveElement? defaultValueStringElement,
      final FhirTime? defaultValueTime,
      @JsonKey(name: '_defaultValueTime')
      final PrimitiveElement? defaultValueTimeElement,
      final FhirUnsignedInt? defaultValueUnsignedInt,
      @JsonKey(name: '_defaultValueUnsignedInt')
      final PrimitiveElement? defaultValueUnsignedIntElement,
      final FhirUri? defaultValueUri,
      @JsonKey(name: '_defaultValueUri')
      final PrimitiveElement? defaultValueUriElement,
      final FhirUrl? defaultValueUrl,
      @JsonKey(name: '_defaultValueUrl')
      final PrimitiveElement? defaultValueUrlElement,
      final FhirUuid? defaultValueUuid,
      @JsonKey(name: '_defaultValueUuid')
      final PrimitiveElement? defaultValueUuidElement,
      final Address? defaultValueAddress,
      final Age? defaultValueAge,
      final Annotation? defaultValueAnnotation,
      final Attachment? defaultValueAttachment,
      final CodeableConcept? defaultValueCodeableConcept,
      final CodeableReference? defaultValueCodeableReference,
      final Coding? defaultValueCoding,
      final ContactPoint? defaultValueContactPoint,
      final Count? defaultValueCount,
      final Distance? defaultValueDistance,
      final FhirDuration? defaultValueDuration,
      final HumanName? defaultValueHumanName,
      final Identifier? defaultValueIdentifier,
      final Money? defaultValueMoney,
      final Period? defaultValuePeriod,
      final Quantity? defaultValueQuantity,
      final Range? defaultValueRange,
      final Ratio? defaultValueRatio,
      final RatioRange? defaultValueRatioRange,
      final Reference? defaultValueReference,
      final SampledData? defaultValueSampledData,
      final Signature? defaultValueSignature,
      final Timing? defaultValueTiming,
      final ContactDetail? defaultValueContactDetail,
      final Contributor? defaultValueContributor,
      final DataRequirement? defaultValueDataRequirement,
      final FhirExpression? defaultValueExpression,
      final ParameterDefinition? defaultValueParameterDefinition,
      final RelatedArtifact? defaultValueRelatedArtifact,
      final TriggerDefinition? defaultValueTriggerDefinition,
      final UsageContext? defaultValueUsageContext,
      final Dosage? defaultValueDosage,
      final FhirMarkdown? meaningWhenMissing,
      @JsonKey(name: '_meaningWhenMissing')
      final PrimitiveElement? meaningWhenMissingElement,
      final String? orderMeaning,
      @JsonKey(name: '_orderMeaning')
      final PrimitiveElement? orderMeaningElement,
      final FhirBase64Binary? fixedBase64Binary,
      @JsonKey(name: '_fixedBase64Binary')
      final PrimitiveElement? fixedBase64BinaryElement,
      final FhirBoolean? fixedBoolean,
      @JsonKey(name: '_fixedBoolean')
      final PrimitiveElement? fixedBooleanElement,
      final FhirCanonical? fixedCanonical,
      @JsonKey(name: '_fixedCanonical')
      final PrimitiveElement? fixedCanonicalElement,
      final FhirCode? fixedCode,
      @JsonKey(name: '_fixedCode') final PrimitiveElement? fixedCodeElement,
      final FhirDate? fixedDate,
      @JsonKey(name: '_fixedDate') final PrimitiveElement? fixedDateElement,
      final FhirDateTime? fixedDateTime,
      @JsonKey(name: '_fixedDateTime')
      final PrimitiveElement? fixedDateTimeElement,
      final FhirDecimal? fixedDecimal,
      @JsonKey(name: '_fixedDecimal')
      final PrimitiveElement? fixedDecimalElement,
      final FhirId? fixedId,
      @JsonKey(name: '_fixedId') final PrimitiveElement? fixedIdElement,
      final FhirInstant? fixedInstant,
      @JsonKey(name: '_fixedInstant')
      final PrimitiveElement? fixedInstantElement,
      final FhirInteger? fixedInteger,
      @JsonKey(name: '_fixedInteger')
      final PrimitiveElement? fixedIntegerElement,
      final FhirMarkdown? fixedMarkdown,
      @JsonKey(name: '_fixedMarkdown')
      final PrimitiveElement? fixedMarkdownElement,
      final FhirOid? fixedOid,
      @JsonKey(name: '_fixedOid') final PrimitiveElement? fixedOidElement,
      final FhirPositiveInt? fixedPositiveInt,
      @JsonKey(name: '_fixedPositiveInt')
      final PrimitiveElement? fixedPositiveIntElement,
      final String? fixedString,
      @JsonKey(name: '_fixedString') final PrimitiveElement? fixedStringElement,
      final FhirTime? fixedTime,
      @JsonKey(name: '_fixedTime') final PrimitiveElement? fixedTimeElement,
      final FhirUnsignedInt? fixedUnsignedInt,
      @JsonKey(name: '_fixedUnsignedInt')
      final PrimitiveElement? fixedUnsignedIntElement,
      final FhirUri? fixedUri,
      @JsonKey(name: '_fixedUri') final PrimitiveElement? fixedUriElement,
      final FhirUrl? fixedUrl,
      @JsonKey(name: '_fixedUrl') final PrimitiveElement? fixedUrlElement,
      final FhirUuid? fixedUuid,
      @JsonKey(name: '_fixedUuid') final PrimitiveElement? fixedUuidElement,
      final Address? fixedAddress,
      final Age? fixedAge,
      final Annotation? fixedAnnotation,
      final Attachment? fixedAttachment,
      final CodeableConcept? fixedCodeableConcept,
      final CodeableReference? fixedCodeableReference,
      final Coding? fixedCoding,
      final ContactPoint? fixedContactPoint,
      final Count? fixedCount,
      final Distance? fixedDistance,
      final FhirDuration? fixedDuration,
      final HumanName? fixedHumanName,
      final Identifier? fixedIdentifier,
      final Money? fixedMoney,
      final Period? fixedPeriod,
      final Quantity? fixedQuantity,
      final Range? fixedRange,
      final Ratio? fixedRatio,
      final RatioRange? fixedRatioRange,
      final Reference? fixedReference,
      final SampledData? fixedSampledData,
      final Signature? fixedSignature,
      final Timing? fixedTiming,
      final ContactDetail? fixedContactDetail,
      final Contributor? fixedContributor,
      final DataRequirement? fixedDataRequirement,
      final FhirExpression? fixedExpression,
      final ParameterDefinition? fixedParameterDefinition,
      final RelatedArtifact? fixedRelatedArtifact,
      final TriggerDefinition? fixedTriggerDefinition,
      final UsageContext? fixedUsageContext,
      final Dosage? fixedDosage,
      final FhirBase64Binary? patternBase64Binary,
      @JsonKey(name: '_patternBase64Binary')
      final PrimitiveElement? patternBase64BinaryElement,
      final FhirBoolean? patternBoolean,
      @JsonKey(name: '_patternBoolean')
      final PrimitiveElement? patternBooleanElement,
      final FhirCanonical? patternCanonical,
      @JsonKey(name: '_patternCanonical')
      final PrimitiveElement? patternCanonicalElement,
      final FhirCode? patternCode,
      @JsonKey(name: '_patternCode') final PrimitiveElement? patternCodeElement,
      final FhirDate? patternDate,
      @JsonKey(name: '_patternDate') final PrimitiveElement? patternDateElement,
      final FhirDateTime? patternDateTime,
      @JsonKey(name: '_patternDateTime')
      final PrimitiveElement? patternDateTimeElement,
      final FhirDecimal? patternDecimal,
      @JsonKey(name: '_patternDecimal')
      final PrimitiveElement? patternDecimalElement,
      final FhirId? patternId,
      @JsonKey(name: '_patternId') final PrimitiveElement? patternIdElement,
      final FhirInstant? patternInstant,
      @JsonKey(name: '_patternInstant')
      final PrimitiveElement? patternInstantElement,
      final FhirInteger? patternInteger,
      @JsonKey(name: '_patternInteger')
      final PrimitiveElement? patternIntegerElement,
      final FhirMarkdown? patternMarkdown,
      @JsonKey(name: '_patternMarkdown')
      final PrimitiveElement? patternMarkdownElement,
      final FhirOid? patternOid,
      @JsonKey(name: '_patternOid') final PrimitiveElement? patternOidElement,
      final FhirPositiveInt? patternPositiveInt,
      @JsonKey(name: '_patternPositiveInt')
      final PrimitiveElement? patternPositiveIntElement,
      final String? patternString,
      @JsonKey(name: '_patternString')
      final PrimitiveElement? patternStringElement,
      final FhirTime? patternTime,
      @JsonKey(name: '_patternTime') final PrimitiveElement? patternTimeElement,
      final FhirUnsignedInt? patternUnsignedInt,
      @JsonKey(name: '_patternUnsignedInt')
      final PrimitiveElement? patternUnsignedIntElement,
      final FhirUri? patternUri,
      @JsonKey(name: '_patternUri') final PrimitiveElement? patternUriElement,
      final FhirUrl? patternUrl,
      @JsonKey(name: '_patternUrl') final PrimitiveElement? patternUrlElement,
      final FhirUuid? patternUuid,
      @JsonKey(name: '_patternUuid') final PrimitiveElement? patternUuidElement,
      final Address? patternAddress,
      final Age? patternAge,
      final Annotation? patternAnnotation,
      final Attachment? patternAttachment,
      final CodeableConcept? patternCodeableConcept,
      final CodeableReference? patternCodeableReference,
      final Coding? patternCoding,
      final ContactPoint? patternContactPoint,
      final Count? patternCount,
      final Distance? patternDistance,
      final FhirDuration? patternDuration,
      final HumanName? patternHumanName,
      final Identifier? patternIdentifier,
      final Money? patternMoney,
      final Period? patternPeriod,
      final Quantity? patternQuantity,
      final Range? patternRange,
      final Ratio? patternRatio,
      final RatioRange? patternRatioRange,
      final Reference? patternReference,
      final SampledData? patternSampledData,
      final Signature? patternSignature,
      final Timing? patternTiming,
      final ContactDetail? patternContactDetail,
      final Contributor? patternContributor,
      final DataRequirement? patternDataRequirement,
      final FhirExpression? patternExpression,
      final ParameterDefinition? patternParameterDefinition,
      final RelatedArtifact? patternRelatedArtifact,
      final TriggerDefinition? patternTriggerDefinition,
      final UsageContext? patternUsageContext,
      final Dosage? patternDosage,
      final List<ElementDefinitionExample>? example,
      final FhirDate? minValueDate,
      @JsonKey(name: '_minValueDate')
      final PrimitiveElement? minValueDateElement,
      final FhirDateTime? minValueDateTime,
      @JsonKey(name: '_minValueDateTime')
      final PrimitiveElement? minValueDateTimeElement,
      final FhirInstant? minValueInstant,
      @JsonKey(name: '_minValueInstant')
      final PrimitiveElement? minValueInstantElement,
      final FhirTime? minValueTime,
      @JsonKey(name: '_minValueTime')
      final PrimitiveElement? minValueTimeElement,
      final FhirDecimal? minValueDecimal,
      @JsonKey(name: '_minValueDecimal')
      final PrimitiveElement? minValueDecimalElement,
      final FhirInteger? minValueInteger,
      @JsonKey(name: '_minValueInteger')
      final PrimitiveElement? minValueIntegerElement,
      final FhirPositiveInt? minValuePositiveInt,
      @JsonKey(name: '_minValuePositiveInt')
      final PrimitiveElement? minValuePositiveIntElement,
      final FhirUnsignedInt? minValueUnsignedInt,
      @JsonKey(name: '_minValueUnsignedInt')
      final PrimitiveElement? minValueUnsignedIntElement,
      final Quantity? minValueQuantity,
      final FhirDate? maxValueDate,
      @JsonKey(name: '_maxValueDate')
      final PrimitiveElement? maxValueDateElement,
      final FhirDateTime? maxValueDateTime,
      @JsonKey(name: '_maxValueDateTime')
      final PrimitiveElement? maxValueDateTimeElement,
      final FhirInstant? maxValueInstant,
      @JsonKey(name: '_maxValueInstant')
      final PrimitiveElement? maxValueInstantElement,
      final FhirTime? maxValueTime,
      @JsonKey(name: '_maxValueTime')
      final PrimitiveElement? maxValueTimeElement,
      final FhirDecimal? maxValueDecimal,
      @JsonKey(name: '_maxValueDecimal')
      final PrimitiveElement? maxValueDecimalElement,
      final FhirInteger? maxValueInteger,
      @JsonKey(name: '_maxValueInteger')
      final PrimitiveElement? maxValueIntegerElement,
      final FhirPositiveInt? maxValuePositiveInt,
      @JsonKey(name: '_maxValuePositiveInt')
      final PrimitiveElement? maxValuePositiveIntElement,
      final FhirUnsignedInt? maxValueUnsignedInt,
      @JsonKey(name: '_maxValueUnsignedInt')
      final PrimitiveElement? maxValueUnsignedIntElement,
      final Quantity? maxValueQuantity,
      final FhirInteger? maxLength,
      @JsonKey(name: '_maxLength') final PrimitiveElement? maxLengthElement,
      final List<FhirId>? condition,
      @JsonKey(name: '_condition')
      final List<PrimitiveElement>? conditionElement,
      final List<ElementDefinitionConstraint>? constraint,
      final FhirBoolean? mustSupport,
      @JsonKey(name: '_mustSupport') final PrimitiveElement? mustSupportElement,
      final FhirBoolean? isModifier,
      @JsonKey(name: '_isModifier') final PrimitiveElement? isModifierElement,
      final String? isModifierReason,
      @JsonKey(name: '_isModifierReason')
      final PrimitiveElement? isModifierReasonElement,
      final FhirBoolean? isSummary,
      @JsonKey(name: '_isSummary') final PrimitiveElement? isSummaryElement,
      final ElementDefinitionBinding? binding,
      final List<ElementDefinitionMapping>? mapping}) = _$ElementDefinitionImpl;
  _ElementDefinition._() : super._();

  factory _ElementDefinition.fromJson(Map<String, dynamic> json) =
      _$ElementDefinitionImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [path] The path identifies the element and is expressed as a
  /// "."-separated list of ancestor elements, beginning with the name of the
  ///  resource or extension.
  @override
  String? get path;

  /// [pathElement] Extensions for path
  @override
  @JsonKey(name: '_path')
  PrimitiveElement? get pathElement;

  /// [representation] Codes that define how this element is represented in
  ///  instances, when the deviation varies from the normal case.
  @override
  List<ElementDefinitionRepresentation>? get representation;

  /// [representationElement] Extensions for representation
  @override
  @JsonKey(name: '_representation')
  List<PrimitiveElement>? get representationElement;

  /// [sliceName] The name of this element definition slice, when slicing is
  /// working. The name must be a token with no dots or spaces. This is a unique
  /// name referring to a specific set of constraints applied to this element,
  ///  used to provide a name to different slices of the same element.
  @override
  String? get sliceName;

  /// [sliceNameElement] Extensions for sliceName
  @override
  @JsonKey(name: '_sliceName')
  PrimitiveElement? get sliceNameElement;

  /// [sliceIsConstraining] If true, indicates that this slice definition is
  /// constraining a slice definition with the same name in an inherited
  /// profile. If false, the slice is not overriding any slice in an inherited
  /// profile. If missing, the slice might or might not be overriding a slice in
  ///  an inherited profile, depending on the sliceName.
  @override
  FhirBoolean? get sliceIsConstraining;

  /// [sliceIsConstrainingElement] Extensions for sliceIsConstraining
  @override
  @JsonKey(name: '_sliceIsConstraining')
  PrimitiveElement? get sliceIsConstrainingElement;

  /// [label] A single preferred label which is the text to display beside the
  /// element indicating its meaning or to use to prompt for the element in a
  ///  user display or form.
  @override
  String? get label;

  /// [labelElement] Extensions for label
  @override
  @JsonKey(name: '_label')
  PrimitiveElement? get labelElement;

  /// [code] A code that has the same meaning as the element in a particular
  ///  terminology.
  @override
  List<Coding>? get code;

  /// [slicing] Indicates that the element is sliced into a set of alternative
  /// definitions (i.e. in a structure definition, there are multiple different
  /// constraints on a single element in the base resource). Slicing can be used
  /// in any resource that has cardinality ..* on the base resource, or any
  /// resource with a choice of types. The set of slices is any elements that
  /// come after this in the element sequence that have the same path, until a
  ///  shorter path occurs (the shorter path terminates the set).
  @override
  ElementDefinitionSlicing? get slicing;

  /// [short] A concise description of what this element means (e.g. for use in
  ///  autogenerated summaries).
  @override
  String? get short;

  /// [shortElement] Extensions for short
  @override
  @JsonKey(name: '_short')
  PrimitiveElement? get shortElement;

  /// [definition] Provides a complete explanation of the meaning of the data
  /// element for human readability.  For the case of elements derived from
  /// existing elements (e.g. constraints), the definition SHALL be consistent
  /// with the base definition, but convey the meaning of the element in the
  /// particular context of use of the resource. (Note: The text you are reading
  ///  is specified in ElementDefinition.definition).
  @override
  FhirMarkdown? get definition;

  /// [definitionElement] Extensions for definition
  @override
  @JsonKey(name: '_definition')
  PrimitiveElement? get definitionElement;

  /// [comment] Explanatory notes and implementation guidance about the data
  /// element, including notes about how to use the data properly, exceptions to
  /// proper use, etc. (Note: The text you are reading is specified in
  ///  ElementDefinition.comment).
  @override
  FhirMarkdown? get comment;

  /// [commentElement] Extensions for comment
  @override
  @JsonKey(name: '_comment')
  PrimitiveElement? get commentElement;

  /// [requirements] This element is for traceability of why the element was
  /// created and why the constraints exist as they do. This may be used to
  /// point to source materials or specifications that drove the structure of
  ///  this element.
  @override
  FhirMarkdown? get requirements;

  /// [requirementsElement] Extensions for requirements
  @override
  @JsonKey(name: '_requirements')
  PrimitiveElement? get requirementsElement;

  /// [alias] Identifies additional names by which this element might also be
  ///  known.
  @override
  List<String>? get alias;

  /// [aliasElement] Extensions for alias
  @override
  @JsonKey(name: '_alias')
  List<PrimitiveElement>? get aliasElement;

  /// [min] The minimum number of times this element SHALL appear in the
  ///  instance.
  @override
  FhirUnsignedInt? get min;

  /// [minElement] Extensions for min
  @override
  @JsonKey(name: '_min')
  PrimitiveElement? get minElement;

  /// [max] The maximum number of times this element is permitted to appear in
  ///  the instance.
  @override
  String? get max;

  /// [maxElement] Extensions for max
  @override
  @JsonKey(name: '_max')
  PrimitiveElement? get maxElement;

  /// [base] Information about the base definition of the element, provided to
  /// make it unnecessary for tools to trace the deviation of the element
  /// through the derived and related profiles. When the element definition is
  /// not the original definition of an element - i.g. either in a constraint on
  /// another type, or for elements from a super type in a snap shot - then the
  /// information in provided in the element definition may be different to the
  /// base definition. On the original definition of the element, it will be
  ///  same.
  @override
  ElementDefinitionBase? get base;

  /// [contentReference] Identifies an element defined elsewhere in the
  /// definition whose content rules should be applied to the current element.
  /// ContentReferences bring across all the rules that are in the
  /// ElementDefinition for the element, including definitions, cardinality
  ///  constraints, bindings, invariants etc.
  @override
  FhirUri? get contentReference;

  /// [contentReferenceElement] Extensions for contentReference
  @override
  @JsonKey(name: '_contentReference')
  PrimitiveElement? get contentReferenceElement;

  /// [type] The data type or resource that the value of this element is
  ///  permitted to be.
  @override
  List<ElementDefinitionType>? get type;

  /// [defaultValueBase64Binary] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  FhirBase64Binary? get defaultValueBase64Binary;
  @override
  @JsonKey(name: '_defaultValueBase64Binary')
  PrimitiveElement? get defaultValueBase64BinaryElement;

  /// [defaultValueBoolean] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  FhirBoolean? get defaultValueBoolean;

  /// [defaultValueBooleanElement] Extensions for defaultValueBoolean
  @override
  @JsonKey(name: '_defaultValueBoolean')
  PrimitiveElement? get defaultValueBooleanElement;

  /// [defaultValueCanonical] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  FhirCanonical? get defaultValueCanonical;
  @override
  @JsonKey(name: '_defaultValueCanonical')
  PrimitiveElement? get defaultValueCanonicalElement;

  /// [defaultValueCode] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  FhirCode? get defaultValueCode;

  /// [defaultValueCodeElement] Extensions for defaultValueCode
  @override
  @JsonKey(name: '_defaultValueCode')
  PrimitiveElement? get defaultValueCodeElement;

  /// [defaultValueDate] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  FhirDate? get defaultValueDate;

  /// [defaultValueDateElement] Extensions for defaultValueDate
  @override
  @JsonKey(name: '_defaultValueDate')
  PrimitiveElement? get defaultValueDateElement;

  /// [defaultValueDateTime] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  FhirDateTime? get defaultValueDateTime;
  @override
  @JsonKey(name: '_defaultValueDateTime')
  PrimitiveElement? get defaultValueDateTimeElement;

  /// [defaultValueDecimal] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  FhirDecimal? get defaultValueDecimal;

  /// [defaultValueDecimalElement] Extensions for defaultValueDecimal
  @override
  @JsonKey(name: '_defaultValueDecimal')
  PrimitiveElement? get defaultValueDecimalElement;

  /// [defaultValueId] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  FhirId? get defaultValueId;

  /// [defaultValueIdElement] Extensions for defaultValueId
  @override
  @JsonKey(name: '_defaultValueId')
  PrimitiveElement? get defaultValueIdElement;

  /// [defaultValueInstant] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  FhirInstant? get defaultValueInstant;

  /// [defaultValueInstantElement] Extensions for defaultValueInstant
  @override
  @JsonKey(name: '_defaultValueInstant')
  PrimitiveElement? get defaultValueInstantElement;

  /// [defaultValueInteger] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  FhirInteger? get defaultValueInteger;

  /// [defaultValueIntegerElement] Extensions for defaultValueInteger
  @override
  @JsonKey(name: '_defaultValueInteger')
  PrimitiveElement? get defaultValueIntegerElement;

  /// [defaultValueMarkdown] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  FhirMarkdown? get defaultValueMarkdown;
  @override
  @JsonKey(name: '_defaultValueMarkdown')
  PrimitiveElement? get defaultValueMarkdownElement;

  /// [defaultValueOid] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  FhirOid? get defaultValueOid;

  /// [defaultValueOidElement] Extensions for defaultValueOid
  @override
  @JsonKey(name: '_defaultValueOid')
  PrimitiveElement? get defaultValueOidElement;

  /// [defaultValuePositiveInt] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  FhirPositiveInt? get defaultValuePositiveInt;
  @override
  @JsonKey(name: '_defaultValuePositiveInt')
  PrimitiveElement? get defaultValuePositiveIntElement;

  /// [defaultValueString] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  String? get defaultValueString;

  /// [defaultValueStringElement] Extensions for defaultValueString
  @override
  @JsonKey(name: '_defaultValueString')
  PrimitiveElement? get defaultValueStringElement;

  /// [defaultValueTime] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  FhirTime? get defaultValueTime;

  /// [defaultValueTimeElement] Extensions for defaultValueTime
  @override
  @JsonKey(name: '_defaultValueTime')
  PrimitiveElement? get defaultValueTimeElement;

  /// [defaultValueUnsignedInt] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  FhirUnsignedInt? get defaultValueUnsignedInt;
  @override
  @JsonKey(name: '_defaultValueUnsignedInt')
  PrimitiveElement? get defaultValueUnsignedIntElement;

  /// [defaultValueUri] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  FhirUri? get defaultValueUri;

  /// [defaultValueUriElement] Extensions for defaultValueUri
  @override
  @JsonKey(name: '_defaultValueUri')
  PrimitiveElement? get defaultValueUriElement;

  /// [defaultValueUrl] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  FhirUrl? get defaultValueUrl;

  /// [defaultValueUrlElement] Extensions for defaultValueUrl
  @override
  @JsonKey(name: '_defaultValueUrl')
  PrimitiveElement? get defaultValueUrlElement;

  /// [defaultValueUuid] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  FhirUuid? get defaultValueUuid;

  /// [defaultValueUuidElement] Extensions for defaultValueUuid
  @override
  @JsonKey(name: '_defaultValueUuid')
  PrimitiveElement? get defaultValueUuidElement;

  /// [defaultValueAddress] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  Address? get defaultValueAddress;

  /// [defaultValueAge] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  Age? get defaultValueAge;

  /// [defaultValueAnnotation] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  Annotation? get defaultValueAnnotation;

  /// [defaultValueAttachment] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  Attachment? get defaultValueAttachment;

  /// [defaultValueCodeableConcept] The value that should be used if there is
  /// no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  CodeableConcept? get defaultValueCodeableConcept;
  @override
  CodeableReference? get defaultValueCodeableReference;

  /// [defaultValueCoding] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  Coding? get defaultValueCoding;

  /// [defaultValueContactPoint] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  ContactPoint? get defaultValueContactPoint;

  /// [defaultValueCount] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  Count? get defaultValueCount;

  /// [defaultValueDistance] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  Distance? get defaultValueDistance;

  /// [defaultValueDuration] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  FhirDuration? get defaultValueDuration;

  /// [defaultValueHumanName] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  HumanName? get defaultValueHumanName;

  /// [defaultValueIdentifier] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  Identifier? get defaultValueIdentifier;

  /// [defaultValueMoney] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  Money? get defaultValueMoney;

  /// [defaultValuePeriod] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  Period? get defaultValuePeriod;

  /// [defaultValueQuantity] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  Quantity? get defaultValueQuantity;

  /// [defaultValueRange] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  Range? get defaultValueRange;

  /// [defaultValueRatio] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  Ratio? get defaultValueRatio;
  @override
  RatioRange? get defaultValueRatioRange;

  /// [defaultValueReference] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  Reference? get defaultValueReference;

  /// [defaultValueSampledData] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  SampledData? get defaultValueSampledData;

  /// [defaultValueSignature] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  Signature? get defaultValueSignature;

  /// [defaultValueTiming] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  Timing? get defaultValueTiming;

  /// [defaultValueContactDetail] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  ContactDetail? get defaultValueContactDetail;

  /// [defaultValueContributor] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  Contributor? get defaultValueContributor;

  /// [defaultValueDataRequirement] The value that should be used if there is
  /// no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  DataRequirement? get defaultValueDataRequirement;

  /// [defaultValueExpression] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  FhirExpression? get defaultValueExpression;

  /// [defaultValueParameterDefinition] The value that should be used if there
  /// is no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  ParameterDefinition? get defaultValueParameterDefinition;

  /// [defaultValueRelatedArtifact] The value that should be used if there is
  /// no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  RelatedArtifact? get defaultValueRelatedArtifact;

  /// [defaultValueTriggerDefinition] The value that should be used if there is
  /// no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  TriggerDefinition? get defaultValueTriggerDefinition;

  /// [defaultValueUsageContext] The value that should be used if there is no
  /// value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  @override
  UsageContext? get defaultValueUsageContext;

  /// [defaultValueDosage] The value that should be used if there is no value
  /// stated in the instance (e.g. 'if not otherwise specified, the abstract is
  ///  false').
  @override
  Dosage? get defaultValueDosage;

  /// [meaningWhenMissing] The Implicit meaning that is to be understood when
  /// this element is missing (e.g. 'when this element is missing, the period is
  ///  ongoing').
  @override
  FhirMarkdown? get meaningWhenMissing;

  /// [meaningWhenMissingElement] Extensions for meaningWhenMissing
  @override
  @JsonKey(name: '_meaningWhenMissing')
  PrimitiveElement? get meaningWhenMissingElement;

  /// [orderMeaning] If present, indicates that the order of the repeating
  /// element has meaning and describes what that meaning is.  If absent, it
  ///  means that the order of the element has no meaning.
  @override
  String? get orderMeaning;

  /// [orderMeaningElement] Extensions for orderMeaning
  @override
  @JsonKey(name: '_orderMeaning')
  PrimitiveElement? get orderMeaningElement;

  /// [fixedBase64Binary] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  FhirBase64Binary? get fixedBase64Binary;

  /// [fixedBase64BinaryElement] Extensions for fixedBase64Binary
  @override
  @JsonKey(name: '_fixedBase64Binary')
  PrimitiveElement? get fixedBase64BinaryElement;

  /// [fixedBoolean] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirBoolean? get fixedBoolean;

  /// [fixedBooleanElement] Extensions for fixedBoolean
  @override
  @JsonKey(name: '_fixedBoolean')
  PrimitiveElement? get fixedBooleanElement;

  /// [fixedCanonical] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirCanonical? get fixedCanonical;

  /// [fixedCanonicalElement] Extensions for fixedCanonical
  @override
  @JsonKey(name: '_fixedCanonical')
  PrimitiveElement? get fixedCanonicalElement;

  /// [fixedCode] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirCode? get fixedCode;

  /// [fixedCodeElement] Extensions for fixedCode
  @override
  @JsonKey(name: '_fixedCode')
  PrimitiveElement? get fixedCodeElement;

  /// [fixedDate] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirDate? get fixedDate;

  /// [fixedDateElement] Extensions for fixedDate
  @override
  @JsonKey(name: '_fixedDate')
  PrimitiveElement? get fixedDateElement;

  /// [fixedDateTime] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirDateTime? get fixedDateTime;

  /// [fixedDateTimeElement] Extensions for fixedDateTime
  @override
  @JsonKey(name: '_fixedDateTime')
  PrimitiveElement? get fixedDateTimeElement;

  /// [fixedDecimal] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirDecimal? get fixedDecimal;

  /// [fixedDecimalElement] Extensions for fixedDecimal
  @override
  @JsonKey(name: '_fixedDecimal')
  PrimitiveElement? get fixedDecimalElement;

  /// [fixedId] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirId? get fixedId;

  /// [fixedIdElement] Extensions for fixedId
  @override
  @JsonKey(name: '_fixedId')
  PrimitiveElement? get fixedIdElement;

  /// [fixedInstant] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirInstant? get fixedInstant;

  /// [fixedInstantElement] Extensions for fixedInstant
  @override
  @JsonKey(name: '_fixedInstant')
  PrimitiveElement? get fixedInstantElement;

  /// [fixedInteger] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirInteger? get fixedInteger;

  /// [fixedIntegerElement] Extensions for fixedInteger
  @override
  @JsonKey(name: '_fixedInteger')
  PrimitiveElement? get fixedIntegerElement;

  /// [fixedMarkdown] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirMarkdown? get fixedMarkdown;

  /// [fixedMarkdownElement] Extensions for fixedMarkdown
  @override
  @JsonKey(name: '_fixedMarkdown')
  PrimitiveElement? get fixedMarkdownElement;

  /// [fixedOid] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirOid? get fixedOid;

  /// [fixedOidElement] Extensions for fixedOid
  @override
  @JsonKey(name: '_fixedOid')
  PrimitiveElement? get fixedOidElement;

  /// [fixedPositiveInt] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirPositiveInt? get fixedPositiveInt;

  /// [fixedPositiveIntElement] Extensions for fixedPositiveInt
  @override
  @JsonKey(name: '_fixedPositiveInt')
  PrimitiveElement? get fixedPositiveIntElement;

  /// [fixedString] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  String? get fixedString;

  /// [fixedStringElement] Extensions for fixedString
  @override
  @JsonKey(name: '_fixedString')
  PrimitiveElement? get fixedStringElement;

  /// [fixedTime] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirTime? get fixedTime;

  /// [fixedTimeElement] Extensions for fixedTime
  @override
  @JsonKey(name: '_fixedTime')
  PrimitiveElement? get fixedTimeElement;

  /// [fixedUnsignedInt] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirUnsignedInt? get fixedUnsignedInt;

  /// [fixedUnsignedIntElement] Extensions for fixedUnsignedInt
  @override
  @JsonKey(name: '_fixedUnsignedInt')
  PrimitiveElement? get fixedUnsignedIntElement;

  /// [fixedUri] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirUri? get fixedUri;

  /// [fixedUriElement] Extensions for fixedUri
  @override
  @JsonKey(name: '_fixedUri')
  PrimitiveElement? get fixedUriElement;

  /// [fixedUrl] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirUrl? get fixedUrl;

  /// [fixedUrlElement] Extensions for fixedUrl
  @override
  @JsonKey(name: '_fixedUrl')
  PrimitiveElement? get fixedUrlElement;

  /// [fixedUuid] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirUuid? get fixedUuid;

  /// [fixedUuidElement] Extensions for fixedUuid
  @override
  @JsonKey(name: '_fixedUuid')
  PrimitiveElement? get fixedUuidElement;

  /// [fixedAddress] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Address? get fixedAddress;

  /// [fixedAge] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Age? get fixedAge;

  /// [fixedAnnotation] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Annotation? get fixedAnnotation;

  /// [fixedAttachment] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Attachment? get fixedAttachment;

  /// [fixedCodeableConcept] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  CodeableConcept? get fixedCodeableConcept;
  @override
  CodeableReference? get fixedCodeableReference;

  /// [fixedCoding] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Coding? get fixedCoding;

  /// [fixedContactPoint] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  ContactPoint? get fixedContactPoint;

  /// [fixedCount] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Count? get fixedCount;

  /// [fixedDistance] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Distance? get fixedDistance;

  /// [fixedDuration] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirDuration? get fixedDuration;

  /// [fixedHumanName] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  HumanName? get fixedHumanName;

  /// [fixedIdentifier] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Identifier? get fixedIdentifier;

  /// [fixedMoney] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Money? get fixedMoney;

  /// [fixedPeriod] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Period? get fixedPeriod;

  /// [fixedQuantity] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Quantity? get fixedQuantity;

  /// [fixedRange] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Range? get fixedRange;

  /// [fixedRatio] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Ratio? get fixedRatio;
  @override
  RatioRange? get fixedRatioRange;

  /// [fixedReference] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Reference? get fixedReference;

  /// [fixedSampledData] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  SampledData? get fixedSampledData;

  /// [fixedSignature] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Signature? get fixedSignature;

  /// [fixedTiming] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Timing? get fixedTiming;

  /// [fixedContactDetail] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  ContactDetail? get fixedContactDetail;

  /// [fixedContributor] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Contributor? get fixedContributor;

  /// [fixedDataRequirement] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  DataRequirement? get fixedDataRequirement;

  /// [fixedExpression] Specifies a value that SHALL be exactly the value  for
  /// this element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  FhirExpression? get fixedExpression;

  /// [fixedParameterDefinition] Specifies a value that SHALL be exactly the
  /// value  for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  ParameterDefinition? get fixedParameterDefinition;

  /// [fixedRelatedArtifact] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  RelatedArtifact? get fixedRelatedArtifact;

  /// [fixedTriggerDefinition] Specifies a value that SHALL be exactly the
  /// value  for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  TriggerDefinition? get fixedTriggerDefinition;

  /// [fixedUsageContext] Specifies a value that SHALL be exactly the value
  /// for this element in the instance. For purposes of comparison,
  /// non-significant whitespace is ignored, and all values must be an exact
  /// match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  @override
  UsageContext? get fixedUsageContext;

  /// [fixedDosage] Specifies a value that SHALL be exactly the value  for this
  /// element in the instance. For purposes of comparison, non-significant
  /// whitespace is ignored, and all values must be an exact match (case and
  ///  accent sensitive). Missing elements/attributes must also be missing.
  @override
  Dosage? get fixedDosage;

  /// [patternBase64Binary] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirBase64Binary? get patternBase64Binary;

  /// [patternBase64BinaryElement] Extensions for patternBase64Binary
  @override
  @JsonKey(name: '_patternBase64Binary')
  PrimitiveElement? get patternBase64BinaryElement;

  /// [patternBoolean] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirBoolean? get patternBoolean;

  /// [patternBooleanElement] Extensions for patternBoolean
  @override
  @JsonKey(name: '_patternBoolean')
  PrimitiveElement? get patternBooleanElement;

  /// [patternCanonical] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirCanonical? get patternCanonical;

  /// [patternCanonicalElement] Extensions for patternCanonical
  @override
  @JsonKey(name: '_patternCanonical')
  PrimitiveElement? get patternCanonicalElement;

  /// [patternCode] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirCode? get patternCode;

  /// [patternCodeElement] Extensions for patternCode
  @override
  @JsonKey(name: '_patternCode')
  PrimitiveElement? get patternCodeElement;

  /// [patternDate] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirDate? get patternDate;

  /// [patternDateElement] Extensions for patternDate
  @override
  @JsonKey(name: '_patternDate')
  PrimitiveElement? get patternDateElement;

  /// [patternDateTime] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirDateTime? get patternDateTime;

  /// [patternDateTimeElement] Extensions for patternDateTime
  @override
  @JsonKey(name: '_patternDateTime')
  PrimitiveElement? get patternDateTimeElement;

  /// [patternDecimal] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirDecimal? get patternDecimal;

  /// [patternDecimalElement] Extensions for patternDecimal
  @override
  @JsonKey(name: '_patternDecimal')
  PrimitiveElement? get patternDecimalElement;

  /// [patternId] Specifies a value that the value in the instance SHALL follow
  /// - that is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  ///  example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirId? get patternId;

  /// [patternIdElement] Extensions for patternId
  @override
  @JsonKey(name: '_patternId')
  PrimitiveElement? get patternIdElement;

  /// [patternInstant] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirInstant? get patternInstant;

  /// [patternInstantElement] Extensions for patternInstant
  @override
  @JsonKey(name: '_patternInstant')
  PrimitiveElement? get patternInstantElement;

  /// [patternInteger] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirInteger? get patternInteger;

  /// [patternIntegerElement] Extensions for patternInteger
  @override
  @JsonKey(name: '_patternInteger')
  PrimitiveElement? get patternIntegerElement;

  /// [patternMarkdown] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirMarkdown? get patternMarkdown;

  /// [patternMarkdownElement] Extensions for patternMarkdown
  @override
  @JsonKey(name: '_patternMarkdown')
  PrimitiveElement? get patternMarkdownElement;

  /// [patternOid] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirOid? get patternOid;

  /// [patternOidElement] Extensions for patternOid
  @override
  @JsonKey(name: '_patternOid')
  PrimitiveElement? get patternOidElement;

  /// [patternPositiveInt] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirPositiveInt? get patternPositiveInt;

  /// [patternPositiveIntElement] Extensions for patternPositiveInt
  @override
  @JsonKey(name: '_patternPositiveInt')
  PrimitiveElement? get patternPositiveIntElement;

  /// [patternString] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  String? get patternString;

  /// [patternStringElement] Extensions for patternString
  @override
  @JsonKey(name: '_patternString')
  PrimitiveElement? get patternStringElement;

  /// [patternTime] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirTime? get patternTime;

  /// [patternTimeElement] Extensions for patternTime
  @override
  @JsonKey(name: '_patternTime')
  PrimitiveElement? get patternTimeElement;

  /// [patternUnsignedInt] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirUnsignedInt? get patternUnsignedInt;

  /// [patternUnsignedIntElement] Extensions for patternUnsignedInt
  @override
  @JsonKey(name: '_patternUnsignedInt')
  PrimitiveElement? get patternUnsignedIntElement;

  /// [patternUri] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirUri? get patternUri;

  /// [patternUriElement] Extensions for patternUri
  @override
  @JsonKey(name: '_patternUri')
  PrimitiveElement? get patternUriElement;

  /// [patternUrl] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirUrl? get patternUrl;

  /// [patternUrlElement] Extensions for patternUrl
  @override
  @JsonKey(name: '_patternUrl')
  PrimitiveElement? get patternUrlElement;

  /// [patternUuid] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirUuid? get patternUuid;

  /// [patternUuidElement] Extensions for patternUuid
  @override
  @JsonKey(name: '_patternUuid')
  PrimitiveElement? get patternUuidElement;

  /// [patternAddress] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Address? get patternAddress;

  /// [patternAge] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Age? get patternAge;

  /// [patternAnnotation] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Annotation? get patternAnnotation;

  /// [patternAttachment] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Attachment? get patternAttachment;

  /// [patternCodeableConcept] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  CodeableConcept? get patternCodeableConcept;
  @override
  CodeableReference? get patternCodeableReference;

  /// [patternCoding] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Coding? get patternCoding;

  /// [patternContactPoint] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  ContactPoint? get patternContactPoint;

  /// [patternCount] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Count? get patternCount;

  /// [patternDistance] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Distance? get patternDistance;

  /// [patternDuration] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirDuration? get patternDuration;

  /// [patternHumanName] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  HumanName? get patternHumanName;

  /// [patternIdentifier] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Identifier? get patternIdentifier;

  /// [patternMoney] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Money? get patternMoney;

  /// [patternPeriod] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Period? get patternPeriod;

  /// [patternQuantity] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Quantity? get patternQuantity;

  /// [patternRange] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Range? get patternRange;

  /// [patternRatio] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Ratio? get patternRatio;
  @override
  RatioRange? get patternRatioRange;

  /// [patternReference] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Reference? get patternReference;

  /// [patternSampledData] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  SampledData? get patternSampledData;

  /// [patternSignature] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Signature? get patternSignature;

  /// [patternTiming] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Timing? get patternTiming;

  /// [patternContactDetail] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  ContactDetail? get patternContactDetail;

  /// [patternContributor] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Contributor? get patternContributor;

  /// [patternDataRequirement] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  DataRequirement? get patternDataRequirement;

  /// [patternExpression] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  FhirExpression? get patternExpression;

  /// [patternParameterDefinition] Specifies a value that the value in the
  /// instance SHALL follow - that is, any value in the pattern must be found in
  /// the instance. Other additional values may be found too. This is
  ///  effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  ParameterDefinition? get patternParameterDefinition;

  /// [patternRelatedArtifact] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  RelatedArtifact? get patternRelatedArtifact;

  /// [patternTriggerDefinition] Specifies a value that the value in the
  /// instance SHALL follow - that is, any value in the pattern must be found in
  /// the instance. Other additional values may be found too. This is
  ///  effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  TriggerDefinition? get patternTriggerDefinition;

  /// [patternUsageContext] Specifies a value that the value in the instance
  /// SHALL follow - that is, any value in the pattern must be found in the
  /// instance. Other additional values may be found too. This is effectively
  ///  constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  UsageContext? get patternUsageContext;

  /// [patternDosage] Specifies a value that the value in the instance SHALL
  /// follow - that is, any value in the pattern must be found in the instance.
  /// Other additional values may be found too. This is effectively constraint
  ///  by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element
  /// provided in the pattern[x] array must (recursively) match at least one
  ///  element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each
  /// property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  @override
  Dosage? get patternDosage;

  /// [example] A sample value for this element demonstrating the type of
  ///  information that would typically be found in the element.
  @override
  List<ElementDefinitionExample>? get example;

  /// [minValueDate] The minimum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  FhirDate? get minValueDate;

  /// [minValueDateElement] Extensions for minValueDate
  @override
  @JsonKey(name: '_minValueDate')
  PrimitiveElement? get minValueDateElement;

  /// [minValueDateTime] The minimum allowed value for the element. The value
  /// is inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  FhirDateTime? get minValueDateTime;

  /// [minValueDateTimeElement] Extensions for minValueDateTime
  @override
  @JsonKey(name: '_minValueDateTime')
  PrimitiveElement? get minValueDateTimeElement;

  /// [minValueInstant] The minimum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  FhirInstant? get minValueInstant;

  /// [minValueInstantElement] Extensions for minValueInstant
  @override
  @JsonKey(name: '_minValueInstant')
  PrimitiveElement? get minValueInstantElement;

  /// [minValueTime] The minimum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  FhirTime? get minValueTime;

  /// [minValueTimeElement] Extensions for minValueTime
  @override
  @JsonKey(name: '_minValueTime')
  PrimitiveElement? get minValueTimeElement;

  /// [minValueDecimal] The minimum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  FhirDecimal? get minValueDecimal;

  /// [minValueDecimalElement] Extensions for minValueDecimal
  @override
  @JsonKey(name: '_minValueDecimal')
  PrimitiveElement? get minValueDecimalElement;

  /// [minValueInteger] The minimum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  FhirInteger? get minValueInteger;

  /// [minValueIntegerElement] Extensions for minValueInteger
  @override
  @JsonKey(name: '_minValueInteger')
  PrimitiveElement? get minValueIntegerElement;

  /// [minValuePositiveInt] The minimum allowed value for the element. The
  /// value is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  @override
  FhirPositiveInt? get minValuePositiveInt;

  /// [minValuePositiveIntElement] Extensions for minValuePositiveInt
  @override
  @JsonKey(name: '_minValuePositiveInt')
  PrimitiveElement? get minValuePositiveIntElement;

  /// [minValueUnsignedInt] The minimum allowed value for the element. The
  /// value is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  @override
  FhirUnsignedInt? get minValueUnsignedInt;

  /// [minValueUnsignedIntElement] Extensions for minValueUnsignedInt
  @override
  @JsonKey(name: '_minValueUnsignedInt')
  PrimitiveElement? get minValueUnsignedIntElement;

  /// [minValueQuantity] The minimum allowed value for the element. The value
  /// is inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  Quantity? get minValueQuantity;

  /// [maxValueDate] The maximum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  FhirDate? get maxValueDate;

  /// [maxValueDateElement] Extensions for maxValueDate
  @override
  @JsonKey(name: '_maxValueDate')
  PrimitiveElement? get maxValueDateElement;

  /// [maxValueDateTime] The maximum allowed value for the element. The value
  /// is inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  FhirDateTime? get maxValueDateTime;

  /// [maxValueDateTimeElement] Extensions for maxValueDateTime
  @override
  @JsonKey(name: '_maxValueDateTime')
  PrimitiveElement? get maxValueDateTimeElement;

  /// [maxValueInstant] The maximum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  FhirInstant? get maxValueInstant;

  /// [maxValueInstantElement] Extensions for maxValueInstant
  @override
  @JsonKey(name: '_maxValueInstant')
  PrimitiveElement? get maxValueInstantElement;

  /// [maxValueTime] The maximum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  FhirTime? get maxValueTime;

  /// [maxValueTimeElement] Extensions for maxValueTime
  @override
  @JsonKey(name: '_maxValueTime')
  PrimitiveElement? get maxValueTimeElement;

  /// [maxValueDecimal] The maximum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  FhirDecimal? get maxValueDecimal;

  /// [maxValueDecimalElement] Extensions for maxValueDecimal
  @override
  @JsonKey(name: '_maxValueDecimal')
  PrimitiveElement? get maxValueDecimalElement;

  /// [maxValueInteger] The maximum allowed value for the element. The value is
  /// inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  FhirInteger? get maxValueInteger;

  /// [maxValueIntegerElement] Extensions for maxValueInteger
  @override
  @JsonKey(name: '_maxValueInteger')
  PrimitiveElement? get maxValueIntegerElement;

  /// [maxValuePositiveInt] The maximum allowed value for the element. The
  /// value is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  @override
  FhirPositiveInt? get maxValuePositiveInt;

  /// [maxValuePositiveIntElement] Extensions for maxValuePositiveInt
  @override
  @JsonKey(name: '_maxValuePositiveInt')
  PrimitiveElement? get maxValuePositiveIntElement;

  /// [maxValueUnsignedInt] The maximum allowed value for the element. The
  /// value is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  @override
  FhirUnsignedInt? get maxValueUnsignedInt;

  /// [maxValueUnsignedIntElement] Extensions for maxValueUnsignedInt
  @override
  @JsonKey(name: '_maxValueUnsignedInt')
  PrimitiveElement? get maxValueUnsignedIntElement;

  /// [maxValueQuantity] The maximum allowed value for the element. The value
  /// is inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  @override
  Quantity? get maxValueQuantity;

  /// [maxLength] Indicates the maximum length in characters that is permitted
  /// to be present in conformant instances and which is expected to be
  ///  supported by conformant consumers that support the element.
  @override
  FhirInteger? get maxLength;

  /// [maxLengthElement] Extensions for maxLength
  @override
  @JsonKey(name: '_maxLength')
  PrimitiveElement? get maxLengthElement;

  /// [condition] A reference to an invariant that may make additional
  ///  statements about the cardinality or value in the instance.
  @override
  List<FhirId>? get condition;

  /// [conditionElement] Extensions for condition
  @override
  @JsonKey(name: '_condition')
  List<PrimitiveElement>? get conditionElement;

  /// [constraint] Formal constraints such as co-occurrence and other
  /// constraints that can be computationally evaluated within the context of
  ///  the instance.
  @override
  List<ElementDefinitionConstraint>? get constraint;

  /// [mustSupport] If true, implementations that produce or consume resources
  /// SHALL provide "support" for the element in some meaningful way.  If false,
  /// the element may be ignored and not supported. If false, whether to
  /// populate or use the data element in any way is at the discretion of the
  ///  implementation.
  @override
  FhirBoolean? get mustSupport;

  /// [mustSupportElement] Extensions for mustSupport
  @override
  @JsonKey(name: '_mustSupport')
  PrimitiveElement? get mustSupportElement;

  /// [isModifier] If true, the value of this element affects the
  /// interpretation of the element or resource that contains it, and the value
  /// of the element cannot be ignored. Typically, this is used for status,
  /// negation and qualification codes. The effect of this is that the element
  /// cannot be ignored by systems: they SHALL either recognize the element and
  /// process it, and/or a pre-determination has been made that it is not
  ///  relevant to their particular system.
  @override
  FhirBoolean? get isModifier;

  /// [isModifierElement] Extensions for isModifier
  @override
  @JsonKey(name: '_isModifier')
  PrimitiveElement? get isModifierElement;

  /// [isModifierReason] Explains how that element affects the interpretation
  ///  of the resource or element that contains it.
  @override
  String? get isModifierReason;

  /// [isModifierReasonElement] Extensions for isModifierReason
  @override
  @JsonKey(name: '_isModifierReason')
  PrimitiveElement? get isModifierReasonElement;

  /// [isSummary] Whether the element should be included if a client requests a
  ///  search with the parameter _summary=true.
  @override
  FhirBoolean? get isSummary;

  /// [isSummaryElement] Extensions for isSummary
  @override
  @JsonKey(name: '_isSummary')
  PrimitiveElement? get isSummaryElement;

  /// [binding] Binds to a value set if this element is coded (code, Coding,
  ///  CodeableConcept, Quantity), or the data types (string, uri).
  @override
  ElementDefinitionBinding? get binding;

  /// [mapping] Identifies a concept from an external specification that
  ///  roughly corresponds to this element.
  @override
  List<ElementDefinitionMapping>? get mapping;

  /// Create a copy of ElementDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ElementDefinitionImplCopyWith<_$ElementDefinitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ElementDefinitionSlicing _$ElementDefinitionSlicingFromJson(
    Map<String, dynamic> json) {
  return _ElementDefinitionSlicing.fromJson(json);
}

/// @nodoc
mixin _$ElementDefinitionSlicing {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [discriminator] Designates which child elements are used to discriminate
  /// between the slices when processing an instance. If one or more
  /// discriminators are provided, the value of the child elements in the
  /// instance data SHALL completely distinguish which slice the element in the
  /// resource matches based on the allowed values for those elements in each of
  ///  the slices.
  List<ElementDefinitionDiscriminator>? get discriminator =>
      throw _privateConstructorUsedError;

  /// [description] A human-readable text description of how the slicing works.
  /// If there is no discriminator, this is required to be present to provide
  /// whatever information is possible about how the slices can be
  ///  differentiated.
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [ordered] If the matching elements have to occur in the same order as
  ///  defined in the profile.
  FhirBoolean? get ordered => throw _privateConstructorUsedError;

  /// [orderedElement] Extensions for ordered
  @JsonKey(name: '_ordered')
  PrimitiveElement? get orderedElement => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: ElementDefinitionSlicingRules.unknown)
  ElementDefinitionSlicingRules? get rules =>
      throw _privateConstructorUsedError;

  /// [rulesElement] Extensions for rules
  @JsonKey(name: '_rules')
  PrimitiveElement? get rulesElement => throw _privateConstructorUsedError;

  /// Serializes this ElementDefinitionSlicing to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ElementDefinitionSlicing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ElementDefinitionSlicingCopyWith<ElementDefinitionSlicing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementDefinitionSlicingCopyWith<$Res> {
  factory $ElementDefinitionSlicingCopyWith(ElementDefinitionSlicing value,
          $Res Function(ElementDefinitionSlicing) then) =
      _$ElementDefinitionSlicingCopyWithImpl<$Res, ElementDefinitionSlicing>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<ElementDefinitionDiscriminator>? discriminator,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirBoolean? ordered,
      @JsonKey(name: '_ordered') PrimitiveElement? orderedElement,
      @JsonKey(unknownEnumValue: ElementDefinitionSlicingRules.unknown)
      ElementDefinitionSlicingRules? rules,
      @JsonKey(name: '_rules') PrimitiveElement? rulesElement});
}

/// @nodoc
class _$ElementDefinitionSlicingCopyWithImpl<$Res,
        $Val extends ElementDefinitionSlicing>
    implements $ElementDefinitionSlicingCopyWith<$Res> {
  _$ElementDefinitionSlicingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ElementDefinitionSlicing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? discriminator = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? ordered = freezed,
    Object? orderedElement = freezed,
    Object? rules = freezed,
    Object? rulesElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      discriminator: freezed == discriminator
          ? _value.discriminator
          : discriminator // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinitionDiscriminator>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      ordered: freezed == ordered
          ? _value.ordered
          : ordered // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      orderedElement: freezed == orderedElement
          ? _value.orderedElement
          : orderedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as ElementDefinitionSlicingRules?,
      rulesElement: freezed == rulesElement
          ? _value.rulesElement
          : rulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElementDefinitionSlicingImplCopyWith<$Res>
    implements $ElementDefinitionSlicingCopyWith<$Res> {
  factory _$$ElementDefinitionSlicingImplCopyWith(
          _$ElementDefinitionSlicingImpl value,
          $Res Function(_$ElementDefinitionSlicingImpl) then) =
      __$$ElementDefinitionSlicingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<ElementDefinitionDiscriminator>? discriminator,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirBoolean? ordered,
      @JsonKey(name: '_ordered') PrimitiveElement? orderedElement,
      @JsonKey(unknownEnumValue: ElementDefinitionSlicingRules.unknown)
      ElementDefinitionSlicingRules? rules,
      @JsonKey(name: '_rules') PrimitiveElement? rulesElement});
}

/// @nodoc
class __$$ElementDefinitionSlicingImplCopyWithImpl<$Res>
    extends _$ElementDefinitionSlicingCopyWithImpl<$Res,
        _$ElementDefinitionSlicingImpl>
    implements _$$ElementDefinitionSlicingImplCopyWith<$Res> {
  __$$ElementDefinitionSlicingImplCopyWithImpl(
      _$ElementDefinitionSlicingImpl _value,
      $Res Function(_$ElementDefinitionSlicingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ElementDefinitionSlicing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? discriminator = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? ordered = freezed,
    Object? orderedElement = freezed,
    Object? rules = freezed,
    Object? rulesElement = freezed,
  }) {
    return _then(_$ElementDefinitionSlicingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      discriminator: freezed == discriminator
          ? _value._discriminator
          : discriminator // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinitionDiscriminator>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      ordered: freezed == ordered
          ? _value.ordered
          : ordered // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      orderedElement: freezed == orderedElement
          ? _value.orderedElement
          : orderedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as ElementDefinitionSlicingRules?,
      rulesElement: freezed == rulesElement
          ? _value.rulesElement
          : rulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElementDefinitionSlicingImpl extends _ElementDefinitionSlicing {
  _$ElementDefinitionSlicingImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<ElementDefinitionDiscriminator>? discriminator,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.ordered,
      @JsonKey(name: '_ordered') this.orderedElement,
      @JsonKey(unknownEnumValue: ElementDefinitionSlicingRules.unknown)
      this.rules,
      @JsonKey(name: '_rules') this.rulesElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _discriminator = discriminator,
        super._();

  factory _$ElementDefinitionSlicingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElementDefinitionSlicingImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [discriminator] Designates which child elements are used to discriminate
  /// between the slices when processing an instance. If one or more
  /// discriminators are provided, the value of the child elements in the
  /// instance data SHALL completely distinguish which slice the element in the
  /// resource matches based on the allowed values for those elements in each of
  ///  the slices.
  final List<ElementDefinitionDiscriminator>? _discriminator;

  /// [discriminator] Designates which child elements are used to discriminate
  /// between the slices when processing an instance. If one or more
  /// discriminators are provided, the value of the child elements in the
  /// instance data SHALL completely distinguish which slice the element in the
  /// resource matches based on the allowed values for those elements in each of
  ///  the slices.
  @override
  List<ElementDefinitionDiscriminator>? get discriminator {
    final value = _discriminator;
    if (value == null) return null;
    if (_discriminator is EqualUnmodifiableListView) return _discriminator;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [description] A human-readable text description of how the slicing works.
  /// If there is no discriminator, this is required to be present to provide
  /// whatever information is possible about how the slices can be
  ///  differentiated.
  @override
  final String? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [ordered] If the matching elements have to occur in the same order as
  ///  defined in the profile.
  @override
  final FhirBoolean? ordered;

  /// [orderedElement] Extensions for ordered
  @override
  @JsonKey(name: '_ordered')
  final PrimitiveElement? orderedElement;
  @override
  @JsonKey(unknownEnumValue: ElementDefinitionSlicingRules.unknown)
  final ElementDefinitionSlicingRules? rules;

  /// [rulesElement] Extensions for rules
  @override
  @JsonKey(name: '_rules')
  final PrimitiveElement? rulesElement;

  @override
  String toString() {
    return 'ElementDefinitionSlicing(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, discriminator: $discriminator, description: $description, descriptionElement: $descriptionElement, ordered: $ordered, orderedElement: $orderedElement, rules: $rules, rulesElement: $rulesElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementDefinitionSlicingImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._discriminator, _discriminator) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.ordered, ordered) || other.ordered == ordered) &&
            (identical(other.orderedElement, orderedElement) ||
                other.orderedElement == orderedElement) &&
            (identical(other.rules, rules) || other.rules == rules) &&
            (identical(other.rulesElement, rulesElement) ||
                other.rulesElement == rulesElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_discriminator),
      description,
      descriptionElement,
      ordered,
      orderedElement,
      rules,
      rulesElement);

  /// Create a copy of ElementDefinitionSlicing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ElementDefinitionSlicingImplCopyWith<_$ElementDefinitionSlicingImpl>
      get copyWith => __$$ElementDefinitionSlicingImplCopyWithImpl<
          _$ElementDefinitionSlicingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElementDefinitionSlicingImplToJson(
      this,
    );
  }
}

abstract class _ElementDefinitionSlicing extends ElementDefinitionSlicing {
  factory _ElementDefinitionSlicing(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<ElementDefinitionDiscriminator>? discriminator,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final FhirBoolean? ordered,
      @JsonKey(name: '_ordered') final PrimitiveElement? orderedElement,
      @JsonKey(unknownEnumValue: ElementDefinitionSlicingRules.unknown)
      final ElementDefinitionSlicingRules? rules,
      @JsonKey(name: '_rules')
      final PrimitiveElement? rulesElement}) = _$ElementDefinitionSlicingImpl;
  _ElementDefinitionSlicing._() : super._();

  factory _ElementDefinitionSlicing.fromJson(Map<String, dynamic> json) =
      _$ElementDefinitionSlicingImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [discriminator] Designates which child elements are used to discriminate
  /// between the slices when processing an instance. If one or more
  /// discriminators are provided, the value of the child elements in the
  /// instance data SHALL completely distinguish which slice the element in the
  /// resource matches based on the allowed values for those elements in each of
  ///  the slices.
  @override
  List<ElementDefinitionDiscriminator>? get discriminator;

  /// [description] A human-readable text description of how the slicing works.
  /// If there is no discriminator, this is required to be present to provide
  /// whatever information is possible about how the slices can be
  ///  differentiated.
  @override
  String? get description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;

  /// [ordered] If the matching elements have to occur in the same order as
  ///  defined in the profile.
  @override
  FhirBoolean? get ordered;

  /// [orderedElement] Extensions for ordered
  @override
  @JsonKey(name: '_ordered')
  PrimitiveElement? get orderedElement;
  @override
  @JsonKey(unknownEnumValue: ElementDefinitionSlicingRules.unknown)
  ElementDefinitionSlicingRules? get rules;

  /// [rulesElement] Extensions for rules
  @override
  @JsonKey(name: '_rules')
  PrimitiveElement? get rulesElement;

  /// Create a copy of ElementDefinitionSlicing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ElementDefinitionSlicingImplCopyWith<_$ElementDefinitionSlicingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ElementDefinitionDiscriminator _$ElementDefinitionDiscriminatorFromJson(
    Map<String, dynamic> json) {
  return _ElementDefinitionDiscriminator.fromJson(json);
}

/// @nodoc
mixin _$ElementDefinitionDiscriminator {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: ElementDefinitionDiscriminatorType.unknown)
  ElementDefinitionDiscriminatorType? get type =>
      throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [path] A FHIRPath expression, using [the simple subset of
  /// FHIRPath](fhirpath.html#simple), that is used to identify the element on
  ///  which discrimination is based.
  String? get path => throw _privateConstructorUsedError;

  /// [pathElement] Extensions for path
  @JsonKey(name: '_path')
  PrimitiveElement? get pathElement => throw _privateConstructorUsedError;

  /// Serializes this ElementDefinitionDiscriminator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ElementDefinitionDiscriminator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ElementDefinitionDiscriminatorCopyWith<ElementDefinitionDiscriminator>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementDefinitionDiscriminatorCopyWith<$Res> {
  factory $ElementDefinitionDiscriminatorCopyWith(
          ElementDefinitionDiscriminator value,
          $Res Function(ElementDefinitionDiscriminator) then) =
      _$ElementDefinitionDiscriminatorCopyWithImpl<$Res,
          ElementDefinitionDiscriminator>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      @JsonKey(unknownEnumValue: ElementDefinitionDiscriminatorType.unknown)
      ElementDefinitionDiscriminatorType? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      String? path,
      @JsonKey(name: '_path') PrimitiveElement? pathElement});
}

/// @nodoc
class _$ElementDefinitionDiscriminatorCopyWithImpl<$Res,
        $Val extends ElementDefinitionDiscriminator>
    implements $ElementDefinitionDiscriminatorCopyWith<$Res> {
  _$ElementDefinitionDiscriminatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ElementDefinitionDiscriminator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? path = freezed,
    Object? pathElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ElementDefinitionDiscriminatorType?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      pathElement: freezed == pathElement
          ? _value.pathElement
          : pathElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElementDefinitionDiscriminatorImplCopyWith<$Res>
    implements $ElementDefinitionDiscriminatorCopyWith<$Res> {
  factory _$$ElementDefinitionDiscriminatorImplCopyWith(
          _$ElementDefinitionDiscriminatorImpl value,
          $Res Function(_$ElementDefinitionDiscriminatorImpl) then) =
      __$$ElementDefinitionDiscriminatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      @JsonKey(unknownEnumValue: ElementDefinitionDiscriminatorType.unknown)
      ElementDefinitionDiscriminatorType? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      String? path,
      @JsonKey(name: '_path') PrimitiveElement? pathElement});
}

/// @nodoc
class __$$ElementDefinitionDiscriminatorImplCopyWithImpl<$Res>
    extends _$ElementDefinitionDiscriminatorCopyWithImpl<$Res,
        _$ElementDefinitionDiscriminatorImpl>
    implements _$$ElementDefinitionDiscriminatorImplCopyWith<$Res> {
  __$$ElementDefinitionDiscriminatorImplCopyWithImpl(
      _$ElementDefinitionDiscriminatorImpl _value,
      $Res Function(_$ElementDefinitionDiscriminatorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ElementDefinitionDiscriminator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? path = freezed,
    Object? pathElement = freezed,
  }) {
    return _then(_$ElementDefinitionDiscriminatorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ElementDefinitionDiscriminatorType?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      pathElement: freezed == pathElement
          ? _value.pathElement
          : pathElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElementDefinitionDiscriminatorImpl
    extends _ElementDefinitionDiscriminator {
  _$ElementDefinitionDiscriminatorImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      @JsonKey(unknownEnumValue: ElementDefinitionDiscriminatorType.unknown)
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.path,
      @JsonKey(name: '_path') this.pathElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ElementDefinitionDiscriminatorImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ElementDefinitionDiscriminatorImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(unknownEnumValue: ElementDefinitionDiscriminatorType.unknown)
  final ElementDefinitionDiscriminatorType? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [path] A FHIRPath expression, using [the simple subset of
  /// FHIRPath](fhirpath.html#simple), that is used to identify the element on
  ///  which discrimination is based.
  @override
  final String? path;

  /// [pathElement] Extensions for path
  @override
  @JsonKey(name: '_path')
  final PrimitiveElement? pathElement;

  @override
  String toString() {
    return 'ElementDefinitionDiscriminator(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, typeElement: $typeElement, path: $path, pathElement: $pathElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementDefinitionDiscriminatorImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.pathElement, pathElement) ||
                other.pathElement == pathElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      typeElement,
      path,
      pathElement);

  /// Create a copy of ElementDefinitionDiscriminator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ElementDefinitionDiscriminatorImplCopyWith<
          _$ElementDefinitionDiscriminatorImpl>
      get copyWith => __$$ElementDefinitionDiscriminatorImplCopyWithImpl<
          _$ElementDefinitionDiscriminatorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElementDefinitionDiscriminatorImplToJson(
      this,
    );
  }
}

abstract class _ElementDefinitionDiscriminator
    extends ElementDefinitionDiscriminator {
  factory _ElementDefinitionDiscriminator(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          @JsonKey(unknownEnumValue: ElementDefinitionDiscriminatorType.unknown)
          final ElementDefinitionDiscriminatorType? type,
          @JsonKey(name: '_type') final PrimitiveElement? typeElement,
          final String? path,
          @JsonKey(name: '_path') final PrimitiveElement? pathElement}) =
      _$ElementDefinitionDiscriminatorImpl;
  _ElementDefinitionDiscriminator._() : super._();

  factory _ElementDefinitionDiscriminator.fromJson(Map<String, dynamic> json) =
      _$ElementDefinitionDiscriminatorImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  @JsonKey(unknownEnumValue: ElementDefinitionDiscriminatorType.unknown)
  ElementDefinitionDiscriminatorType? get type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;

  /// [path] A FHIRPath expression, using [the simple subset of
  /// FHIRPath](fhirpath.html#simple), that is used to identify the element on
  ///  which discrimination is based.
  @override
  String? get path;

  /// [pathElement] Extensions for path
  @override
  @JsonKey(name: '_path')
  PrimitiveElement? get pathElement;

  /// Create a copy of ElementDefinitionDiscriminator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ElementDefinitionDiscriminatorImplCopyWith<
          _$ElementDefinitionDiscriminatorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ElementDefinitionBase _$ElementDefinitionBaseFromJson(
    Map<String, dynamic> json) {
  return _ElementDefinitionBase.fromJson(json);
}

/// @nodoc
mixin _$ElementDefinitionBase {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [path] The Path that identifies the base element - this matches the
  /// ElementDefinition.path for that element. Across FHIR, there is only one
  /// base definition of any element - that is, an element definition on a
  ///  [[[StructureDefinition]]] without a StructureDefinition.base.
  String? get path => throw _privateConstructorUsedError;

  /// [pathElement] Extensions for path
  @JsonKey(name: '_path')
  PrimitiveElement? get pathElement => throw _privateConstructorUsedError;

  /// [min] Minimum cardinality of the base element identified by the path.
  FhirUnsignedInt? get min => throw _privateConstructorUsedError;

  /// [minElement] Extensions for min
  @JsonKey(name: '_min')
  PrimitiveElement? get minElement => throw _privateConstructorUsedError;

  /// [max] Maximum cardinality of the base element identified by the path.
  String? get max => throw _privateConstructorUsedError;

  /// [maxElement] Extensions for max
  @JsonKey(name: '_max')
  PrimitiveElement? get maxElement => throw _privateConstructorUsedError;

  /// Serializes this ElementDefinitionBase to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ElementDefinitionBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ElementDefinitionBaseCopyWith<ElementDefinitionBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementDefinitionBaseCopyWith<$Res> {
  factory $ElementDefinitionBaseCopyWith(ElementDefinitionBase value,
          $Res Function(ElementDefinitionBase) then) =
      _$ElementDefinitionBaseCopyWithImpl<$Res, ElementDefinitionBase>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? path,
      @JsonKey(name: '_path') PrimitiveElement? pathElement,
      FhirUnsignedInt? min,
      @JsonKey(name: '_min') PrimitiveElement? minElement,
      String? max,
      @JsonKey(name: '_max') PrimitiveElement? maxElement});
}

/// @nodoc
class _$ElementDefinitionBaseCopyWithImpl<$Res,
        $Val extends ElementDefinitionBase>
    implements $ElementDefinitionBaseCopyWith<$Res> {
  _$ElementDefinitionBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ElementDefinitionBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? path = freezed,
    Object? pathElement = freezed,
    Object? min = freezed,
    Object? minElement = freezed,
    Object? max = freezed,
    Object? maxElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      pathElement: freezed == pathElement
          ? _value.pathElement
          : pathElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      minElement: freezed == minElement
          ? _value.minElement
          : minElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as String?,
      maxElement: freezed == maxElement
          ? _value.maxElement
          : maxElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElementDefinitionBaseImplCopyWith<$Res>
    implements $ElementDefinitionBaseCopyWith<$Res> {
  factory _$$ElementDefinitionBaseImplCopyWith(
          _$ElementDefinitionBaseImpl value,
          $Res Function(_$ElementDefinitionBaseImpl) then) =
      __$$ElementDefinitionBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? path,
      @JsonKey(name: '_path') PrimitiveElement? pathElement,
      FhirUnsignedInt? min,
      @JsonKey(name: '_min') PrimitiveElement? minElement,
      String? max,
      @JsonKey(name: '_max') PrimitiveElement? maxElement});
}

/// @nodoc
class __$$ElementDefinitionBaseImplCopyWithImpl<$Res>
    extends _$ElementDefinitionBaseCopyWithImpl<$Res,
        _$ElementDefinitionBaseImpl>
    implements _$$ElementDefinitionBaseImplCopyWith<$Res> {
  __$$ElementDefinitionBaseImplCopyWithImpl(_$ElementDefinitionBaseImpl _value,
      $Res Function(_$ElementDefinitionBaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ElementDefinitionBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? path = freezed,
    Object? pathElement = freezed,
    Object? min = freezed,
    Object? minElement = freezed,
    Object? max = freezed,
    Object? maxElement = freezed,
  }) {
    return _then(_$ElementDefinitionBaseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      pathElement: freezed == pathElement
          ? _value.pathElement
          : pathElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      minElement: freezed == minElement
          ? _value.minElement
          : minElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as String?,
      maxElement: freezed == maxElement
          ? _value.maxElement
          : maxElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElementDefinitionBaseImpl extends _ElementDefinitionBase {
  _$ElementDefinitionBaseImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.path,
      @JsonKey(name: '_path') this.pathElement,
      this.min,
      @JsonKey(name: '_min') this.minElement,
      this.max,
      @JsonKey(name: '_max') this.maxElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ElementDefinitionBaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElementDefinitionBaseImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [path] The Path that identifies the base element - this matches the
  /// ElementDefinition.path for that element. Across FHIR, there is only one
  /// base definition of any element - that is, an element definition on a
  ///  [[[StructureDefinition]]] without a StructureDefinition.base.
  @override
  final String? path;

  /// [pathElement] Extensions for path
  @override
  @JsonKey(name: '_path')
  final PrimitiveElement? pathElement;

  /// [min] Minimum cardinality of the base element identified by the path.
  @override
  final FhirUnsignedInt? min;

  /// [minElement] Extensions for min
  @override
  @JsonKey(name: '_min')
  final PrimitiveElement? minElement;

  /// [max] Maximum cardinality of the base element identified by the path.
  @override
  final String? max;

  /// [maxElement] Extensions for max
  @override
  @JsonKey(name: '_max')
  final PrimitiveElement? maxElement;

  @override
  String toString() {
    return 'ElementDefinitionBase(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, path: $path, pathElement: $pathElement, min: $min, minElement: $minElement, max: $max, maxElement: $maxElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementDefinitionBaseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.pathElement, pathElement) ||
                other.pathElement == pathElement) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.minElement, minElement) ||
                other.minElement == minElement) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.maxElement, maxElement) ||
                other.maxElement == maxElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      path,
      pathElement,
      min,
      minElement,
      max,
      maxElement);

  /// Create a copy of ElementDefinitionBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ElementDefinitionBaseImplCopyWith<_$ElementDefinitionBaseImpl>
      get copyWith => __$$ElementDefinitionBaseImplCopyWithImpl<
          _$ElementDefinitionBaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElementDefinitionBaseImplToJson(
      this,
    );
  }
}

abstract class _ElementDefinitionBase extends ElementDefinitionBase {
  factory _ElementDefinitionBase(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final String? path,
          @JsonKey(name: '_path') final PrimitiveElement? pathElement,
          final FhirUnsignedInt? min,
          @JsonKey(name: '_min') final PrimitiveElement? minElement,
          final String? max,
          @JsonKey(name: '_max') final PrimitiveElement? maxElement}) =
      _$ElementDefinitionBaseImpl;
  _ElementDefinitionBase._() : super._();

  factory _ElementDefinitionBase.fromJson(Map<String, dynamic> json) =
      _$ElementDefinitionBaseImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [path] The Path that identifies the base element - this matches the
  /// ElementDefinition.path for that element. Across FHIR, there is only one
  /// base definition of any element - that is, an element definition on a
  ///  [[[StructureDefinition]]] without a StructureDefinition.base.
  @override
  String? get path;

  /// [pathElement] Extensions for path
  @override
  @JsonKey(name: '_path')
  PrimitiveElement? get pathElement;

  /// [min] Minimum cardinality of the base element identified by the path.
  @override
  FhirUnsignedInt? get min;

  /// [minElement] Extensions for min
  @override
  @JsonKey(name: '_min')
  PrimitiveElement? get minElement;

  /// [max] Maximum cardinality of the base element identified by the path.
  @override
  String? get max;

  /// [maxElement] Extensions for max
  @override
  @JsonKey(name: '_max')
  PrimitiveElement? get maxElement;

  /// Create a copy of ElementDefinitionBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ElementDefinitionBaseImplCopyWith<_$ElementDefinitionBaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ElementDefinitionType _$ElementDefinitionTypeFromJson(
    Map<String, dynamic> json) {
  return _ElementDefinitionType.fromJson(json);
}

/// @nodoc
mixin _$ElementDefinitionType {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [code] URL of Data type or Resource that is a(or the) type used for this
  /// element. References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  ///  allowed in logical models.
  FhirUri? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [profile] Identifies a profile structure or implementation Guide that
  /// applies to the datatype this element refers to. If any profiles are
  /// specified, then the content must conform to at least one of them. The URL
  /// can be a local reference - to a contained StructureDefinition, or a
  /// reference to another StructureDefinition or Implementation Guide by a
  /// canonical URL. When an implementation guide is specified, the type SHALL
  ///  conform to at least one profile defined in the implementation guide.
  List<FhirCanonical>? get profile => throw _privateConstructorUsedError;
  @JsonKey(name: '_profile')
  List<PrimitiveElement>? get profileElement =>
      throw _privateConstructorUsedError;

  /// [targetProfile] Used when the type is "Reference" or "canonical", and
  /// identifies a profile structure or implementation Guide that applies to the
  /// target of the reference this element refers to. If any profiles are
  /// specified, then the content must conform to at least one of them. The URL
  /// can be a local reference - to a contained StructureDefinition, or a
  /// reference to another StructureDefinition or Implementation Guide by a
  /// canonical URL. When an implementation guide is specified, the target
  /// resource SHALL conform to at least one profile defined in the
  ///  implementation guide.
  List<FhirCanonical>? get targetProfile => throw _privateConstructorUsedError;

  /// [aggregation] If the type is a reference to another resource, how the
  /// resource is or can be aggregated - is it a contained resource, or a
  ///  reference, and if the context is a bundle, is it included in the bundle.
  List<ElementDefinitionTypeAggregation>? get aggregation =>
      throw _privateConstructorUsedError;

  /// [aggregationElement] Extensions for aggregation
  @JsonKey(name: '_aggregation')
  List<PrimitiveElement>? get aggregationElement =>
      throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: ElementDefinitionTypeVersioning.unknown)
  ElementDefinitionTypeVersioning? get versioning =>
      throw _privateConstructorUsedError;

  /// [versioningElement] Extensions for versioning
  @JsonKey(name: '_versioning')
  PrimitiveElement? get versioningElement => throw _privateConstructorUsedError;

  /// Serializes this ElementDefinitionType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ElementDefinitionType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ElementDefinitionTypeCopyWith<ElementDefinitionType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementDefinitionTypeCopyWith<$Res> {
  factory $ElementDefinitionTypeCopyWith(ElementDefinitionType value,
          $Res Function(ElementDefinitionType) then) =
      _$ElementDefinitionTypeCopyWithImpl<$Res, ElementDefinitionType>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirUri? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      List<FhirCanonical>? profile,
      @JsonKey(name: '_profile') List<PrimitiveElement>? profileElement,
      List<FhirCanonical>? targetProfile,
      List<ElementDefinitionTypeAggregation>? aggregation,
      @JsonKey(name: '_aggregation') List<PrimitiveElement>? aggregationElement,
      @JsonKey(unknownEnumValue: ElementDefinitionTypeVersioning.unknown)
      ElementDefinitionTypeVersioning? versioning,
      @JsonKey(name: '_versioning') PrimitiveElement? versioningElement});
}

/// @nodoc
class _$ElementDefinitionTypeCopyWithImpl<$Res,
        $Val extends ElementDefinitionType>
    implements $ElementDefinitionTypeCopyWith<$Res> {
  _$ElementDefinitionTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ElementDefinitionType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? profile = freezed,
    Object? profileElement = freezed,
    Object? targetProfile = freezed,
    Object? aggregation = freezed,
    Object? aggregationElement = freezed,
    Object? versioning = freezed,
    Object? versioningElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      profileElement: freezed == profileElement
          ? _value.profileElement
          : profileElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      targetProfile: freezed == targetProfile
          ? _value.targetProfile
          : targetProfile // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      aggregation: freezed == aggregation
          ? _value.aggregation
          : aggregation // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinitionTypeAggregation>?,
      aggregationElement: freezed == aggregationElement
          ? _value.aggregationElement
          : aggregationElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      versioning: freezed == versioning
          ? _value.versioning
          : versioning // ignore: cast_nullable_to_non_nullable
              as ElementDefinitionTypeVersioning?,
      versioningElement: freezed == versioningElement
          ? _value.versioningElement
          : versioningElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElementDefinitionTypeImplCopyWith<$Res>
    implements $ElementDefinitionTypeCopyWith<$Res> {
  factory _$$ElementDefinitionTypeImplCopyWith(
          _$ElementDefinitionTypeImpl value,
          $Res Function(_$ElementDefinitionTypeImpl) then) =
      __$$ElementDefinitionTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirUri? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      List<FhirCanonical>? profile,
      @JsonKey(name: '_profile') List<PrimitiveElement>? profileElement,
      List<FhirCanonical>? targetProfile,
      List<ElementDefinitionTypeAggregation>? aggregation,
      @JsonKey(name: '_aggregation') List<PrimitiveElement>? aggregationElement,
      @JsonKey(unknownEnumValue: ElementDefinitionTypeVersioning.unknown)
      ElementDefinitionTypeVersioning? versioning,
      @JsonKey(name: '_versioning') PrimitiveElement? versioningElement});
}

/// @nodoc
class __$$ElementDefinitionTypeImplCopyWithImpl<$Res>
    extends _$ElementDefinitionTypeCopyWithImpl<$Res,
        _$ElementDefinitionTypeImpl>
    implements _$$ElementDefinitionTypeImplCopyWith<$Res> {
  __$$ElementDefinitionTypeImplCopyWithImpl(_$ElementDefinitionTypeImpl _value,
      $Res Function(_$ElementDefinitionTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ElementDefinitionType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? profile = freezed,
    Object? profileElement = freezed,
    Object? targetProfile = freezed,
    Object? aggregation = freezed,
    Object? aggregationElement = freezed,
    Object? versioning = freezed,
    Object? versioningElement = freezed,
  }) {
    return _then(_$ElementDefinitionTypeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      profile: freezed == profile
          ? _value._profile
          : profile // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      profileElement: freezed == profileElement
          ? _value._profileElement
          : profileElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      targetProfile: freezed == targetProfile
          ? _value._targetProfile
          : targetProfile // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      aggregation: freezed == aggregation
          ? _value._aggregation
          : aggregation // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinitionTypeAggregation>?,
      aggregationElement: freezed == aggregationElement
          ? _value._aggregationElement
          : aggregationElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      versioning: freezed == versioning
          ? _value.versioning
          : versioning // ignore: cast_nullable_to_non_nullable
              as ElementDefinitionTypeVersioning?,
      versioningElement: freezed == versioningElement
          ? _value.versioningElement
          : versioningElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElementDefinitionTypeImpl extends _ElementDefinitionType {
  _$ElementDefinitionTypeImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      final List<FhirCanonical>? profile,
      @JsonKey(name: '_profile') final List<PrimitiveElement>? profileElement,
      final List<FhirCanonical>? targetProfile,
      final List<ElementDefinitionTypeAggregation>? aggregation,
      @JsonKey(name: '_aggregation')
      final List<PrimitiveElement>? aggregationElement,
      @JsonKey(unknownEnumValue: ElementDefinitionTypeVersioning.unknown)
      this.versioning,
      @JsonKey(name: '_versioning') this.versioningElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _profile = profile,
        _profileElement = profileElement,
        _targetProfile = targetProfile,
        _aggregation = aggregation,
        _aggregationElement = aggregationElement,
        super._();

  factory _$ElementDefinitionTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElementDefinitionTypeImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [code] URL of Data type or Resource that is a(or the) type used for this
  /// element. References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  ///  allowed in logical models.
  @override
  final FhirUri? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [profile] Identifies a profile structure or implementation Guide that
  /// applies to the datatype this element refers to. If any profiles are
  /// specified, then the content must conform to at least one of them. The URL
  /// can be a local reference - to a contained StructureDefinition, or a
  /// reference to another StructureDefinition or Implementation Guide by a
  /// canonical URL. When an implementation guide is specified, the type SHALL
  ///  conform to at least one profile defined in the implementation guide.
  final List<FhirCanonical>? _profile;

  /// [profile] Identifies a profile structure or implementation Guide that
  /// applies to the datatype this element refers to. If any profiles are
  /// specified, then the content must conform to at least one of them. The URL
  /// can be a local reference - to a contained StructureDefinition, or a
  /// reference to another StructureDefinition or Implementation Guide by a
  /// canonical URL. When an implementation guide is specified, the type SHALL
  ///  conform to at least one profile defined in the implementation guide.
  @override
  List<FhirCanonical>? get profile {
    final value = _profile;
    if (value == null) return null;
    if (_profile is EqualUnmodifiableListView) return _profile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PrimitiveElement>? _profileElement;
  @override
  @JsonKey(name: '_profile')
  List<PrimitiveElement>? get profileElement {
    final value = _profileElement;
    if (value == null) return null;
    if (_profileElement is EqualUnmodifiableListView) return _profileElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [targetProfile] Used when the type is "Reference" or "canonical", and
  /// identifies a profile structure or implementation Guide that applies to the
  /// target of the reference this element refers to. If any profiles are
  /// specified, then the content must conform to at least one of them. The URL
  /// can be a local reference - to a contained StructureDefinition, or a
  /// reference to another StructureDefinition or Implementation Guide by a
  /// canonical URL. When an implementation guide is specified, the target
  /// resource SHALL conform to at least one profile defined in the
  ///  implementation guide.
  final List<FhirCanonical>? _targetProfile;

  /// [targetProfile] Used when the type is "Reference" or "canonical", and
  /// identifies a profile structure or implementation Guide that applies to the
  /// target of the reference this element refers to. If any profiles are
  /// specified, then the content must conform to at least one of them. The URL
  /// can be a local reference - to a contained StructureDefinition, or a
  /// reference to another StructureDefinition or Implementation Guide by a
  /// canonical URL. When an implementation guide is specified, the target
  /// resource SHALL conform to at least one profile defined in the
  ///  implementation guide.
  @override
  List<FhirCanonical>? get targetProfile {
    final value = _targetProfile;
    if (value == null) return null;
    if (_targetProfile is EqualUnmodifiableListView) return _targetProfile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [aggregation] If the type is a reference to another resource, how the
  /// resource is or can be aggregated - is it a contained resource, or a
  ///  reference, and if the context is a bundle, is it included in the bundle.
  final List<ElementDefinitionTypeAggregation>? _aggregation;

  /// [aggregation] If the type is a reference to another resource, how the
  /// resource is or can be aggregated - is it a contained resource, or a
  ///  reference, and if the context is a bundle, is it included in the bundle.
  @override
  List<ElementDefinitionTypeAggregation>? get aggregation {
    final value = _aggregation;
    if (value == null) return null;
    if (_aggregation is EqualUnmodifiableListView) return _aggregation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [aggregationElement] Extensions for aggregation
  final List<PrimitiveElement>? _aggregationElement;

  /// [aggregationElement] Extensions for aggregation
  @override
  @JsonKey(name: '_aggregation')
  List<PrimitiveElement>? get aggregationElement {
    final value = _aggregationElement;
    if (value == null) return null;
    if (_aggregationElement is EqualUnmodifiableListView)
      return _aggregationElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(unknownEnumValue: ElementDefinitionTypeVersioning.unknown)
  final ElementDefinitionTypeVersioning? versioning;

  /// [versioningElement] Extensions for versioning
  @override
  @JsonKey(name: '_versioning')
  final PrimitiveElement? versioningElement;

  @override
  String toString() {
    return 'ElementDefinitionType(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, code: $code, codeElement: $codeElement, profile: $profile, profileElement: $profileElement, targetProfile: $targetProfile, aggregation: $aggregation, aggregationElement: $aggregationElement, versioning: $versioning, versioningElement: $versioningElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementDefinitionTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement) &&
            const DeepCollectionEquality().equals(other._profile, _profile) &&
            const DeepCollectionEquality()
                .equals(other._profileElement, _profileElement) &&
            const DeepCollectionEquality()
                .equals(other._targetProfile, _targetProfile) &&
            const DeepCollectionEquality()
                .equals(other._aggregation, _aggregation) &&
            const DeepCollectionEquality()
                .equals(other._aggregationElement, _aggregationElement) &&
            (identical(other.versioning, versioning) ||
                other.versioning == versioning) &&
            (identical(other.versioningElement, versioningElement) ||
                other.versioningElement == versioningElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      code,
      codeElement,
      const DeepCollectionEquality().hash(_profile),
      const DeepCollectionEquality().hash(_profileElement),
      const DeepCollectionEquality().hash(_targetProfile),
      const DeepCollectionEquality().hash(_aggregation),
      const DeepCollectionEquality().hash(_aggregationElement),
      versioning,
      versioningElement);

  /// Create a copy of ElementDefinitionType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ElementDefinitionTypeImplCopyWith<_$ElementDefinitionTypeImpl>
      get copyWith => __$$ElementDefinitionTypeImplCopyWithImpl<
          _$ElementDefinitionTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElementDefinitionTypeImplToJson(
      this,
    );
  }
}

abstract class _ElementDefinitionType extends ElementDefinitionType {
  factory _ElementDefinitionType(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirUri? code,
      @JsonKey(name: '_code') final PrimitiveElement? codeElement,
      final List<FhirCanonical>? profile,
      @JsonKey(name: '_profile') final List<PrimitiveElement>? profileElement,
      final List<FhirCanonical>? targetProfile,
      final List<ElementDefinitionTypeAggregation>? aggregation,
      @JsonKey(name: '_aggregation')
      final List<PrimitiveElement>? aggregationElement,
      @JsonKey(unknownEnumValue: ElementDefinitionTypeVersioning.unknown)
      final ElementDefinitionTypeVersioning? versioning,
      @JsonKey(name: '_versioning')
      final PrimitiveElement? versioningElement}) = _$ElementDefinitionTypeImpl;
  _ElementDefinitionType._() : super._();

  factory _ElementDefinitionType.fromJson(Map<String, dynamic> json) =
      _$ElementDefinitionTypeImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [code] URL of Data type or Resource that is a(or the) type used for this
  /// element. References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  ///  allowed in logical models.
  @override
  FhirUri? get code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;

  /// [profile] Identifies a profile structure or implementation Guide that
  /// applies to the datatype this element refers to. If any profiles are
  /// specified, then the content must conform to at least one of them. The URL
  /// can be a local reference - to a contained StructureDefinition, or a
  /// reference to another StructureDefinition or Implementation Guide by a
  /// canonical URL. When an implementation guide is specified, the type SHALL
  ///  conform to at least one profile defined in the implementation guide.
  @override
  List<FhirCanonical>? get profile;
  @override
  @JsonKey(name: '_profile')
  List<PrimitiveElement>? get profileElement;

  /// [targetProfile] Used when the type is "Reference" or "canonical", and
  /// identifies a profile structure or implementation Guide that applies to the
  /// target of the reference this element refers to. If any profiles are
  /// specified, then the content must conform to at least one of them. The URL
  /// can be a local reference - to a contained StructureDefinition, or a
  /// reference to another StructureDefinition or Implementation Guide by a
  /// canonical URL. When an implementation guide is specified, the target
  /// resource SHALL conform to at least one profile defined in the
  ///  implementation guide.
  @override
  List<FhirCanonical>? get targetProfile;

  /// [aggregation] If the type is a reference to another resource, how the
  /// resource is or can be aggregated - is it a contained resource, or a
  ///  reference, and if the context is a bundle, is it included in the bundle.
  @override
  List<ElementDefinitionTypeAggregation>? get aggregation;

  /// [aggregationElement] Extensions for aggregation
  @override
  @JsonKey(name: '_aggregation')
  List<PrimitiveElement>? get aggregationElement;
  @override
  @JsonKey(unknownEnumValue: ElementDefinitionTypeVersioning.unknown)
  ElementDefinitionTypeVersioning? get versioning;

  /// [versioningElement] Extensions for versioning
  @override
  @JsonKey(name: '_versioning')
  PrimitiveElement? get versioningElement;

  /// Create a copy of ElementDefinitionType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ElementDefinitionTypeImplCopyWith<_$ElementDefinitionTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ElementDefinitionExample _$ElementDefinitionExampleFromJson(
    Map<String, dynamic> json) {
  return _ElementDefinitionExample.fromJson(json);
}

/// @nodoc
mixin _$ElementDefinitionExample {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [label] Describes the purpose of this example amoung the set of examples.
  String? get label => throw _privateConstructorUsedError;

  /// [labelElement] Extensions for label
  @JsonKey(name: '_label')
  PrimitiveElement? get labelElement => throw _privateConstructorUsedError;

  /// [valueBase64Binary] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  FhirBase64Binary? get valueBase64Binary => throw _privateConstructorUsedError;

  /// [valueBase64BinaryElement] Extensions for valueBase64Binary
  @JsonKey(name: '_valueBase64Binary')
  PrimitiveElement? get valueBase64BinaryElement =>
      throw _privateConstructorUsedError;

  /// [valueBoolean] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  FhirBoolean? get valueBoolean => throw _privateConstructorUsedError;

  /// [valueBooleanElement] Extensions for valueBoolean
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement =>
      throw _privateConstructorUsedError;

  /// [valueCanonical] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  FhirCanonical? get valueCanonical => throw _privateConstructorUsedError;

  /// [valueCanonicalElement] Extensions for valueCanonical
  @JsonKey(name: '_valueCanonical')
  PrimitiveElement? get valueCanonicalElement =>
      throw _privateConstructorUsedError;

  /// [valueCode] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  FhirCode? get valueCode => throw _privateConstructorUsedError;

  /// [valueCodeElement] Extensions for valueCode
  @JsonKey(name: '_valueCode')
  PrimitiveElement? get valueCodeElement => throw _privateConstructorUsedError;

  /// [valueDate] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  FhirDate? get valueDate => throw _privateConstructorUsedError;

  /// [valueDateElement] Extensions for valueDate
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement => throw _privateConstructorUsedError;

  /// [valueDateTime] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  FhirDateTime? get valueDateTime => throw _privateConstructorUsedError;

  /// [valueDateTimeElement] Extensions for valueDateTime
  @JsonKey(name: '_valueDateTime')
  PrimitiveElement? get valueDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [valueDecimal] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  FhirDecimal? get valueDecimal => throw _privateConstructorUsedError;

  /// [valueDecimalElement] Extensions for valueDecimal
  @JsonKey(name: '_valueDecimal')
  PrimitiveElement? get valueDecimalElement =>
      throw _privateConstructorUsedError;

  /// [valueId] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  FhirId? get valueId => throw _privateConstructorUsedError;

  /// [valueIdElement] Extensions for valueId
  @JsonKey(name: '_valueId')
  PrimitiveElement? get valueIdElement => throw _privateConstructorUsedError;

  /// [valueInstant] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  FhirInstant? get valueInstant => throw _privateConstructorUsedError;

  /// [valueInstantElement] Extensions for valueInstant
  @JsonKey(name: '_valueInstant')
  PrimitiveElement? get valueInstantElement =>
      throw _privateConstructorUsedError;

  /// [valueInteger] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  FhirInteger? get valueInteger => throw _privateConstructorUsedError;

  /// [valueIntegerElement] Extensions for valueInteger
  @JsonKey(name: '_valueInteger')
  PrimitiveElement? get valueIntegerElement =>
      throw _privateConstructorUsedError;

  /// [valueMarkdown] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  FhirMarkdown? get valueMarkdown => throw _privateConstructorUsedError;

  /// [valueMarkdownElement] Extensions for valueMarkdown
  @JsonKey(name: '_valueMarkdown')
  PrimitiveElement? get valueMarkdownElement =>
      throw _privateConstructorUsedError;

  /// [valueOid] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  FhirOid? get valueOid => throw _privateConstructorUsedError;

  /// [valueOidElement] Extensions for valueOid
  @JsonKey(name: '_valueOid')
  PrimitiveElement? get valueOidElement => throw _privateConstructorUsedError;

  /// [valuePositiveInt] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  FhirPositiveInt? get valuePositiveInt => throw _privateConstructorUsedError;

  /// [valuePositiveIntElement] Extensions for valuePositiveInt
  @JsonKey(name: '_valuePositiveInt')
  PrimitiveElement? get valuePositiveIntElement =>
      throw _privateConstructorUsedError;

  /// [valueString] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  String? get valueString => throw _privateConstructorUsedError;

  /// [valueStringElement] Extensions for valueString
  @JsonKey(name: '_valueString')
  PrimitiveElement? get valueStringElement =>
      throw _privateConstructorUsedError;

  /// [valueTime] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  FhirTime? get valueTime => throw _privateConstructorUsedError;

  /// [valueTimeElement] Extensions for valueTime
  @JsonKey(name: '_valueTime')
  PrimitiveElement? get valueTimeElement => throw _privateConstructorUsedError;

  /// [valueUnsignedInt] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  FhirUnsignedInt? get valueUnsignedInt => throw _privateConstructorUsedError;

  /// [valueUnsignedIntElement] Extensions for valueUnsignedInt
  @JsonKey(name: '_valueUnsignedInt')
  PrimitiveElement? get valueUnsignedIntElement =>
      throw _privateConstructorUsedError;

  /// [valueUri] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  FhirUri? get valueUri => throw _privateConstructorUsedError;

  /// [valueUriElement] Extensions for valueUri
  @JsonKey(name: '_valueUri')
  PrimitiveElement? get valueUriElement => throw _privateConstructorUsedError;

  /// [valueUrl] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  FhirUrl? get valueUrl => throw _privateConstructorUsedError;

  /// [valueUrlElement] Extensions for valueUrl
  @JsonKey(name: '_valueUrl')
  PrimitiveElement? get valueUrlElement => throw _privateConstructorUsedError;

  /// [valueUuid] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  FhirUuid? get valueUuid => throw _privateConstructorUsedError;

  /// [valueUuidElement] Extensions for valueUuid
  @JsonKey(name: '_valueUuid')
  PrimitiveElement? get valueUuidElement => throw _privateConstructorUsedError;

  /// [valueAddress] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  Address? get valueAddress => throw _privateConstructorUsedError;

  /// [valueAge] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  Age? get valueAge => throw _privateConstructorUsedError;

  /// [valueAnnotation] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  Annotation? get valueAnnotation => throw _privateConstructorUsedError;

  /// [valueAttachment] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  Attachment? get valueAttachment => throw _privateConstructorUsedError;

  /// [valueCodeableConcept] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  CodeableConcept? get valueCodeableConcept =>
      throw _privateConstructorUsedError;
  CodeableReference? get valueCodeableReference =>
      throw _privateConstructorUsedError;

  /// [valueCoding] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  Coding? get valueCoding => throw _privateConstructorUsedError;

  /// [valueContactPoint] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  ContactPoint? get valueContactPoint => throw _privateConstructorUsedError;

  /// [valueCount] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  Count? get valueCount => throw _privateConstructorUsedError;

  /// [valueDistance] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  Distance? get valueDistance => throw _privateConstructorUsedError;

  /// [valueDuration] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  FhirDuration? get valueDuration => throw _privateConstructorUsedError;

  /// [valueHumanName] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  HumanName? get valueHumanName => throw _privateConstructorUsedError;

  /// [valueIdentifier] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  Identifier? get valueIdentifier => throw _privateConstructorUsedError;

  /// [valueMoney] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  Money? get valueMoney => throw _privateConstructorUsedError;

  /// [valuePeriod] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  Period? get valuePeriod => throw _privateConstructorUsedError;

  /// [valueQuantity] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  Quantity? get valueQuantity => throw _privateConstructorUsedError;

  /// [valueRange] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  Range? get valueRange => throw _privateConstructorUsedError;

  /// [valueRatio] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  Ratio? get valueRatio => throw _privateConstructorUsedError;
  RatioRange? get valueRatioRange => throw _privateConstructorUsedError;

  /// [valueReference] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  Reference? get valueReference => throw _privateConstructorUsedError;

  /// [valueSampledData] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  SampledData? get valueSampledData => throw _privateConstructorUsedError;

  /// [valueSignature] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  Signature? get valueSignature => throw _privateConstructorUsedError;

  /// [valueTiming] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  Timing? get valueTiming => throw _privateConstructorUsedError;

  /// [valueContactDetail] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  ContactDetail? get valueContactDetail => throw _privateConstructorUsedError;

  /// [valueContributor] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  Contributor? get valueContributor => throw _privateConstructorUsedError;

  /// [valueDataRequirement] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  DataRequirement? get valueDataRequirement =>
      throw _privateConstructorUsedError;

  /// [valueExpression] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  FhirExpression? get valueExpression => throw _privateConstructorUsedError;

  /// [valueParameterDefinition] The actual value for the element, which must
  ///  be one of the types allowed for this element.
  ParameterDefinition? get valueParameterDefinition =>
      throw _privateConstructorUsedError;

  /// [valueRelatedArtifact] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  RelatedArtifact? get valueRelatedArtifact =>
      throw _privateConstructorUsedError;

  /// [valueTriggerDefinition] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  TriggerDefinition? get valueTriggerDefinition =>
      throw _privateConstructorUsedError;

  /// [valueUsageContext] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  UsageContext? get valueUsageContext => throw _privateConstructorUsedError;

  /// [valueDosage] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  Dosage? get valueDosage => throw _privateConstructorUsedError;

  /// [valueMeta] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  FhirMeta? get valueMeta => throw _privateConstructorUsedError;

  /// Serializes this ElementDefinitionExample to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ElementDefinitionExampleCopyWith<ElementDefinitionExample> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementDefinitionExampleCopyWith<$Res> {
  factory $ElementDefinitionExampleCopyWith(ElementDefinitionExample value,
          $Res Function(ElementDefinitionExample) then) =
      _$ElementDefinitionExampleCopyWithImpl<$Res, ElementDefinitionExample>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? label,
      @JsonKey(name: '_label') PrimitiveElement? labelElement,
      FhirBase64Binary? valueBase64Binary,
      @JsonKey(name: '_valueBase64Binary')
      PrimitiveElement? valueBase64BinaryElement,
      FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
      FhirCanonical? valueCanonical,
      @JsonKey(name: '_valueCanonical') PrimitiveElement? valueCanonicalElement,
      FhirCode? valueCode,
      @JsonKey(name: '_valueCode') PrimitiveElement? valueCodeElement,
      FhirDate? valueDate,
      @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
      FhirDateTime? valueDateTime,
      @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
      FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
      FhirId? valueId,
      @JsonKey(name: '_valueId') PrimitiveElement? valueIdElement,
      FhirInstant? valueInstant,
      @JsonKey(name: '_valueInstant') PrimitiveElement? valueInstantElement,
      FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
      FhirMarkdown? valueMarkdown,
      @JsonKey(name: '_valueMarkdown') PrimitiveElement? valueMarkdownElement,
      FhirOid? valueOid,
      @JsonKey(name: '_valueOid') PrimitiveElement? valueOidElement,
      FhirPositiveInt? valuePositiveInt,
      @JsonKey(name: '_valuePositiveInt')
      PrimitiveElement? valuePositiveIntElement,
      String? valueString,
      @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
      FhirTime? valueTime,
      @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
      FhirUnsignedInt? valueUnsignedInt,
      @JsonKey(name: '_valueUnsignedInt')
      PrimitiveElement? valueUnsignedIntElement,
      FhirUri? valueUri,
      @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,
      FhirUrl? valueUrl,
      @JsonKey(name: '_valueUrl') PrimitiveElement? valueUrlElement,
      FhirUuid? valueUuid,
      @JsonKey(name: '_valueUuid') PrimitiveElement? valueUuidElement,
      Address? valueAddress,
      Age? valueAge,
      Annotation? valueAnnotation,
      Attachment? valueAttachment,
      CodeableConcept? valueCodeableConcept,
      CodeableReference? valueCodeableReference,
      Coding? valueCoding,
      ContactPoint? valueContactPoint,
      Count? valueCount,
      Distance? valueDistance,
      FhirDuration? valueDuration,
      HumanName? valueHumanName,
      Identifier? valueIdentifier,
      Money? valueMoney,
      Period? valuePeriod,
      Quantity? valueQuantity,
      Range? valueRange,
      Ratio? valueRatio,
      RatioRange? valueRatioRange,
      Reference? valueReference,
      SampledData? valueSampledData,
      Signature? valueSignature,
      Timing? valueTiming,
      ContactDetail? valueContactDetail,
      Contributor? valueContributor,
      DataRequirement? valueDataRequirement,
      FhirExpression? valueExpression,
      ParameterDefinition? valueParameterDefinition,
      RelatedArtifact? valueRelatedArtifact,
      TriggerDefinition? valueTriggerDefinition,
      UsageContext? valueUsageContext,
      Dosage? valueDosage,
      FhirMeta? valueMeta});

  $AddressCopyWith<$Res>? get valueAddress;
  $AgeCopyWith<$Res>? get valueAge;
  $AnnotationCopyWith<$Res>? get valueAnnotation;
  $AttachmentCopyWith<$Res>? get valueAttachment;
  $CodeableConceptCopyWith<$Res>? get valueCodeableConcept;
  $CodeableReferenceCopyWith<$Res>? get valueCodeableReference;
  $CodingCopyWith<$Res>? get valueCoding;
  $ContactPointCopyWith<$Res>? get valueContactPoint;
  $CountCopyWith<$Res>? get valueCount;
  $DistanceCopyWith<$Res>? get valueDistance;
  $FhirDurationCopyWith<$Res>? get valueDuration;
  $HumanNameCopyWith<$Res>? get valueHumanName;
  $IdentifierCopyWith<$Res>? get valueIdentifier;
  $MoneyCopyWith<$Res>? get valueMoney;
  $PeriodCopyWith<$Res>? get valuePeriod;
  $QuantityCopyWith<$Res>? get valueQuantity;
  $RangeCopyWith<$Res>? get valueRange;
  $RatioCopyWith<$Res>? get valueRatio;
  $RatioRangeCopyWith<$Res>? get valueRatioRange;
  $ReferenceCopyWith<$Res>? get valueReference;
  $SampledDataCopyWith<$Res>? get valueSampledData;
  $SignatureCopyWith<$Res>? get valueSignature;
  $TimingCopyWith<$Res>? get valueTiming;
  $ContactDetailCopyWith<$Res>? get valueContactDetail;
  $ContributorCopyWith<$Res>? get valueContributor;
  $DataRequirementCopyWith<$Res>? get valueDataRequirement;
  $FhirExpressionCopyWith<$Res>? get valueExpression;
  $ParameterDefinitionCopyWith<$Res>? get valueParameterDefinition;
  $RelatedArtifactCopyWith<$Res>? get valueRelatedArtifact;
  $TriggerDefinitionCopyWith<$Res>? get valueTriggerDefinition;
  $UsageContextCopyWith<$Res>? get valueUsageContext;
  $DosageCopyWith<$Res>? get valueDosage;
  $FhirMetaCopyWith<$Res>? get valueMeta;
}

/// @nodoc
class _$ElementDefinitionExampleCopyWithImpl<$Res,
        $Val extends ElementDefinitionExample>
    implements $ElementDefinitionExampleCopyWith<$Res> {
  _$ElementDefinitionExampleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? label = freezed,
    Object? labelElement = freezed,
    Object? valueBase64Binary = freezed,
    Object? valueBase64BinaryElement = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueCanonical = freezed,
    Object? valueCanonicalElement = freezed,
    Object? valueCode = freezed,
    Object? valueCodeElement = freezed,
    Object? valueDate = freezed,
    Object? valueDateElement = freezed,
    Object? valueDateTime = freezed,
    Object? valueDateTimeElement = freezed,
    Object? valueDecimal = freezed,
    Object? valueDecimalElement = freezed,
    Object? valueId = freezed,
    Object? valueIdElement = freezed,
    Object? valueInstant = freezed,
    Object? valueInstantElement = freezed,
    Object? valueInteger = freezed,
    Object? valueIntegerElement = freezed,
    Object? valueMarkdown = freezed,
    Object? valueMarkdownElement = freezed,
    Object? valueOid = freezed,
    Object? valueOidElement = freezed,
    Object? valuePositiveInt = freezed,
    Object? valuePositiveIntElement = freezed,
    Object? valueString = freezed,
    Object? valueStringElement = freezed,
    Object? valueTime = freezed,
    Object? valueTimeElement = freezed,
    Object? valueUnsignedInt = freezed,
    Object? valueUnsignedIntElement = freezed,
    Object? valueUri = freezed,
    Object? valueUriElement = freezed,
    Object? valueUrl = freezed,
    Object? valueUrlElement = freezed,
    Object? valueUuid = freezed,
    Object? valueUuidElement = freezed,
    Object? valueAddress = freezed,
    Object? valueAge = freezed,
    Object? valueAnnotation = freezed,
    Object? valueAttachment = freezed,
    Object? valueCodeableConcept = freezed,
    Object? valueCodeableReference = freezed,
    Object? valueCoding = freezed,
    Object? valueContactPoint = freezed,
    Object? valueCount = freezed,
    Object? valueDistance = freezed,
    Object? valueDuration = freezed,
    Object? valueHumanName = freezed,
    Object? valueIdentifier = freezed,
    Object? valueMoney = freezed,
    Object? valuePeriod = freezed,
    Object? valueQuantity = freezed,
    Object? valueRange = freezed,
    Object? valueRatio = freezed,
    Object? valueRatioRange = freezed,
    Object? valueReference = freezed,
    Object? valueSampledData = freezed,
    Object? valueSignature = freezed,
    Object? valueTiming = freezed,
    Object? valueContactDetail = freezed,
    Object? valueContributor = freezed,
    Object? valueDataRequirement = freezed,
    Object? valueExpression = freezed,
    Object? valueParameterDefinition = freezed,
    Object? valueRelatedArtifact = freezed,
    Object? valueTriggerDefinition = freezed,
    Object? valueUsageContext = freezed,
    Object? valueDosage = freezed,
    Object? valueMeta = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      labelElement: freezed == labelElement
          ? _value.labelElement
          : labelElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueBase64Binary: freezed == valueBase64Binary
          ? _value.valueBase64Binary
          : valueBase64Binary // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      valueBase64BinaryElement: freezed == valueBase64BinaryElement
          ? _value.valueBase64BinaryElement
          : valueBase64BinaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueCanonical: freezed == valueCanonical
          ? _value.valueCanonical
          : valueCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      valueCanonicalElement: freezed == valueCanonicalElement
          ? _value.valueCanonicalElement
          : valueCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueCode: freezed == valueCode
          ? _value.valueCode
          : valueCode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      valueCodeElement: freezed == valueCodeElement
          ? _value.valueCodeElement
          : valueCodeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      valueDateElement: freezed == valueDateElement
          ? _value.valueDateElement
          : valueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDateTime: freezed == valueDateTime
          ? _value.valueDateTime
          : valueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      valueDateTimeElement: freezed == valueDateTimeElement
          ? _value.valueDateTimeElement
          : valueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDecimal: freezed == valueDecimal
          ? _value.valueDecimal
          : valueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueDecimalElement: freezed == valueDecimalElement
          ? _value.valueDecimalElement
          : valueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueId: freezed == valueId
          ? _value.valueId
          : valueId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      valueIdElement: freezed == valueIdElement
          ? _value.valueIdElement
          : valueIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueInstant: freezed == valueInstant
          ? _value.valueInstant
          : valueInstant // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      valueInstantElement: freezed == valueInstantElement
          ? _value.valueInstantElement
          : valueInstantElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueInteger: freezed == valueInteger
          ? _value.valueInteger
          : valueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      valueIntegerElement: freezed == valueIntegerElement
          ? _value.valueIntegerElement
          : valueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueMarkdown: freezed == valueMarkdown
          ? _value.valueMarkdown
          : valueMarkdown // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      valueMarkdownElement: freezed == valueMarkdownElement
          ? _value.valueMarkdownElement
          : valueMarkdownElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueOid: freezed == valueOid
          ? _value.valueOid
          : valueOid // ignore: cast_nullable_to_non_nullable
              as FhirOid?,
      valueOidElement: freezed == valueOidElement
          ? _value.valueOidElement
          : valueOidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valuePositiveInt: freezed == valuePositiveInt
          ? _value.valuePositiveInt
          : valuePositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      valuePositiveIntElement: freezed == valuePositiveIntElement
          ? _value.valuePositiveIntElement
          : valuePositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueString: freezed == valueString
          ? _value.valueString
          : valueString // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStringElement: freezed == valueStringElement
          ? _value.valueStringElement
          : valueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueTime: freezed == valueTime
          ? _value.valueTime
          : valueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      valueTimeElement: freezed == valueTimeElement
          ? _value.valueTimeElement
          : valueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUnsignedInt: freezed == valueUnsignedInt
          ? _value.valueUnsignedInt
          : valueUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      valueUnsignedIntElement: freezed == valueUnsignedIntElement
          ? _value.valueUnsignedIntElement
          : valueUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUri: freezed == valueUri
          ? _value.valueUri
          : valueUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      valueUriElement: freezed == valueUriElement
          ? _value.valueUriElement
          : valueUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUrl: freezed == valueUrl
          ? _value.valueUrl
          : valueUrl // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      valueUrlElement: freezed == valueUrlElement
          ? _value.valueUrlElement
          : valueUrlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUuid: freezed == valueUuid
          ? _value.valueUuid
          : valueUuid // ignore: cast_nullable_to_non_nullable
              as FhirUuid?,
      valueUuidElement: freezed == valueUuidElement
          ? _value.valueUuidElement
          : valueUuidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueAddress: freezed == valueAddress
          ? _value.valueAddress
          : valueAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      valueAge: freezed == valueAge
          ? _value.valueAge
          : valueAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      valueAnnotation: freezed == valueAnnotation
          ? _value.valueAnnotation
          : valueAnnotation // ignore: cast_nullable_to_non_nullable
              as Annotation?,
      valueAttachment: freezed == valueAttachment
          ? _value.valueAttachment
          : valueAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      valueCodeableConcept: freezed == valueCodeableConcept
          ? _value.valueCodeableConcept
          : valueCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      valueCodeableReference: freezed == valueCodeableReference
          ? _value.valueCodeableReference
          : valueCodeableReference // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      valueCoding: freezed == valueCoding
          ? _value.valueCoding
          : valueCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      valueContactPoint: freezed == valueContactPoint
          ? _value.valueContactPoint
          : valueContactPoint // ignore: cast_nullable_to_non_nullable
              as ContactPoint?,
      valueCount: freezed == valueCount
          ? _value.valueCount
          : valueCount // ignore: cast_nullable_to_non_nullable
              as Count?,
      valueDistance: freezed == valueDistance
          ? _value.valueDistance
          : valueDistance // ignore: cast_nullable_to_non_nullable
              as Distance?,
      valueDuration: freezed == valueDuration
          ? _value.valueDuration
          : valueDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      valueHumanName: freezed == valueHumanName
          ? _value.valueHumanName
          : valueHumanName // ignore: cast_nullable_to_non_nullable
              as HumanName?,
      valueIdentifier: freezed == valueIdentifier
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      valueMoney: freezed == valueMoney
          ? _value.valueMoney
          : valueMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      valuePeriod: freezed == valuePeriod
          ? _value.valuePeriod
          : valuePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueRange: freezed == valueRange
          ? _value.valueRange
          : valueRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      valueRatio: freezed == valueRatio
          ? _value.valueRatio
          : valueRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      valueRatioRange: freezed == valueRatioRange
          ? _value.valueRatioRange
          : valueRatioRange // ignore: cast_nullable_to_non_nullable
              as RatioRange?,
      valueReference: freezed == valueReference
          ? _value.valueReference
          : valueReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      valueSampledData: freezed == valueSampledData
          ? _value.valueSampledData
          : valueSampledData // ignore: cast_nullable_to_non_nullable
              as SampledData?,
      valueSignature: freezed == valueSignature
          ? _value.valueSignature
          : valueSignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
      valueTiming: freezed == valueTiming
          ? _value.valueTiming
          : valueTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      valueContactDetail: freezed == valueContactDetail
          ? _value.valueContactDetail
          : valueContactDetail // ignore: cast_nullable_to_non_nullable
              as ContactDetail?,
      valueContributor: freezed == valueContributor
          ? _value.valueContributor
          : valueContributor // ignore: cast_nullable_to_non_nullable
              as Contributor?,
      valueDataRequirement: freezed == valueDataRequirement
          ? _value.valueDataRequirement
          : valueDataRequirement // ignore: cast_nullable_to_non_nullable
              as DataRequirement?,
      valueExpression: freezed == valueExpression
          ? _value.valueExpression
          : valueExpression // ignore: cast_nullable_to_non_nullable
              as FhirExpression?,
      valueParameterDefinition: freezed == valueParameterDefinition
          ? _value.valueParameterDefinition
          : valueParameterDefinition // ignore: cast_nullable_to_non_nullable
              as ParameterDefinition?,
      valueRelatedArtifact: freezed == valueRelatedArtifact
          ? _value.valueRelatedArtifact
          : valueRelatedArtifact // ignore: cast_nullable_to_non_nullable
              as RelatedArtifact?,
      valueTriggerDefinition: freezed == valueTriggerDefinition
          ? _value.valueTriggerDefinition
          : valueTriggerDefinition // ignore: cast_nullable_to_non_nullable
              as TriggerDefinition?,
      valueUsageContext: freezed == valueUsageContext
          ? _value.valueUsageContext
          : valueUsageContext // ignore: cast_nullable_to_non_nullable
              as UsageContext?,
      valueDosage: freezed == valueDosage
          ? _value.valueDosage
          : valueDosage // ignore: cast_nullable_to_non_nullable
              as Dosage?,
      valueMeta: freezed == valueMeta
          ? _value.valueMeta
          : valueMeta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
    ) as $Val);
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get valueAddress {
    if (_value.valueAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.valueAddress!, (value) {
      return _then(_value.copyWith(valueAddress: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res>? get valueAge {
    if (_value.valueAge == null) {
      return null;
    }

    return $AgeCopyWith<$Res>(_value.valueAge!, (value) {
      return _then(_value.copyWith(valueAge: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnotationCopyWith<$Res>? get valueAnnotation {
    if (_value.valueAnnotation == null) {
      return null;
    }

    return $AnnotationCopyWith<$Res>(_value.valueAnnotation!, (value) {
      return _then(_value.copyWith(valueAnnotation: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get valueAttachment {
    if (_value.valueAttachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.valueAttachment!, (value) {
      return _then(_value.copyWith(valueAttachment: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get valueCodeableConcept {
    if (_value.valueCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.valueCodeableConcept!,
        (value) {
      return _then(_value.copyWith(valueCodeableConcept: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res>? get valueCodeableReference {
    if (_value.valueCodeableReference == null) {
      return null;
    }

    return $CodeableReferenceCopyWith<$Res>(_value.valueCodeableReference!,
        (value) {
      return _then(_value.copyWith(valueCodeableReference: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodingCopyWith<$Res>? get valueCoding {
    if (_value.valueCoding == null) {
      return null;
    }

    return $CodingCopyWith<$Res>(_value.valueCoding!, (value) {
      return _then(_value.copyWith(valueCoding: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactPointCopyWith<$Res>? get valueContactPoint {
    if (_value.valueContactPoint == null) {
      return null;
    }

    return $ContactPointCopyWith<$Res>(_value.valueContactPoint!, (value) {
      return _then(_value.copyWith(valueContactPoint: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountCopyWith<$Res>? get valueCount {
    if (_value.valueCount == null) {
      return null;
    }

    return $CountCopyWith<$Res>(_value.valueCount!, (value) {
      return _then(_value.copyWith(valueCount: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistanceCopyWith<$Res>? get valueDistance {
    if (_value.valueDistance == null) {
      return null;
    }

    return $DistanceCopyWith<$Res>(_value.valueDistance!, (value) {
      return _then(_value.copyWith(valueDistance: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FhirDurationCopyWith<$Res>? get valueDuration {
    if (_value.valueDuration == null) {
      return null;
    }

    return $FhirDurationCopyWith<$Res>(_value.valueDuration!, (value) {
      return _then(_value.copyWith(valueDuration: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HumanNameCopyWith<$Res>? get valueHumanName {
    if (_value.valueHumanName == null) {
      return null;
    }

    return $HumanNameCopyWith<$Res>(_value.valueHumanName!, (value) {
      return _then(_value.copyWith(valueHumanName: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdentifierCopyWith<$Res>? get valueIdentifier {
    if (_value.valueIdentifier == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.valueIdentifier!, (value) {
      return _then(_value.copyWith(valueIdentifier: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get valueMoney {
    if (_value.valueMoney == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.valueMoney!, (value) {
      return _then(_value.copyWith(valueMoney: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get valuePeriod {
    if (_value.valuePeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.valuePeriod!, (value) {
      return _then(_value.copyWith(valuePeriod: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get valueQuantity {
    if (_value.valueQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.valueQuantity!, (value) {
      return _then(_value.copyWith(valueQuantity: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get valueRange {
    if (_value.valueRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.valueRange!, (value) {
      return _then(_value.copyWith(valueRange: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatioCopyWith<$Res>? get valueRatio {
    if (_value.valueRatio == null) {
      return null;
    }

    return $RatioCopyWith<$Res>(_value.valueRatio!, (value) {
      return _then(_value.copyWith(valueRatio: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatioRangeCopyWith<$Res>? get valueRatioRange {
    if (_value.valueRatioRange == null) {
      return null;
    }

    return $RatioRangeCopyWith<$Res>(_value.valueRatioRange!, (value) {
      return _then(_value.copyWith(valueRatioRange: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get valueReference {
    if (_value.valueReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.valueReference!, (value) {
      return _then(_value.copyWith(valueReference: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SampledDataCopyWith<$Res>? get valueSampledData {
    if (_value.valueSampledData == null) {
      return null;
    }

    return $SampledDataCopyWith<$Res>(_value.valueSampledData!, (value) {
      return _then(_value.copyWith(valueSampledData: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignatureCopyWith<$Res>? get valueSignature {
    if (_value.valueSignature == null) {
      return null;
    }

    return $SignatureCopyWith<$Res>(_value.valueSignature!, (value) {
      return _then(_value.copyWith(valueSignature: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimingCopyWith<$Res>? get valueTiming {
    if (_value.valueTiming == null) {
      return null;
    }

    return $TimingCopyWith<$Res>(_value.valueTiming!, (value) {
      return _then(_value.copyWith(valueTiming: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactDetailCopyWith<$Res>? get valueContactDetail {
    if (_value.valueContactDetail == null) {
      return null;
    }

    return $ContactDetailCopyWith<$Res>(_value.valueContactDetail!, (value) {
      return _then(_value.copyWith(valueContactDetail: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContributorCopyWith<$Res>? get valueContributor {
    if (_value.valueContributor == null) {
      return null;
    }

    return $ContributorCopyWith<$Res>(_value.valueContributor!, (value) {
      return _then(_value.copyWith(valueContributor: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataRequirementCopyWith<$Res>? get valueDataRequirement {
    if (_value.valueDataRequirement == null) {
      return null;
    }

    return $DataRequirementCopyWith<$Res>(_value.valueDataRequirement!,
        (value) {
      return _then(_value.copyWith(valueDataRequirement: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FhirExpressionCopyWith<$Res>? get valueExpression {
    if (_value.valueExpression == null) {
      return null;
    }

    return $FhirExpressionCopyWith<$Res>(_value.valueExpression!, (value) {
      return _then(_value.copyWith(valueExpression: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParameterDefinitionCopyWith<$Res>? get valueParameterDefinition {
    if (_value.valueParameterDefinition == null) {
      return null;
    }

    return $ParameterDefinitionCopyWith<$Res>(_value.valueParameterDefinition!,
        (value) {
      return _then(_value.copyWith(valueParameterDefinition: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RelatedArtifactCopyWith<$Res>? get valueRelatedArtifact {
    if (_value.valueRelatedArtifact == null) {
      return null;
    }

    return $RelatedArtifactCopyWith<$Res>(_value.valueRelatedArtifact!,
        (value) {
      return _then(_value.copyWith(valueRelatedArtifact: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TriggerDefinitionCopyWith<$Res>? get valueTriggerDefinition {
    if (_value.valueTriggerDefinition == null) {
      return null;
    }

    return $TriggerDefinitionCopyWith<$Res>(_value.valueTriggerDefinition!,
        (value) {
      return _then(_value.copyWith(valueTriggerDefinition: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageContextCopyWith<$Res>? get valueUsageContext {
    if (_value.valueUsageContext == null) {
      return null;
    }

    return $UsageContextCopyWith<$Res>(_value.valueUsageContext!, (value) {
      return _then(_value.copyWith(valueUsageContext: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DosageCopyWith<$Res>? get valueDosage {
    if (_value.valueDosage == null) {
      return null;
    }

    return $DosageCopyWith<$Res>(_value.valueDosage!, (value) {
      return _then(_value.copyWith(valueDosage: value) as $Val);
    });
  }

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get valueMeta {
    if (_value.valueMeta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.valueMeta!, (value) {
      return _then(_value.copyWith(valueMeta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ElementDefinitionExampleImplCopyWith<$Res>
    implements $ElementDefinitionExampleCopyWith<$Res> {
  factory _$$ElementDefinitionExampleImplCopyWith(
          _$ElementDefinitionExampleImpl value,
          $Res Function(_$ElementDefinitionExampleImpl) then) =
      __$$ElementDefinitionExampleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? label,
      @JsonKey(name: '_label') PrimitiveElement? labelElement,
      FhirBase64Binary? valueBase64Binary,
      @JsonKey(name: '_valueBase64Binary')
      PrimitiveElement? valueBase64BinaryElement,
      FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
      FhirCanonical? valueCanonical,
      @JsonKey(name: '_valueCanonical') PrimitiveElement? valueCanonicalElement,
      FhirCode? valueCode,
      @JsonKey(name: '_valueCode') PrimitiveElement? valueCodeElement,
      FhirDate? valueDate,
      @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
      FhirDateTime? valueDateTime,
      @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
      FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
      FhirId? valueId,
      @JsonKey(name: '_valueId') PrimitiveElement? valueIdElement,
      FhirInstant? valueInstant,
      @JsonKey(name: '_valueInstant') PrimitiveElement? valueInstantElement,
      FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
      FhirMarkdown? valueMarkdown,
      @JsonKey(name: '_valueMarkdown') PrimitiveElement? valueMarkdownElement,
      FhirOid? valueOid,
      @JsonKey(name: '_valueOid') PrimitiveElement? valueOidElement,
      FhirPositiveInt? valuePositiveInt,
      @JsonKey(name: '_valuePositiveInt')
      PrimitiveElement? valuePositiveIntElement,
      String? valueString,
      @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
      FhirTime? valueTime,
      @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
      FhirUnsignedInt? valueUnsignedInt,
      @JsonKey(name: '_valueUnsignedInt')
      PrimitiveElement? valueUnsignedIntElement,
      FhirUri? valueUri,
      @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,
      FhirUrl? valueUrl,
      @JsonKey(name: '_valueUrl') PrimitiveElement? valueUrlElement,
      FhirUuid? valueUuid,
      @JsonKey(name: '_valueUuid') PrimitiveElement? valueUuidElement,
      Address? valueAddress,
      Age? valueAge,
      Annotation? valueAnnotation,
      Attachment? valueAttachment,
      CodeableConcept? valueCodeableConcept,
      CodeableReference? valueCodeableReference,
      Coding? valueCoding,
      ContactPoint? valueContactPoint,
      Count? valueCount,
      Distance? valueDistance,
      FhirDuration? valueDuration,
      HumanName? valueHumanName,
      Identifier? valueIdentifier,
      Money? valueMoney,
      Period? valuePeriod,
      Quantity? valueQuantity,
      Range? valueRange,
      Ratio? valueRatio,
      RatioRange? valueRatioRange,
      Reference? valueReference,
      SampledData? valueSampledData,
      Signature? valueSignature,
      Timing? valueTiming,
      ContactDetail? valueContactDetail,
      Contributor? valueContributor,
      DataRequirement? valueDataRequirement,
      FhirExpression? valueExpression,
      ParameterDefinition? valueParameterDefinition,
      RelatedArtifact? valueRelatedArtifact,
      TriggerDefinition? valueTriggerDefinition,
      UsageContext? valueUsageContext,
      Dosage? valueDosage,
      FhirMeta? valueMeta});

  @override
  $AddressCopyWith<$Res>? get valueAddress;
  @override
  $AgeCopyWith<$Res>? get valueAge;
  @override
  $AnnotationCopyWith<$Res>? get valueAnnotation;
  @override
  $AttachmentCopyWith<$Res>? get valueAttachment;
  @override
  $CodeableConceptCopyWith<$Res>? get valueCodeableConcept;
  @override
  $CodeableReferenceCopyWith<$Res>? get valueCodeableReference;
  @override
  $CodingCopyWith<$Res>? get valueCoding;
  @override
  $ContactPointCopyWith<$Res>? get valueContactPoint;
  @override
  $CountCopyWith<$Res>? get valueCount;
  @override
  $DistanceCopyWith<$Res>? get valueDistance;
  @override
  $FhirDurationCopyWith<$Res>? get valueDuration;
  @override
  $HumanNameCopyWith<$Res>? get valueHumanName;
  @override
  $IdentifierCopyWith<$Res>? get valueIdentifier;
  @override
  $MoneyCopyWith<$Res>? get valueMoney;
  @override
  $PeriodCopyWith<$Res>? get valuePeriod;
  @override
  $QuantityCopyWith<$Res>? get valueQuantity;
  @override
  $RangeCopyWith<$Res>? get valueRange;
  @override
  $RatioCopyWith<$Res>? get valueRatio;
  @override
  $RatioRangeCopyWith<$Res>? get valueRatioRange;
  @override
  $ReferenceCopyWith<$Res>? get valueReference;
  @override
  $SampledDataCopyWith<$Res>? get valueSampledData;
  @override
  $SignatureCopyWith<$Res>? get valueSignature;
  @override
  $TimingCopyWith<$Res>? get valueTiming;
  @override
  $ContactDetailCopyWith<$Res>? get valueContactDetail;
  @override
  $ContributorCopyWith<$Res>? get valueContributor;
  @override
  $DataRequirementCopyWith<$Res>? get valueDataRequirement;
  @override
  $FhirExpressionCopyWith<$Res>? get valueExpression;
  @override
  $ParameterDefinitionCopyWith<$Res>? get valueParameterDefinition;
  @override
  $RelatedArtifactCopyWith<$Res>? get valueRelatedArtifact;
  @override
  $TriggerDefinitionCopyWith<$Res>? get valueTriggerDefinition;
  @override
  $UsageContextCopyWith<$Res>? get valueUsageContext;
  @override
  $DosageCopyWith<$Res>? get valueDosage;
  @override
  $FhirMetaCopyWith<$Res>? get valueMeta;
}

/// @nodoc
class __$$ElementDefinitionExampleImplCopyWithImpl<$Res>
    extends _$ElementDefinitionExampleCopyWithImpl<$Res,
        _$ElementDefinitionExampleImpl>
    implements _$$ElementDefinitionExampleImplCopyWith<$Res> {
  __$$ElementDefinitionExampleImplCopyWithImpl(
      _$ElementDefinitionExampleImpl _value,
      $Res Function(_$ElementDefinitionExampleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? label = freezed,
    Object? labelElement = freezed,
    Object? valueBase64Binary = freezed,
    Object? valueBase64BinaryElement = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueCanonical = freezed,
    Object? valueCanonicalElement = freezed,
    Object? valueCode = freezed,
    Object? valueCodeElement = freezed,
    Object? valueDate = freezed,
    Object? valueDateElement = freezed,
    Object? valueDateTime = freezed,
    Object? valueDateTimeElement = freezed,
    Object? valueDecimal = freezed,
    Object? valueDecimalElement = freezed,
    Object? valueId = freezed,
    Object? valueIdElement = freezed,
    Object? valueInstant = freezed,
    Object? valueInstantElement = freezed,
    Object? valueInteger = freezed,
    Object? valueIntegerElement = freezed,
    Object? valueMarkdown = freezed,
    Object? valueMarkdownElement = freezed,
    Object? valueOid = freezed,
    Object? valueOidElement = freezed,
    Object? valuePositiveInt = freezed,
    Object? valuePositiveIntElement = freezed,
    Object? valueString = freezed,
    Object? valueStringElement = freezed,
    Object? valueTime = freezed,
    Object? valueTimeElement = freezed,
    Object? valueUnsignedInt = freezed,
    Object? valueUnsignedIntElement = freezed,
    Object? valueUri = freezed,
    Object? valueUriElement = freezed,
    Object? valueUrl = freezed,
    Object? valueUrlElement = freezed,
    Object? valueUuid = freezed,
    Object? valueUuidElement = freezed,
    Object? valueAddress = freezed,
    Object? valueAge = freezed,
    Object? valueAnnotation = freezed,
    Object? valueAttachment = freezed,
    Object? valueCodeableConcept = freezed,
    Object? valueCodeableReference = freezed,
    Object? valueCoding = freezed,
    Object? valueContactPoint = freezed,
    Object? valueCount = freezed,
    Object? valueDistance = freezed,
    Object? valueDuration = freezed,
    Object? valueHumanName = freezed,
    Object? valueIdentifier = freezed,
    Object? valueMoney = freezed,
    Object? valuePeriod = freezed,
    Object? valueQuantity = freezed,
    Object? valueRange = freezed,
    Object? valueRatio = freezed,
    Object? valueRatioRange = freezed,
    Object? valueReference = freezed,
    Object? valueSampledData = freezed,
    Object? valueSignature = freezed,
    Object? valueTiming = freezed,
    Object? valueContactDetail = freezed,
    Object? valueContributor = freezed,
    Object? valueDataRequirement = freezed,
    Object? valueExpression = freezed,
    Object? valueParameterDefinition = freezed,
    Object? valueRelatedArtifact = freezed,
    Object? valueTriggerDefinition = freezed,
    Object? valueUsageContext = freezed,
    Object? valueDosage = freezed,
    Object? valueMeta = freezed,
  }) {
    return _then(_$ElementDefinitionExampleImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      labelElement: freezed == labelElement
          ? _value.labelElement
          : labelElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueBase64Binary: freezed == valueBase64Binary
          ? _value.valueBase64Binary
          : valueBase64Binary // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      valueBase64BinaryElement: freezed == valueBase64BinaryElement
          ? _value.valueBase64BinaryElement
          : valueBase64BinaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueCanonical: freezed == valueCanonical
          ? _value.valueCanonical
          : valueCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      valueCanonicalElement: freezed == valueCanonicalElement
          ? _value.valueCanonicalElement
          : valueCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueCode: freezed == valueCode
          ? _value.valueCode
          : valueCode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      valueCodeElement: freezed == valueCodeElement
          ? _value.valueCodeElement
          : valueCodeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      valueDateElement: freezed == valueDateElement
          ? _value.valueDateElement
          : valueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDateTime: freezed == valueDateTime
          ? _value.valueDateTime
          : valueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      valueDateTimeElement: freezed == valueDateTimeElement
          ? _value.valueDateTimeElement
          : valueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDecimal: freezed == valueDecimal
          ? _value.valueDecimal
          : valueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueDecimalElement: freezed == valueDecimalElement
          ? _value.valueDecimalElement
          : valueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueId: freezed == valueId
          ? _value.valueId
          : valueId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      valueIdElement: freezed == valueIdElement
          ? _value.valueIdElement
          : valueIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueInstant: freezed == valueInstant
          ? _value.valueInstant
          : valueInstant // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      valueInstantElement: freezed == valueInstantElement
          ? _value.valueInstantElement
          : valueInstantElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueInteger: freezed == valueInteger
          ? _value.valueInteger
          : valueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      valueIntegerElement: freezed == valueIntegerElement
          ? _value.valueIntegerElement
          : valueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueMarkdown: freezed == valueMarkdown
          ? _value.valueMarkdown
          : valueMarkdown // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      valueMarkdownElement: freezed == valueMarkdownElement
          ? _value.valueMarkdownElement
          : valueMarkdownElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueOid: freezed == valueOid
          ? _value.valueOid
          : valueOid // ignore: cast_nullable_to_non_nullable
              as FhirOid?,
      valueOidElement: freezed == valueOidElement
          ? _value.valueOidElement
          : valueOidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valuePositiveInt: freezed == valuePositiveInt
          ? _value.valuePositiveInt
          : valuePositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      valuePositiveIntElement: freezed == valuePositiveIntElement
          ? _value.valuePositiveIntElement
          : valuePositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueString: freezed == valueString
          ? _value.valueString
          : valueString // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStringElement: freezed == valueStringElement
          ? _value.valueStringElement
          : valueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueTime: freezed == valueTime
          ? _value.valueTime
          : valueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      valueTimeElement: freezed == valueTimeElement
          ? _value.valueTimeElement
          : valueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUnsignedInt: freezed == valueUnsignedInt
          ? _value.valueUnsignedInt
          : valueUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      valueUnsignedIntElement: freezed == valueUnsignedIntElement
          ? _value.valueUnsignedIntElement
          : valueUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUri: freezed == valueUri
          ? _value.valueUri
          : valueUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      valueUriElement: freezed == valueUriElement
          ? _value.valueUriElement
          : valueUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUrl: freezed == valueUrl
          ? _value.valueUrl
          : valueUrl // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      valueUrlElement: freezed == valueUrlElement
          ? _value.valueUrlElement
          : valueUrlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUuid: freezed == valueUuid
          ? _value.valueUuid
          : valueUuid // ignore: cast_nullable_to_non_nullable
              as FhirUuid?,
      valueUuidElement: freezed == valueUuidElement
          ? _value.valueUuidElement
          : valueUuidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueAddress: freezed == valueAddress
          ? _value.valueAddress
          : valueAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      valueAge: freezed == valueAge
          ? _value.valueAge
          : valueAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      valueAnnotation: freezed == valueAnnotation
          ? _value.valueAnnotation
          : valueAnnotation // ignore: cast_nullable_to_non_nullable
              as Annotation?,
      valueAttachment: freezed == valueAttachment
          ? _value.valueAttachment
          : valueAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      valueCodeableConcept: freezed == valueCodeableConcept
          ? _value.valueCodeableConcept
          : valueCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      valueCodeableReference: freezed == valueCodeableReference
          ? _value.valueCodeableReference
          : valueCodeableReference // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      valueCoding: freezed == valueCoding
          ? _value.valueCoding
          : valueCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      valueContactPoint: freezed == valueContactPoint
          ? _value.valueContactPoint
          : valueContactPoint // ignore: cast_nullable_to_non_nullable
              as ContactPoint?,
      valueCount: freezed == valueCount
          ? _value.valueCount
          : valueCount // ignore: cast_nullable_to_non_nullable
              as Count?,
      valueDistance: freezed == valueDistance
          ? _value.valueDistance
          : valueDistance // ignore: cast_nullable_to_non_nullable
              as Distance?,
      valueDuration: freezed == valueDuration
          ? _value.valueDuration
          : valueDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      valueHumanName: freezed == valueHumanName
          ? _value.valueHumanName
          : valueHumanName // ignore: cast_nullable_to_non_nullable
              as HumanName?,
      valueIdentifier: freezed == valueIdentifier
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      valueMoney: freezed == valueMoney
          ? _value.valueMoney
          : valueMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      valuePeriod: freezed == valuePeriod
          ? _value.valuePeriod
          : valuePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueRange: freezed == valueRange
          ? _value.valueRange
          : valueRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      valueRatio: freezed == valueRatio
          ? _value.valueRatio
          : valueRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      valueRatioRange: freezed == valueRatioRange
          ? _value.valueRatioRange
          : valueRatioRange // ignore: cast_nullable_to_non_nullable
              as RatioRange?,
      valueReference: freezed == valueReference
          ? _value.valueReference
          : valueReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      valueSampledData: freezed == valueSampledData
          ? _value.valueSampledData
          : valueSampledData // ignore: cast_nullable_to_non_nullable
              as SampledData?,
      valueSignature: freezed == valueSignature
          ? _value.valueSignature
          : valueSignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
      valueTiming: freezed == valueTiming
          ? _value.valueTiming
          : valueTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      valueContactDetail: freezed == valueContactDetail
          ? _value.valueContactDetail
          : valueContactDetail // ignore: cast_nullable_to_non_nullable
              as ContactDetail?,
      valueContributor: freezed == valueContributor
          ? _value.valueContributor
          : valueContributor // ignore: cast_nullable_to_non_nullable
              as Contributor?,
      valueDataRequirement: freezed == valueDataRequirement
          ? _value.valueDataRequirement
          : valueDataRequirement // ignore: cast_nullable_to_non_nullable
              as DataRequirement?,
      valueExpression: freezed == valueExpression
          ? _value.valueExpression
          : valueExpression // ignore: cast_nullable_to_non_nullable
              as FhirExpression?,
      valueParameterDefinition: freezed == valueParameterDefinition
          ? _value.valueParameterDefinition
          : valueParameterDefinition // ignore: cast_nullable_to_non_nullable
              as ParameterDefinition?,
      valueRelatedArtifact: freezed == valueRelatedArtifact
          ? _value.valueRelatedArtifact
          : valueRelatedArtifact // ignore: cast_nullable_to_non_nullable
              as RelatedArtifact?,
      valueTriggerDefinition: freezed == valueTriggerDefinition
          ? _value.valueTriggerDefinition
          : valueTriggerDefinition // ignore: cast_nullable_to_non_nullable
              as TriggerDefinition?,
      valueUsageContext: freezed == valueUsageContext
          ? _value.valueUsageContext
          : valueUsageContext // ignore: cast_nullable_to_non_nullable
              as UsageContext?,
      valueDosage: freezed == valueDosage
          ? _value.valueDosage
          : valueDosage // ignore: cast_nullable_to_non_nullable
              as Dosage?,
      valueMeta: freezed == valueMeta
          ? _value.valueMeta
          : valueMeta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElementDefinitionExampleImpl extends _ElementDefinitionExample {
  _$ElementDefinitionExampleImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.label,
      @JsonKey(name: '_label') this.labelElement,
      this.valueBase64Binary,
      @JsonKey(name: '_valueBase64Binary') this.valueBase64BinaryElement,
      this.valueBoolean,
      @JsonKey(name: '_valueBoolean') this.valueBooleanElement,
      this.valueCanonical,
      @JsonKey(name: '_valueCanonical') this.valueCanonicalElement,
      this.valueCode,
      @JsonKey(name: '_valueCode') this.valueCodeElement,
      this.valueDate,
      @JsonKey(name: '_valueDate') this.valueDateElement,
      this.valueDateTime,
      @JsonKey(name: '_valueDateTime') this.valueDateTimeElement,
      this.valueDecimal,
      @JsonKey(name: '_valueDecimal') this.valueDecimalElement,
      this.valueId,
      @JsonKey(name: '_valueId') this.valueIdElement,
      this.valueInstant,
      @JsonKey(name: '_valueInstant') this.valueInstantElement,
      this.valueInteger,
      @JsonKey(name: '_valueInteger') this.valueIntegerElement,
      this.valueMarkdown,
      @JsonKey(name: '_valueMarkdown') this.valueMarkdownElement,
      this.valueOid,
      @JsonKey(name: '_valueOid') this.valueOidElement,
      this.valuePositiveInt,
      @JsonKey(name: '_valuePositiveInt') this.valuePositiveIntElement,
      this.valueString,
      @JsonKey(name: '_valueString') this.valueStringElement,
      this.valueTime,
      @JsonKey(name: '_valueTime') this.valueTimeElement,
      this.valueUnsignedInt,
      @JsonKey(name: '_valueUnsignedInt') this.valueUnsignedIntElement,
      this.valueUri,
      @JsonKey(name: '_valueUri') this.valueUriElement,
      this.valueUrl,
      @JsonKey(name: '_valueUrl') this.valueUrlElement,
      this.valueUuid,
      @JsonKey(name: '_valueUuid') this.valueUuidElement,
      this.valueAddress,
      this.valueAge,
      this.valueAnnotation,
      this.valueAttachment,
      this.valueCodeableConcept,
      this.valueCodeableReference,
      this.valueCoding,
      this.valueContactPoint,
      this.valueCount,
      this.valueDistance,
      this.valueDuration,
      this.valueHumanName,
      this.valueIdentifier,
      this.valueMoney,
      this.valuePeriod,
      this.valueQuantity,
      this.valueRange,
      this.valueRatio,
      this.valueRatioRange,
      this.valueReference,
      this.valueSampledData,
      this.valueSignature,
      this.valueTiming,
      this.valueContactDetail,
      this.valueContributor,
      this.valueDataRequirement,
      this.valueExpression,
      this.valueParameterDefinition,
      this.valueRelatedArtifact,
      this.valueTriggerDefinition,
      this.valueUsageContext,
      this.valueDosage,
      this.valueMeta})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ElementDefinitionExampleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElementDefinitionExampleImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [label] Describes the purpose of this example amoung the set of examples.
  @override
  final String? label;

  /// [labelElement] Extensions for label
  @override
  @JsonKey(name: '_label')
  final PrimitiveElement? labelElement;

  /// [valueBase64Binary] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  @override
  final FhirBase64Binary? valueBase64Binary;

  /// [valueBase64BinaryElement] Extensions for valueBase64Binary
  @override
  @JsonKey(name: '_valueBase64Binary')
  final PrimitiveElement? valueBase64BinaryElement;

  /// [valueBoolean] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final FhirBoolean? valueBoolean;

  /// [valueBooleanElement] Extensions for valueBoolean
  @override
  @JsonKey(name: '_valueBoolean')
  final PrimitiveElement? valueBooleanElement;

  /// [valueCanonical] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final FhirCanonical? valueCanonical;

  /// [valueCanonicalElement] Extensions for valueCanonical
  @override
  @JsonKey(name: '_valueCanonical')
  final PrimitiveElement? valueCanonicalElement;

  /// [valueCode] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final FhirCode? valueCode;

  /// [valueCodeElement] Extensions for valueCode
  @override
  @JsonKey(name: '_valueCode')
  final PrimitiveElement? valueCodeElement;

  /// [valueDate] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final FhirDate? valueDate;

  /// [valueDateElement] Extensions for valueDate
  @override
  @JsonKey(name: '_valueDate')
  final PrimitiveElement? valueDateElement;

  /// [valueDateTime] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final FhirDateTime? valueDateTime;

  /// [valueDateTimeElement] Extensions for valueDateTime
  @override
  @JsonKey(name: '_valueDateTime')
  final PrimitiveElement? valueDateTimeElement;

  /// [valueDecimal] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final FhirDecimal? valueDecimal;

  /// [valueDecimalElement] Extensions for valueDecimal
  @override
  @JsonKey(name: '_valueDecimal')
  final PrimitiveElement? valueDecimalElement;

  /// [valueId] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final FhirId? valueId;

  /// [valueIdElement] Extensions for valueId
  @override
  @JsonKey(name: '_valueId')
  final PrimitiveElement? valueIdElement;

  /// [valueInstant] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final FhirInstant? valueInstant;

  /// [valueInstantElement] Extensions for valueInstant
  @override
  @JsonKey(name: '_valueInstant')
  final PrimitiveElement? valueInstantElement;

  /// [valueInteger] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final FhirInteger? valueInteger;

  /// [valueIntegerElement] Extensions for valueInteger
  @override
  @JsonKey(name: '_valueInteger')
  final PrimitiveElement? valueIntegerElement;

  /// [valueMarkdown] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final FhirMarkdown? valueMarkdown;

  /// [valueMarkdownElement] Extensions for valueMarkdown
  @override
  @JsonKey(name: '_valueMarkdown')
  final PrimitiveElement? valueMarkdownElement;

  /// [valueOid] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final FhirOid? valueOid;

  /// [valueOidElement] Extensions for valueOid
  @override
  @JsonKey(name: '_valueOid')
  final PrimitiveElement? valueOidElement;

  /// [valuePositiveInt] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final FhirPositiveInt? valuePositiveInt;

  /// [valuePositiveIntElement] Extensions for valuePositiveInt
  @override
  @JsonKey(name: '_valuePositiveInt')
  final PrimitiveElement? valuePositiveIntElement;

  /// [valueString] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final String? valueString;

  /// [valueStringElement] Extensions for valueString
  @override
  @JsonKey(name: '_valueString')
  final PrimitiveElement? valueStringElement;

  /// [valueTime] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final FhirTime? valueTime;

  /// [valueTimeElement] Extensions for valueTime
  @override
  @JsonKey(name: '_valueTime')
  final PrimitiveElement? valueTimeElement;

  /// [valueUnsignedInt] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final FhirUnsignedInt? valueUnsignedInt;

  /// [valueUnsignedIntElement] Extensions for valueUnsignedInt
  @override
  @JsonKey(name: '_valueUnsignedInt')
  final PrimitiveElement? valueUnsignedIntElement;

  /// [valueUri] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final FhirUri? valueUri;

  /// [valueUriElement] Extensions for valueUri
  @override
  @JsonKey(name: '_valueUri')
  final PrimitiveElement? valueUriElement;

  /// [valueUrl] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final FhirUrl? valueUrl;

  /// [valueUrlElement] Extensions for valueUrl
  @override
  @JsonKey(name: '_valueUrl')
  final PrimitiveElement? valueUrlElement;

  /// [valueUuid] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final FhirUuid? valueUuid;

  /// [valueUuidElement] Extensions for valueUuid
  @override
  @JsonKey(name: '_valueUuid')
  final PrimitiveElement? valueUuidElement;

  /// [valueAddress] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final Address? valueAddress;

  /// [valueAge] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final Age? valueAge;

  /// [valueAnnotation] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final Annotation? valueAnnotation;

  /// [valueAttachment] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final Attachment? valueAttachment;

  /// [valueCodeableConcept] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  @override
  final CodeableConcept? valueCodeableConcept;
  @override
  final CodeableReference? valueCodeableReference;

  /// [valueCoding] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final Coding? valueCoding;

  /// [valueContactPoint] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  @override
  final ContactPoint? valueContactPoint;

  /// [valueCount] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final Count? valueCount;

  /// [valueDistance] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final Distance? valueDistance;

  /// [valueDuration] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final FhirDuration? valueDuration;

  /// [valueHumanName] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final HumanName? valueHumanName;

  /// [valueIdentifier] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final Identifier? valueIdentifier;

  /// [valueMoney] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final Money? valueMoney;

  /// [valuePeriod] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final Period? valuePeriod;

  /// [valueQuantity] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final Quantity? valueQuantity;

  /// [valueRange] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final Range? valueRange;

  /// [valueRatio] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final Ratio? valueRatio;
  @override
  final RatioRange? valueRatioRange;

  /// [valueReference] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final Reference? valueReference;

  /// [valueSampledData] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final SampledData? valueSampledData;

  /// [valueSignature] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final Signature? valueSignature;

  /// [valueTiming] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final Timing? valueTiming;

  /// [valueContactDetail] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  @override
  final ContactDetail? valueContactDetail;

  /// [valueContributor] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final Contributor? valueContributor;

  /// [valueDataRequirement] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  @override
  final DataRequirement? valueDataRequirement;

  /// [valueExpression] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  final FhirExpression? valueExpression;

  /// [valueParameterDefinition] The actual value for the element, which must
  ///  be one of the types allowed for this element.
  @override
  final ParameterDefinition? valueParameterDefinition;

  /// [valueRelatedArtifact] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  @override
  final RelatedArtifact? valueRelatedArtifact;

  /// [valueTriggerDefinition] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  @override
  final TriggerDefinition? valueTriggerDefinition;

  /// [valueUsageContext] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  @override
  final UsageContext? valueUsageContext;

  /// [valueDosage] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final Dosage? valueDosage;

  /// [valueMeta] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  final FhirMeta? valueMeta;

  @override
  String toString() {
    return 'ElementDefinitionExample(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, label: $label, labelElement: $labelElement, valueBase64Binary: $valueBase64Binary, valueBase64BinaryElement: $valueBase64BinaryElement, valueBoolean: $valueBoolean, valueBooleanElement: $valueBooleanElement, valueCanonical: $valueCanonical, valueCanonicalElement: $valueCanonicalElement, valueCode: $valueCode, valueCodeElement: $valueCodeElement, valueDate: $valueDate, valueDateElement: $valueDateElement, valueDateTime: $valueDateTime, valueDateTimeElement: $valueDateTimeElement, valueDecimal: $valueDecimal, valueDecimalElement: $valueDecimalElement, valueId: $valueId, valueIdElement: $valueIdElement, valueInstant: $valueInstant, valueInstantElement: $valueInstantElement, valueInteger: $valueInteger, valueIntegerElement: $valueIntegerElement, valueMarkdown: $valueMarkdown, valueMarkdownElement: $valueMarkdownElement, valueOid: $valueOid, valueOidElement: $valueOidElement, valuePositiveInt: $valuePositiveInt, valuePositiveIntElement: $valuePositiveIntElement, valueString: $valueString, valueStringElement: $valueStringElement, valueTime: $valueTime, valueTimeElement: $valueTimeElement, valueUnsignedInt: $valueUnsignedInt, valueUnsignedIntElement: $valueUnsignedIntElement, valueUri: $valueUri, valueUriElement: $valueUriElement, valueUrl: $valueUrl, valueUrlElement: $valueUrlElement, valueUuid: $valueUuid, valueUuidElement: $valueUuidElement, valueAddress: $valueAddress, valueAge: $valueAge, valueAnnotation: $valueAnnotation, valueAttachment: $valueAttachment, valueCodeableConcept: $valueCodeableConcept, valueCodeableReference: $valueCodeableReference, valueCoding: $valueCoding, valueContactPoint: $valueContactPoint, valueCount: $valueCount, valueDistance: $valueDistance, valueDuration: $valueDuration, valueHumanName: $valueHumanName, valueIdentifier: $valueIdentifier, valueMoney: $valueMoney, valuePeriod: $valuePeriod, valueQuantity: $valueQuantity, valueRange: $valueRange, valueRatio: $valueRatio, valueRatioRange: $valueRatioRange, valueReference: $valueReference, valueSampledData: $valueSampledData, valueSignature: $valueSignature, valueTiming: $valueTiming, valueContactDetail: $valueContactDetail, valueContributor: $valueContributor, valueDataRequirement: $valueDataRequirement, valueExpression: $valueExpression, valueParameterDefinition: $valueParameterDefinition, valueRelatedArtifact: $valueRelatedArtifact, valueTriggerDefinition: $valueTriggerDefinition, valueUsageContext: $valueUsageContext, valueDosage: $valueDosage, valueMeta: $valueMeta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementDefinitionExampleImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.labelElement, labelElement) ||
                other.labelElement == labelElement) &&
            (identical(other.valueBase64Binary, valueBase64Binary) ||
                other.valueBase64Binary == valueBase64Binary) &&
            (identical(other.valueBase64BinaryElement, valueBase64BinaryElement) ||
                other.valueBase64BinaryElement == valueBase64BinaryElement) &&
            (identical(other.valueBoolean, valueBoolean) ||
                other.valueBoolean == valueBoolean) &&
            (identical(other.valueBooleanElement, valueBooleanElement) ||
                other.valueBooleanElement == valueBooleanElement) &&
            (identical(other.valueCanonical, valueCanonical) ||
                other.valueCanonical == valueCanonical) &&
            (identical(other.valueCanonicalElement, valueCanonicalElement) ||
                other.valueCanonicalElement == valueCanonicalElement) &&
            (identical(other.valueCode, valueCode) ||
                other.valueCode == valueCode) &&
            (identical(other.valueCodeElement, valueCodeElement) ||
                other.valueCodeElement == valueCodeElement) &&
            (identical(other.valueDate, valueDate) ||
                other.valueDate == valueDate) &&
            (identical(other.valueDateElement, valueDateElement) ||
                other.valueDateElement == valueDateElement) &&
            (identical(other.valueDateTime, valueDateTime) ||
                other.valueDateTime == valueDateTime) &&
            (identical(other.valueDateTimeElement, valueDateTimeElement) ||
                other.valueDateTimeElement == valueDateTimeElement) &&
            (identical(other.valueDecimal, valueDecimal) ||
                other.valueDecimal == valueDecimal) &&
            (identical(other.valueDecimalElement, valueDecimalElement) ||
                other.valueDecimalElement == valueDecimalElement) &&
            (identical(other.valueId, valueId) || other.valueId == valueId) &&
            (identical(other.valueIdElement, valueIdElement) ||
                other.valueIdElement == valueIdElement) &&
            (identical(other.valueInstant, valueInstant) ||
                other.valueInstant == valueInstant) &&
            (identical(other.valueInstantElement, valueInstantElement) ||
                other.valueInstantElement == valueInstantElement) &&
            (identical(other.valueInteger, valueInteger) ||
                other.valueInteger == valueInteger) &&
            (identical(other.valueIntegerElement, valueIntegerElement) ||
                other.valueIntegerElement == valueIntegerElement) &&
            (identical(other.valueMarkdown, valueMarkdown) ||
                other.valueMarkdown == valueMarkdown) &&
            (identical(other.valueMarkdownElement, valueMarkdownElement) ||
                other.valueMarkdownElement == valueMarkdownElement) &&
            (identical(other.valueOid, valueOid) ||
                other.valueOid == valueOid) &&
            (identical(other.valueOidElement, valueOidElement) ||
                other.valueOidElement == valueOidElement) &&
            (identical(other.valuePositiveInt, valuePositiveInt) ||
                other.valuePositiveInt == valuePositiveInt) &&
            (identical(other.valuePositiveIntElement, valuePositiveIntElement) ||
                other.valuePositiveIntElement == valuePositiveIntElement) &&
            (identical(other.valueString, valueString) ||
                other.valueString == valueString) &&
            (identical(other.valueStringElement, valueStringElement) ||
                other.valueStringElement == valueStringElement) &&
            (identical(other.valueTime, valueTime) ||
                other.valueTime == valueTime) &&
            (identical(other.valueTimeElement, valueTimeElement) ||
                other.valueTimeElement == valueTimeElement) &&
            (identical(other.valueUnsignedInt, valueUnsignedInt) ||
                other.valueUnsignedInt == valueUnsignedInt) &&
            (identical(other.valueUnsignedIntElement, valueUnsignedIntElement) || other.valueUnsignedIntElement == valueUnsignedIntElement) &&
            (identical(other.valueUri, valueUri) || other.valueUri == valueUri) &&
            (identical(other.valueUriElement, valueUriElement) || other.valueUriElement == valueUriElement) &&
            (identical(other.valueUrl, valueUrl) || other.valueUrl == valueUrl) &&
            (identical(other.valueUrlElement, valueUrlElement) || other.valueUrlElement == valueUrlElement) &&
            (identical(other.valueUuid, valueUuid) || other.valueUuid == valueUuid) &&
            (identical(other.valueUuidElement, valueUuidElement) || other.valueUuidElement == valueUuidElement) &&
            (identical(other.valueAddress, valueAddress) || other.valueAddress == valueAddress) &&
            (identical(other.valueAge, valueAge) || other.valueAge == valueAge) &&
            (identical(other.valueAnnotation, valueAnnotation) || other.valueAnnotation == valueAnnotation) &&
            (identical(other.valueAttachment, valueAttachment) || other.valueAttachment == valueAttachment) &&
            (identical(other.valueCodeableConcept, valueCodeableConcept) || other.valueCodeableConcept == valueCodeableConcept) &&
            (identical(other.valueCodeableReference, valueCodeableReference) || other.valueCodeableReference == valueCodeableReference) &&
            (identical(other.valueCoding, valueCoding) || other.valueCoding == valueCoding) &&
            (identical(other.valueContactPoint, valueContactPoint) || other.valueContactPoint == valueContactPoint) &&
            (identical(other.valueCount, valueCount) || other.valueCount == valueCount) &&
            (identical(other.valueDistance, valueDistance) || other.valueDistance == valueDistance) &&
            (identical(other.valueDuration, valueDuration) || other.valueDuration == valueDuration) &&
            (identical(other.valueHumanName, valueHumanName) || other.valueHumanName == valueHumanName) &&
            (identical(other.valueIdentifier, valueIdentifier) || other.valueIdentifier == valueIdentifier) &&
            (identical(other.valueMoney, valueMoney) || other.valueMoney == valueMoney) &&
            (identical(other.valuePeriod, valuePeriod) || other.valuePeriod == valuePeriod) &&
            (identical(other.valueQuantity, valueQuantity) || other.valueQuantity == valueQuantity) &&
            (identical(other.valueRange, valueRange) || other.valueRange == valueRange) &&
            (identical(other.valueRatio, valueRatio) || other.valueRatio == valueRatio) &&
            (identical(other.valueRatioRange, valueRatioRange) || other.valueRatioRange == valueRatioRange) &&
            (identical(other.valueReference, valueReference) || other.valueReference == valueReference) &&
            (identical(other.valueSampledData, valueSampledData) || other.valueSampledData == valueSampledData) &&
            (identical(other.valueSignature, valueSignature) || other.valueSignature == valueSignature) &&
            (identical(other.valueTiming, valueTiming) || other.valueTiming == valueTiming) &&
            (identical(other.valueContactDetail, valueContactDetail) || other.valueContactDetail == valueContactDetail) &&
            (identical(other.valueContributor, valueContributor) || other.valueContributor == valueContributor) &&
            (identical(other.valueDataRequirement, valueDataRequirement) || other.valueDataRequirement == valueDataRequirement) &&
            (identical(other.valueExpression, valueExpression) || other.valueExpression == valueExpression) &&
            (identical(other.valueParameterDefinition, valueParameterDefinition) || other.valueParameterDefinition == valueParameterDefinition) &&
            (identical(other.valueRelatedArtifact, valueRelatedArtifact) || other.valueRelatedArtifact == valueRelatedArtifact) &&
            (identical(other.valueTriggerDefinition, valueTriggerDefinition) || other.valueTriggerDefinition == valueTriggerDefinition) &&
            (identical(other.valueUsageContext, valueUsageContext) || other.valueUsageContext == valueUsageContext) &&
            (identical(other.valueDosage, valueDosage) || other.valueDosage == valueDosage) &&
            (identical(other.valueMeta, valueMeta) || other.valueMeta == valueMeta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        label,
        labelElement,
        valueBase64Binary,
        valueBase64BinaryElement,
        valueBoolean,
        valueBooleanElement,
        valueCanonical,
        valueCanonicalElement,
        valueCode,
        valueCodeElement,
        valueDate,
        valueDateElement,
        valueDateTime,
        valueDateTimeElement,
        valueDecimal,
        valueDecimalElement,
        valueId,
        valueIdElement,
        valueInstant,
        valueInstantElement,
        valueInteger,
        valueIntegerElement,
        valueMarkdown,
        valueMarkdownElement,
        valueOid,
        valueOidElement,
        valuePositiveInt,
        valuePositiveIntElement,
        valueString,
        valueStringElement,
        valueTime,
        valueTimeElement,
        valueUnsignedInt,
        valueUnsignedIntElement,
        valueUri,
        valueUriElement,
        valueUrl,
        valueUrlElement,
        valueUuid,
        valueUuidElement,
        valueAddress,
        valueAge,
        valueAnnotation,
        valueAttachment,
        valueCodeableConcept,
        valueCodeableReference,
        valueCoding,
        valueContactPoint,
        valueCount,
        valueDistance,
        valueDuration,
        valueHumanName,
        valueIdentifier,
        valueMoney,
        valuePeriod,
        valueQuantity,
        valueRange,
        valueRatio,
        valueRatioRange,
        valueReference,
        valueSampledData,
        valueSignature,
        valueTiming,
        valueContactDetail,
        valueContributor,
        valueDataRequirement,
        valueExpression,
        valueParameterDefinition,
        valueRelatedArtifact,
        valueTriggerDefinition,
        valueUsageContext,
        valueDosage,
        valueMeta
      ]);

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ElementDefinitionExampleImplCopyWith<_$ElementDefinitionExampleImpl>
      get copyWith => __$$ElementDefinitionExampleImplCopyWithImpl<
          _$ElementDefinitionExampleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElementDefinitionExampleImplToJson(
      this,
    );
  }
}

abstract class _ElementDefinitionExample extends ElementDefinitionExample {
  factory _ElementDefinitionExample(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? label,
      @JsonKey(name: '_label') final PrimitiveElement? labelElement,
      final FhirBase64Binary? valueBase64Binary,
      @JsonKey(name: '_valueBase64Binary')
      final PrimitiveElement? valueBase64BinaryElement,
      final FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean')
      final PrimitiveElement? valueBooleanElement,
      final FhirCanonical? valueCanonical,
      @JsonKey(name: '_valueCanonical')
      final PrimitiveElement? valueCanonicalElement,
      final FhirCode? valueCode,
      @JsonKey(name: '_valueCode') final PrimitiveElement? valueCodeElement,
      final FhirDate? valueDate,
      @JsonKey(name: '_valueDate') final PrimitiveElement? valueDateElement,
      final FhirDateTime? valueDateTime,
      @JsonKey(name: '_valueDateTime')
      final PrimitiveElement? valueDateTimeElement,
      final FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal')
      final PrimitiveElement? valueDecimalElement,
      final FhirId? valueId,
      @JsonKey(name: '_valueId') final PrimitiveElement? valueIdElement,
      final FhirInstant? valueInstant,
      @JsonKey(name: '_valueInstant')
      final PrimitiveElement? valueInstantElement,
      final FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger')
      final PrimitiveElement? valueIntegerElement,
      final FhirMarkdown? valueMarkdown,
      @JsonKey(name: '_valueMarkdown')
      final PrimitiveElement? valueMarkdownElement,
      final FhirOid? valueOid,
      @JsonKey(name: '_valueOid') final PrimitiveElement? valueOidElement,
      final FhirPositiveInt? valuePositiveInt,
      @JsonKey(name: '_valuePositiveInt')
      final PrimitiveElement? valuePositiveIntElement,
      final String? valueString,
      @JsonKey(name: '_valueString') final PrimitiveElement? valueStringElement,
      final FhirTime? valueTime,
      @JsonKey(name: '_valueTime') final PrimitiveElement? valueTimeElement,
      final FhirUnsignedInt? valueUnsignedInt,
      @JsonKey(name: '_valueUnsignedInt')
      final PrimitiveElement? valueUnsignedIntElement,
      final FhirUri? valueUri,
      @JsonKey(name: '_valueUri') final PrimitiveElement? valueUriElement,
      final FhirUrl? valueUrl,
      @JsonKey(name: '_valueUrl') final PrimitiveElement? valueUrlElement,
      final FhirUuid? valueUuid,
      @JsonKey(name: '_valueUuid') final PrimitiveElement? valueUuidElement,
      final Address? valueAddress,
      final Age? valueAge,
      final Annotation? valueAnnotation,
      final Attachment? valueAttachment,
      final CodeableConcept? valueCodeableConcept,
      final CodeableReference? valueCodeableReference,
      final Coding? valueCoding,
      final ContactPoint? valueContactPoint,
      final Count? valueCount,
      final Distance? valueDistance,
      final FhirDuration? valueDuration,
      final HumanName? valueHumanName,
      final Identifier? valueIdentifier,
      final Money? valueMoney,
      final Period? valuePeriod,
      final Quantity? valueQuantity,
      final Range? valueRange,
      final Ratio? valueRatio,
      final RatioRange? valueRatioRange,
      final Reference? valueReference,
      final SampledData? valueSampledData,
      final Signature? valueSignature,
      final Timing? valueTiming,
      final ContactDetail? valueContactDetail,
      final Contributor? valueContributor,
      final DataRequirement? valueDataRequirement,
      final FhirExpression? valueExpression,
      final ParameterDefinition? valueParameterDefinition,
      final RelatedArtifact? valueRelatedArtifact,
      final TriggerDefinition? valueTriggerDefinition,
      final UsageContext? valueUsageContext,
      final Dosage? valueDosage,
      final FhirMeta? valueMeta}) = _$ElementDefinitionExampleImpl;
  _ElementDefinitionExample._() : super._();

  factory _ElementDefinitionExample.fromJson(Map<String, dynamic> json) =
      _$ElementDefinitionExampleImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [label] Describes the purpose of this example amoung the set of examples.
  @override
  String? get label;

  /// [labelElement] Extensions for label
  @override
  @JsonKey(name: '_label')
  PrimitiveElement? get labelElement;

  /// [valueBase64Binary] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  @override
  FhirBase64Binary? get valueBase64Binary;

  /// [valueBase64BinaryElement] Extensions for valueBase64Binary
  @override
  @JsonKey(name: '_valueBase64Binary')
  PrimitiveElement? get valueBase64BinaryElement;

  /// [valueBoolean] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  FhirBoolean? get valueBoolean;

  /// [valueBooleanElement] Extensions for valueBoolean
  @override
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement;

  /// [valueCanonical] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  FhirCanonical? get valueCanonical;

  /// [valueCanonicalElement] Extensions for valueCanonical
  @override
  @JsonKey(name: '_valueCanonical')
  PrimitiveElement? get valueCanonicalElement;

  /// [valueCode] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  FhirCode? get valueCode;

  /// [valueCodeElement] Extensions for valueCode
  @override
  @JsonKey(name: '_valueCode')
  PrimitiveElement? get valueCodeElement;

  /// [valueDate] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  FhirDate? get valueDate;

  /// [valueDateElement] Extensions for valueDate
  @override
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement;

  /// [valueDateTime] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  FhirDateTime? get valueDateTime;

  /// [valueDateTimeElement] Extensions for valueDateTime
  @override
  @JsonKey(name: '_valueDateTime')
  PrimitiveElement? get valueDateTimeElement;

  /// [valueDecimal] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  FhirDecimal? get valueDecimal;

  /// [valueDecimalElement] Extensions for valueDecimal
  @override
  @JsonKey(name: '_valueDecimal')
  PrimitiveElement? get valueDecimalElement;

  /// [valueId] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  FhirId? get valueId;

  /// [valueIdElement] Extensions for valueId
  @override
  @JsonKey(name: '_valueId')
  PrimitiveElement? get valueIdElement;

  /// [valueInstant] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  FhirInstant? get valueInstant;

  /// [valueInstantElement] Extensions for valueInstant
  @override
  @JsonKey(name: '_valueInstant')
  PrimitiveElement? get valueInstantElement;

  /// [valueInteger] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  FhirInteger? get valueInteger;

  /// [valueIntegerElement] Extensions for valueInteger
  @override
  @JsonKey(name: '_valueInteger')
  PrimitiveElement? get valueIntegerElement;

  /// [valueMarkdown] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  FhirMarkdown? get valueMarkdown;

  /// [valueMarkdownElement] Extensions for valueMarkdown
  @override
  @JsonKey(name: '_valueMarkdown')
  PrimitiveElement? get valueMarkdownElement;

  /// [valueOid] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  FhirOid? get valueOid;

  /// [valueOidElement] Extensions for valueOid
  @override
  @JsonKey(name: '_valueOid')
  PrimitiveElement? get valueOidElement;

  /// [valuePositiveInt] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  FhirPositiveInt? get valuePositiveInt;

  /// [valuePositiveIntElement] Extensions for valuePositiveInt
  @override
  @JsonKey(name: '_valuePositiveInt')
  PrimitiveElement? get valuePositiveIntElement;

  /// [valueString] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  String? get valueString;

  /// [valueStringElement] Extensions for valueString
  @override
  @JsonKey(name: '_valueString')
  PrimitiveElement? get valueStringElement;

  /// [valueTime] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  FhirTime? get valueTime;

  /// [valueTimeElement] Extensions for valueTime
  @override
  @JsonKey(name: '_valueTime')
  PrimitiveElement? get valueTimeElement;

  /// [valueUnsignedInt] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  FhirUnsignedInt? get valueUnsignedInt;

  /// [valueUnsignedIntElement] Extensions for valueUnsignedInt
  @override
  @JsonKey(name: '_valueUnsignedInt')
  PrimitiveElement? get valueUnsignedIntElement;

  /// [valueUri] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  FhirUri? get valueUri;

  /// [valueUriElement] Extensions for valueUri
  @override
  @JsonKey(name: '_valueUri')
  PrimitiveElement? get valueUriElement;

  /// [valueUrl] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  FhirUrl? get valueUrl;

  /// [valueUrlElement] Extensions for valueUrl
  @override
  @JsonKey(name: '_valueUrl')
  PrimitiveElement? get valueUrlElement;

  /// [valueUuid] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  FhirUuid? get valueUuid;

  /// [valueUuidElement] Extensions for valueUuid
  @override
  @JsonKey(name: '_valueUuid')
  PrimitiveElement? get valueUuidElement;

  /// [valueAddress] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  Address? get valueAddress;

  /// [valueAge] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  Age? get valueAge;

  /// [valueAnnotation] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  Annotation? get valueAnnotation;

  /// [valueAttachment] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  Attachment? get valueAttachment;

  /// [valueCodeableConcept] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  @override
  CodeableConcept? get valueCodeableConcept;
  @override
  CodeableReference? get valueCodeableReference;

  /// [valueCoding] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  Coding? get valueCoding;

  /// [valueContactPoint] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  @override
  ContactPoint? get valueContactPoint;

  /// [valueCount] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  Count? get valueCount;

  /// [valueDistance] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  Distance? get valueDistance;

  /// [valueDuration] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  FhirDuration? get valueDuration;

  /// [valueHumanName] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  HumanName? get valueHumanName;

  /// [valueIdentifier] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  Identifier? get valueIdentifier;

  /// [valueMoney] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  Money? get valueMoney;

  /// [valuePeriod] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  Period? get valuePeriod;

  /// [valueQuantity] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  Quantity? get valueQuantity;

  /// [valueRange] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  Range? get valueRange;

  /// [valueRatio] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  Ratio? get valueRatio;
  @override
  RatioRange? get valueRatioRange;

  /// [valueReference] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  Reference? get valueReference;

  /// [valueSampledData] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  SampledData? get valueSampledData;

  /// [valueSignature] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  Signature? get valueSignature;

  /// [valueTiming] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  Timing? get valueTiming;

  /// [valueContactDetail] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  @override
  ContactDetail? get valueContactDetail;

  /// [valueContributor] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  Contributor? get valueContributor;

  /// [valueDataRequirement] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  @override
  DataRequirement? get valueDataRequirement;

  /// [valueExpression] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  @override
  FhirExpression? get valueExpression;

  /// [valueParameterDefinition] The actual value for the element, which must
  ///  be one of the types allowed for this element.
  @override
  ParameterDefinition? get valueParameterDefinition;

  /// [valueRelatedArtifact] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  @override
  RelatedArtifact? get valueRelatedArtifact;

  /// [valueTriggerDefinition] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  @override
  TriggerDefinition? get valueTriggerDefinition;

  /// [valueUsageContext] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  @override
  UsageContext? get valueUsageContext;

  /// [valueDosage] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  Dosage? get valueDosage;

  /// [valueMeta] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  @override
  FhirMeta? get valueMeta;

  /// Create a copy of ElementDefinitionExample
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ElementDefinitionExampleImplCopyWith<_$ElementDefinitionExampleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ElementDefinitionConstraint _$ElementDefinitionConstraintFromJson(
    Map<String, dynamic> json) {
  return _ElementDefinitionConstraint.fromJson(json);
}

/// @nodoc
mixin _$ElementDefinitionConstraint {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [key] Allows identification of which elements have their cardinalities
  /// impacted by the constraint.  Will not be referenced for constraints that
  ///  do not affect cardinality.
  FhirId? get key => throw _privateConstructorUsedError;

  /// [keyElement] Extensions for key
  @JsonKey(name: '_key')
  PrimitiveElement? get keyElement => throw _privateConstructorUsedError;

  /// [requirements] Description of why this constraint is necessary or
  ///  appropriate.
  String? get requirements => throw _privateConstructorUsedError;

  /// [requirementsElement] Extensions for requirements
  @JsonKey(name: '_requirements')
  PrimitiveElement? get requirementsElement =>
      throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: ElementDefinitionConstraintSeverity.unknown)
  ElementDefinitionConstraintSeverity? get severity =>
      throw _privateConstructorUsedError;

  /// [severityElement] Extensions for severity
  @JsonKey(name: '_severity')
  PrimitiveElement? get severityElement => throw _privateConstructorUsedError;

  /// [human] Text that can be used to describe the constraint in messages
  ///  identifying that the constraint has been violated.
  String? get human => throw _privateConstructorUsedError;

  /// [humanElement] Extensions for human
  @JsonKey(name: '_human')
  PrimitiveElement? get humanElement => throw _privateConstructorUsedError;

  /// [expression] A [FHIRPath](fhirpath.html) expression of constraint that
  ///  can be executed to see if this constraint is met.
  String? get expression => throw _privateConstructorUsedError;

  /// [expressionElement] Extensions for expression
  @JsonKey(name: '_expression')
  PrimitiveElement? get expressionElement => throw _privateConstructorUsedError;

  /// [xpath] An XPath expression of constraint that can be executed to see if
  ///  this constraint is met.
  String? get xpath => throw _privateConstructorUsedError;

  /// [xpathElement] Extensions for xpath
  @JsonKey(name: '_xpath')
  PrimitiveElement? get xpathElement => throw _privateConstructorUsedError;

  /// [source] A reference to the original source of the constraint, for
  ///  traceability purposes.
  FhirCanonical? get source => throw _privateConstructorUsedError;

  /// Serializes this ElementDefinitionConstraint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ElementDefinitionConstraint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ElementDefinitionConstraintCopyWith<ElementDefinitionConstraint>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementDefinitionConstraintCopyWith<$Res> {
  factory $ElementDefinitionConstraintCopyWith(
          ElementDefinitionConstraint value,
          $Res Function(ElementDefinitionConstraint) then) =
      _$ElementDefinitionConstraintCopyWithImpl<$Res,
          ElementDefinitionConstraint>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? key,
      @JsonKey(name: '_key') PrimitiveElement? keyElement,
      String? requirements,
      @JsonKey(name: '_requirements') PrimitiveElement? requirementsElement,
      @JsonKey(unknownEnumValue: ElementDefinitionConstraintSeverity.unknown)
      ElementDefinitionConstraintSeverity? severity,
      @JsonKey(name: '_severity') PrimitiveElement? severityElement,
      String? human,
      @JsonKey(name: '_human') PrimitiveElement? humanElement,
      String? expression,
      @JsonKey(name: '_expression') PrimitiveElement? expressionElement,
      String? xpath,
      @JsonKey(name: '_xpath') PrimitiveElement? xpathElement,
      FhirCanonical? source});
}

/// @nodoc
class _$ElementDefinitionConstraintCopyWithImpl<$Res,
        $Val extends ElementDefinitionConstraint>
    implements $ElementDefinitionConstraintCopyWith<$Res> {
  _$ElementDefinitionConstraintCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ElementDefinitionConstraint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? key = freezed,
    Object? keyElement = freezed,
    Object? requirements = freezed,
    Object? requirementsElement = freezed,
    Object? severity = freezed,
    Object? severityElement = freezed,
    Object? human = freezed,
    Object? humanElement = freezed,
    Object? expression = freezed,
    Object? expressionElement = freezed,
    Object? xpath = freezed,
    Object? xpathElement = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      keyElement: freezed == keyElement
          ? _value.keyElement
          : keyElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      requirements: freezed == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as String?,
      requirementsElement: freezed == requirementsElement
          ? _value.requirementsElement
          : requirementsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as ElementDefinitionConstraintSeverity?,
      severityElement: freezed == severityElement
          ? _value.severityElement
          : severityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      human: freezed == human
          ? _value.human
          : human // ignore: cast_nullable_to_non_nullable
              as String?,
      humanElement: freezed == humanElement
          ? _value.humanElement
          : humanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      expression: freezed == expression
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String?,
      expressionElement: freezed == expressionElement
          ? _value.expressionElement
          : expressionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      xpath: freezed == xpath
          ? _value.xpath
          : xpath // ignore: cast_nullable_to_non_nullable
              as String?,
      xpathElement: freezed == xpathElement
          ? _value.xpathElement
          : xpathElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElementDefinitionConstraintImplCopyWith<$Res>
    implements $ElementDefinitionConstraintCopyWith<$Res> {
  factory _$$ElementDefinitionConstraintImplCopyWith(
          _$ElementDefinitionConstraintImpl value,
          $Res Function(_$ElementDefinitionConstraintImpl) then) =
      __$$ElementDefinitionConstraintImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? key,
      @JsonKey(name: '_key') PrimitiveElement? keyElement,
      String? requirements,
      @JsonKey(name: '_requirements') PrimitiveElement? requirementsElement,
      @JsonKey(unknownEnumValue: ElementDefinitionConstraintSeverity.unknown)
      ElementDefinitionConstraintSeverity? severity,
      @JsonKey(name: '_severity') PrimitiveElement? severityElement,
      String? human,
      @JsonKey(name: '_human') PrimitiveElement? humanElement,
      String? expression,
      @JsonKey(name: '_expression') PrimitiveElement? expressionElement,
      String? xpath,
      @JsonKey(name: '_xpath') PrimitiveElement? xpathElement,
      FhirCanonical? source});
}

/// @nodoc
class __$$ElementDefinitionConstraintImplCopyWithImpl<$Res>
    extends _$ElementDefinitionConstraintCopyWithImpl<$Res,
        _$ElementDefinitionConstraintImpl>
    implements _$$ElementDefinitionConstraintImplCopyWith<$Res> {
  __$$ElementDefinitionConstraintImplCopyWithImpl(
      _$ElementDefinitionConstraintImpl _value,
      $Res Function(_$ElementDefinitionConstraintImpl) _then)
      : super(_value, _then);

  /// Create a copy of ElementDefinitionConstraint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? key = freezed,
    Object? keyElement = freezed,
    Object? requirements = freezed,
    Object? requirementsElement = freezed,
    Object? severity = freezed,
    Object? severityElement = freezed,
    Object? human = freezed,
    Object? humanElement = freezed,
    Object? expression = freezed,
    Object? expressionElement = freezed,
    Object? xpath = freezed,
    Object? xpathElement = freezed,
    Object? source = freezed,
  }) {
    return _then(_$ElementDefinitionConstraintImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      keyElement: freezed == keyElement
          ? _value.keyElement
          : keyElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      requirements: freezed == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as String?,
      requirementsElement: freezed == requirementsElement
          ? _value.requirementsElement
          : requirementsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as ElementDefinitionConstraintSeverity?,
      severityElement: freezed == severityElement
          ? _value.severityElement
          : severityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      human: freezed == human
          ? _value.human
          : human // ignore: cast_nullable_to_non_nullable
              as String?,
      humanElement: freezed == humanElement
          ? _value.humanElement
          : humanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      expression: freezed == expression
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String?,
      expressionElement: freezed == expressionElement
          ? _value.expressionElement
          : expressionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      xpath: freezed == xpath
          ? _value.xpath
          : xpath // ignore: cast_nullable_to_non_nullable
              as String?,
      xpathElement: freezed == xpathElement
          ? _value.xpathElement
          : xpathElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElementDefinitionConstraintImpl extends _ElementDefinitionConstraint {
  _$ElementDefinitionConstraintImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.key,
      @JsonKey(name: '_key') this.keyElement,
      this.requirements,
      @JsonKey(name: '_requirements') this.requirementsElement,
      @JsonKey(unknownEnumValue: ElementDefinitionConstraintSeverity.unknown)
      this.severity,
      @JsonKey(name: '_severity') this.severityElement,
      this.human,
      @JsonKey(name: '_human') this.humanElement,
      this.expression,
      @JsonKey(name: '_expression') this.expressionElement,
      this.xpath,
      @JsonKey(name: '_xpath') this.xpathElement,
      this.source})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ElementDefinitionConstraintImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ElementDefinitionConstraintImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [key] Allows identification of which elements have their cardinalities
  /// impacted by the constraint.  Will not be referenced for constraints that
  ///  do not affect cardinality.
  @override
  final FhirId? key;

  /// [keyElement] Extensions for key
  @override
  @JsonKey(name: '_key')
  final PrimitiveElement? keyElement;

  /// [requirements] Description of why this constraint is necessary or
  ///  appropriate.
  @override
  final String? requirements;

  /// [requirementsElement] Extensions for requirements
  @override
  @JsonKey(name: '_requirements')
  final PrimitiveElement? requirementsElement;
  @override
  @JsonKey(unknownEnumValue: ElementDefinitionConstraintSeverity.unknown)
  final ElementDefinitionConstraintSeverity? severity;

  /// [severityElement] Extensions for severity
  @override
  @JsonKey(name: '_severity')
  final PrimitiveElement? severityElement;

  /// [human] Text that can be used to describe the constraint in messages
  ///  identifying that the constraint has been violated.
  @override
  final String? human;

  /// [humanElement] Extensions for human
  @override
  @JsonKey(name: '_human')
  final PrimitiveElement? humanElement;

  /// [expression] A [FHIRPath](fhirpath.html) expression of constraint that
  ///  can be executed to see if this constraint is met.
  @override
  final String? expression;

  /// [expressionElement] Extensions for expression
  @override
  @JsonKey(name: '_expression')
  final PrimitiveElement? expressionElement;

  /// [xpath] An XPath expression of constraint that can be executed to see if
  ///  this constraint is met.
  @override
  final String? xpath;

  /// [xpathElement] Extensions for xpath
  @override
  @JsonKey(name: '_xpath')
  final PrimitiveElement? xpathElement;

  /// [source] A reference to the original source of the constraint, for
  ///  traceability purposes.
  @override
  final FhirCanonical? source;

  @override
  String toString() {
    return 'ElementDefinitionConstraint(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, key: $key, keyElement: $keyElement, requirements: $requirements, requirementsElement: $requirementsElement, severity: $severity, severityElement: $severityElement, human: $human, humanElement: $humanElement, expression: $expression, expressionElement: $expressionElement, xpath: $xpath, xpathElement: $xpathElement, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementDefinitionConstraintImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.keyElement, keyElement) ||
                other.keyElement == keyElement) &&
            (identical(other.requirements, requirements) ||
                other.requirements == requirements) &&
            (identical(other.requirementsElement, requirementsElement) ||
                other.requirementsElement == requirementsElement) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.severityElement, severityElement) ||
                other.severityElement == severityElement) &&
            (identical(other.human, human) || other.human == human) &&
            (identical(other.humanElement, humanElement) ||
                other.humanElement == humanElement) &&
            (identical(other.expression, expression) ||
                other.expression == expression) &&
            (identical(other.expressionElement, expressionElement) ||
                other.expressionElement == expressionElement) &&
            (identical(other.xpath, xpath) || other.xpath == xpath) &&
            (identical(other.xpathElement, xpathElement) ||
                other.xpathElement == xpathElement) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      key,
      keyElement,
      requirements,
      requirementsElement,
      severity,
      severityElement,
      human,
      humanElement,
      expression,
      expressionElement,
      xpath,
      xpathElement,
      source);

  /// Create a copy of ElementDefinitionConstraint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ElementDefinitionConstraintImplCopyWith<_$ElementDefinitionConstraintImpl>
      get copyWith => __$$ElementDefinitionConstraintImplCopyWithImpl<
          _$ElementDefinitionConstraintImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElementDefinitionConstraintImplToJson(
      this,
    );
  }
}

abstract class _ElementDefinitionConstraint
    extends ElementDefinitionConstraint {
  factory _ElementDefinitionConstraint(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirId? key,
      @JsonKey(name: '_key') final PrimitiveElement? keyElement,
      final String? requirements,
      @JsonKey(name: '_requirements')
      final PrimitiveElement? requirementsElement,
      @JsonKey(unknownEnumValue: ElementDefinitionConstraintSeverity.unknown)
      final ElementDefinitionConstraintSeverity? severity,
      @JsonKey(name: '_severity') final PrimitiveElement? severityElement,
      final String? human,
      @JsonKey(name: '_human') final PrimitiveElement? humanElement,
      final String? expression,
      @JsonKey(name: '_expression') final PrimitiveElement? expressionElement,
      final String? xpath,
      @JsonKey(name: '_xpath') final PrimitiveElement? xpathElement,
      final FhirCanonical? source}) = _$ElementDefinitionConstraintImpl;
  _ElementDefinitionConstraint._() : super._();

  factory _ElementDefinitionConstraint.fromJson(Map<String, dynamic> json) =
      _$ElementDefinitionConstraintImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [key] Allows identification of which elements have their cardinalities
  /// impacted by the constraint.  Will not be referenced for constraints that
  ///  do not affect cardinality.
  @override
  FhirId? get key;

  /// [keyElement] Extensions for key
  @override
  @JsonKey(name: '_key')
  PrimitiveElement? get keyElement;

  /// [requirements] Description of why this constraint is necessary or
  ///  appropriate.
  @override
  String? get requirements;

  /// [requirementsElement] Extensions for requirements
  @override
  @JsonKey(name: '_requirements')
  PrimitiveElement? get requirementsElement;
  @override
  @JsonKey(unknownEnumValue: ElementDefinitionConstraintSeverity.unknown)
  ElementDefinitionConstraintSeverity? get severity;

  /// [severityElement] Extensions for severity
  @override
  @JsonKey(name: '_severity')
  PrimitiveElement? get severityElement;

  /// [human] Text that can be used to describe the constraint in messages
  ///  identifying that the constraint has been violated.
  @override
  String? get human;

  /// [humanElement] Extensions for human
  @override
  @JsonKey(name: '_human')
  PrimitiveElement? get humanElement;

  /// [expression] A [FHIRPath](fhirpath.html) expression of constraint that
  ///  can be executed to see if this constraint is met.
  @override
  String? get expression;

  /// [expressionElement] Extensions for expression
  @override
  @JsonKey(name: '_expression')
  PrimitiveElement? get expressionElement;

  /// [xpath] An XPath expression of constraint that can be executed to see if
  ///  this constraint is met.
  @override
  String? get xpath;

  /// [xpathElement] Extensions for xpath
  @override
  @JsonKey(name: '_xpath')
  PrimitiveElement? get xpathElement;

  /// [source] A reference to the original source of the constraint, for
  ///  traceability purposes.
  @override
  FhirCanonical? get source;

  /// Create a copy of ElementDefinitionConstraint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ElementDefinitionConstraintImplCopyWith<_$ElementDefinitionConstraintImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ElementDefinitionBinding _$ElementDefinitionBindingFromJson(
    Map<String, dynamic> json) {
  return _ElementDefinitionBinding.fromJson(json);
}

/// @nodoc
mixin _$ElementDefinitionBinding {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: ElementDefinitionBindingStrength.unknown)
  ElementDefinitionBindingStrength? get strength =>
      throw _privateConstructorUsedError;

  /// [strengthElement] Extensions for strength
  @JsonKey(name: '_strength')
  PrimitiveElement? get strengthElement => throw _privateConstructorUsedError;

  /// [description] Describes the intended use of this particular set of codes.
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [valueSet] Refers to the value set that identifies the set of codes the
  ///  binding refers to.
  FhirCanonical? get valueSet => throw _privateConstructorUsedError;

  /// Serializes this ElementDefinitionBinding to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ElementDefinitionBinding
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ElementDefinitionBindingCopyWith<ElementDefinitionBinding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementDefinitionBindingCopyWith<$Res> {
  factory $ElementDefinitionBindingCopyWith(ElementDefinitionBinding value,
          $Res Function(ElementDefinitionBinding) then) =
      _$ElementDefinitionBindingCopyWithImpl<$Res, ElementDefinitionBinding>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      @JsonKey(unknownEnumValue: ElementDefinitionBindingStrength.unknown)
      ElementDefinitionBindingStrength? strength,
      @JsonKey(name: '_strength') PrimitiveElement? strengthElement,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirCanonical? valueSet});
}

/// @nodoc
class _$ElementDefinitionBindingCopyWithImpl<$Res,
        $Val extends ElementDefinitionBinding>
    implements $ElementDefinitionBindingCopyWith<$Res> {
  _$ElementDefinitionBindingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ElementDefinitionBinding
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? strength = freezed,
    Object? strengthElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? valueSet = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      strength: freezed == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as ElementDefinitionBindingStrength?,
      strengthElement: freezed == strengthElement
          ? _value.strengthElement
          : strengthElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueSet: freezed == valueSet
          ? _value.valueSet
          : valueSet // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElementDefinitionBindingImplCopyWith<$Res>
    implements $ElementDefinitionBindingCopyWith<$Res> {
  factory _$$ElementDefinitionBindingImplCopyWith(
          _$ElementDefinitionBindingImpl value,
          $Res Function(_$ElementDefinitionBindingImpl) then) =
      __$$ElementDefinitionBindingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      @JsonKey(unknownEnumValue: ElementDefinitionBindingStrength.unknown)
      ElementDefinitionBindingStrength? strength,
      @JsonKey(name: '_strength') PrimitiveElement? strengthElement,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirCanonical? valueSet});
}

/// @nodoc
class __$$ElementDefinitionBindingImplCopyWithImpl<$Res>
    extends _$ElementDefinitionBindingCopyWithImpl<$Res,
        _$ElementDefinitionBindingImpl>
    implements _$$ElementDefinitionBindingImplCopyWith<$Res> {
  __$$ElementDefinitionBindingImplCopyWithImpl(
      _$ElementDefinitionBindingImpl _value,
      $Res Function(_$ElementDefinitionBindingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ElementDefinitionBinding
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? strength = freezed,
    Object? strengthElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? valueSet = freezed,
  }) {
    return _then(_$ElementDefinitionBindingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      strength: freezed == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as ElementDefinitionBindingStrength?,
      strengthElement: freezed == strengthElement
          ? _value.strengthElement
          : strengthElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueSet: freezed == valueSet
          ? _value.valueSet
          : valueSet // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElementDefinitionBindingImpl extends _ElementDefinitionBinding {
  _$ElementDefinitionBindingImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      @JsonKey(unknownEnumValue: ElementDefinitionBindingStrength.unknown)
      this.strength,
      @JsonKey(name: '_strength') this.strengthElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.valueSet})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ElementDefinitionBindingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElementDefinitionBindingImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(unknownEnumValue: ElementDefinitionBindingStrength.unknown)
  final ElementDefinitionBindingStrength? strength;

  /// [strengthElement] Extensions for strength
  @override
  @JsonKey(name: '_strength')
  final PrimitiveElement? strengthElement;

  /// [description] Describes the intended use of this particular set of codes.
  @override
  final String? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [valueSet] Refers to the value set that identifies the set of codes the
  ///  binding refers to.
  @override
  final FhirCanonical? valueSet;

  @override
  String toString() {
    return 'ElementDefinitionBinding(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, strength: $strength, strengthElement: $strengthElement, description: $description, descriptionElement: $descriptionElement, valueSet: $valueSet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementDefinitionBindingImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.strength, strength) ||
                other.strength == strength) &&
            (identical(other.strengthElement, strengthElement) ||
                other.strengthElement == strengthElement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.valueSet, valueSet) ||
                other.valueSet == valueSet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      strength,
      strengthElement,
      description,
      descriptionElement,
      valueSet);

  /// Create a copy of ElementDefinitionBinding
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ElementDefinitionBindingImplCopyWith<_$ElementDefinitionBindingImpl>
      get copyWith => __$$ElementDefinitionBindingImplCopyWithImpl<
          _$ElementDefinitionBindingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElementDefinitionBindingImplToJson(
      this,
    );
  }
}

abstract class _ElementDefinitionBinding extends ElementDefinitionBinding {
  factory _ElementDefinitionBinding(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      @JsonKey(unknownEnumValue: ElementDefinitionBindingStrength.unknown)
      final ElementDefinitionBindingStrength? strength,
      @JsonKey(name: '_strength') final PrimitiveElement? strengthElement,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final FhirCanonical? valueSet}) = _$ElementDefinitionBindingImpl;
  _ElementDefinitionBinding._() : super._();

  factory _ElementDefinitionBinding.fromJson(Map<String, dynamic> json) =
      _$ElementDefinitionBindingImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  @JsonKey(unknownEnumValue: ElementDefinitionBindingStrength.unknown)
  ElementDefinitionBindingStrength? get strength;

  /// [strengthElement] Extensions for strength
  @override
  @JsonKey(name: '_strength')
  PrimitiveElement? get strengthElement;

  /// [description] Describes the intended use of this particular set of codes.
  @override
  String? get description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;

  /// [valueSet] Refers to the value set that identifies the set of codes the
  ///  binding refers to.
  @override
  FhirCanonical? get valueSet;

  /// Create a copy of ElementDefinitionBinding
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ElementDefinitionBindingImplCopyWith<_$ElementDefinitionBindingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ElementDefinitionMapping _$ElementDefinitionMappingFromJson(
    Map<String, dynamic> json) {
  return _ElementDefinitionMapping.fromJson(json);
}

/// @nodoc
mixin _$ElementDefinitionMapping {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identity] An internal reference to the definition of a mapping.
  FhirId? get identity => throw _privateConstructorUsedError;

  /// [identityElement] Extensions for identity
  @JsonKey(name: '_identity')
  PrimitiveElement? get identityElement => throw _privateConstructorUsedError;

  /// [language] Identifies the computable language in which mapping.map is
  ///  expressed.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [map] Expresses what part of the target specification corresponds to this
  ///  element.
  String? get map => throw _privateConstructorUsedError;

  /// [mapElement] Extensions for map
  @JsonKey(name: '_map')
  PrimitiveElement? get mapElement => throw _privateConstructorUsedError;

  /// [comment] Comments that provide information about the mapping or its use.
  String? get comment => throw _privateConstructorUsedError;

  /// [commentElement] Extensions for comment
  @JsonKey(name: '_comment')
  PrimitiveElement? get commentElement => throw _privateConstructorUsedError;

  /// Serializes this ElementDefinitionMapping to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ElementDefinitionMapping
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ElementDefinitionMappingCopyWith<ElementDefinitionMapping> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementDefinitionMappingCopyWith<$Res> {
  factory $ElementDefinitionMappingCopyWith(ElementDefinitionMapping value,
          $Res Function(ElementDefinitionMapping) then) =
      _$ElementDefinitionMappingCopyWithImpl<$Res, ElementDefinitionMapping>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? identity,
      @JsonKey(name: '_identity') PrimitiveElement? identityElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      String? map,
      @JsonKey(name: '_map') PrimitiveElement? mapElement,
      String? comment,
      @JsonKey(name: '_comment') PrimitiveElement? commentElement});
}

/// @nodoc
class _$ElementDefinitionMappingCopyWithImpl<$Res,
        $Val extends ElementDefinitionMapping>
    implements $ElementDefinitionMappingCopyWith<$Res> {
  _$ElementDefinitionMappingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ElementDefinitionMapping
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identity = freezed,
    Object? identityElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? map = freezed,
    Object? mapElement = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identity: freezed == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      identityElement: freezed == identityElement
          ? _value.identityElement
          : identityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      map: freezed == map
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as String?,
      mapElement: freezed == mapElement
          ? _value.mapElement
          : mapElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElementDefinitionMappingImplCopyWith<$Res>
    implements $ElementDefinitionMappingCopyWith<$Res> {
  factory _$$ElementDefinitionMappingImplCopyWith(
          _$ElementDefinitionMappingImpl value,
          $Res Function(_$ElementDefinitionMappingImpl) then) =
      __$$ElementDefinitionMappingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? identity,
      @JsonKey(name: '_identity') PrimitiveElement? identityElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      String? map,
      @JsonKey(name: '_map') PrimitiveElement? mapElement,
      String? comment,
      @JsonKey(name: '_comment') PrimitiveElement? commentElement});
}

/// @nodoc
class __$$ElementDefinitionMappingImplCopyWithImpl<$Res>
    extends _$ElementDefinitionMappingCopyWithImpl<$Res,
        _$ElementDefinitionMappingImpl>
    implements _$$ElementDefinitionMappingImplCopyWith<$Res> {
  __$$ElementDefinitionMappingImplCopyWithImpl(
      _$ElementDefinitionMappingImpl _value,
      $Res Function(_$ElementDefinitionMappingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ElementDefinitionMapping
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identity = freezed,
    Object? identityElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? map = freezed,
    Object? mapElement = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
  }) {
    return _then(_$ElementDefinitionMappingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identity: freezed == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      identityElement: freezed == identityElement
          ? _value.identityElement
          : identityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      map: freezed == map
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as String?,
      mapElement: freezed == mapElement
          ? _value.mapElement
          : mapElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElementDefinitionMappingImpl extends _ElementDefinitionMapping {
  _$ElementDefinitionMappingImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.identity,
      @JsonKey(name: '_identity') this.identityElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.map,
      @JsonKey(name: '_map') this.mapElement,
      this.comment,
      @JsonKey(name: '_comment') this.commentElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ElementDefinitionMappingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElementDefinitionMappingImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identity] An internal reference to the definition of a mapping.
  @override
  final FhirId? identity;

  /// [identityElement] Extensions for identity
  @override
  @JsonKey(name: '_identity')
  final PrimitiveElement? identityElement;

  /// [language] Identifies the computable language in which mapping.map is
  ///  expressed.
  @override
  final FhirCode? language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [map] Expresses what part of the target specification corresponds to this
  ///  element.
  @override
  final String? map;

  /// [mapElement] Extensions for map
  @override
  @JsonKey(name: '_map')
  final PrimitiveElement? mapElement;

  /// [comment] Comments that provide information about the mapping or its use.
  @override
  final String? comment;

  /// [commentElement] Extensions for comment
  @override
  @JsonKey(name: '_comment')
  final PrimitiveElement? commentElement;

  @override
  String toString() {
    return 'ElementDefinitionMapping(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, identity: $identity, identityElement: $identityElement, language: $language, languageElement: $languageElement, map: $map, mapElement: $mapElement, comment: $comment, commentElement: $commentElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementDefinitionMappingImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.identityElement, identityElement) ||
                other.identityElement == identityElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.map, map) || other.map == map) &&
            (identical(other.mapElement, mapElement) ||
                other.mapElement == mapElement) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.commentElement, commentElement) ||
                other.commentElement == commentElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      identity,
      identityElement,
      language,
      languageElement,
      map,
      mapElement,
      comment,
      commentElement);

  /// Create a copy of ElementDefinitionMapping
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ElementDefinitionMappingImplCopyWith<_$ElementDefinitionMappingImpl>
      get copyWith => __$$ElementDefinitionMappingImplCopyWithImpl<
          _$ElementDefinitionMappingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElementDefinitionMappingImplToJson(
      this,
    );
  }
}

abstract class _ElementDefinitionMapping extends ElementDefinitionMapping {
  factory _ElementDefinitionMapping(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirId? identity,
          @JsonKey(name: '_identity') final PrimitiveElement? identityElement,
          final FhirCode? language,
          @JsonKey(name: '_language') final PrimitiveElement? languageElement,
          final String? map,
          @JsonKey(name: '_map') final PrimitiveElement? mapElement,
          final String? comment,
          @JsonKey(name: '_comment') final PrimitiveElement? commentElement}) =
      _$ElementDefinitionMappingImpl;
  _ElementDefinitionMapping._() : super._();

  factory _ElementDefinitionMapping.fromJson(Map<String, dynamic> json) =
      _$ElementDefinitionMappingImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [identity] An internal reference to the definition of a mapping.
  @override
  FhirId? get identity;

  /// [identityElement] Extensions for identity
  @override
  @JsonKey(name: '_identity')
  PrimitiveElement? get identityElement;

  /// [language] Identifies the computable language in which mapping.map is
  ///  expressed.
  @override
  FhirCode? get language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;

  /// [map] Expresses what part of the target specification corresponds to this
  ///  element.
  @override
  String? get map;

  /// [mapElement] Extensions for map
  @override
  @JsonKey(name: '_map')
  PrimitiveElement? get mapElement;

  /// [comment] Comments that provide information about the mapping or its use.
  @override
  String? get comment;

  /// [commentElement] Extensions for comment
  @override
  @JsonKey(name: '_comment')
  PrimitiveElement? get commentElement;

  /// Create a copy of ElementDefinitionMapping
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ElementDefinitionMappingImplCopyWith<_$ElementDefinitionMappingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
