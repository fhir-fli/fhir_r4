// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'individuals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Person _$PersonFromJson(Map<String, dynamic> json) {
  return _Person.fromJson(json);
}

/// @nodoc
mixin _$Person {
  @JsonKey(unknownEnumValue: R4ResourceType.Person)
  R4ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] Identifier for a person within a particular scope.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [name] A name associated with the person.
  List<HumanName>? get name => throw _privateConstructorUsedError;

  /// [telecom] A contact detail for the person, e.g. a telephone number or an
  ///  email address.
  List<ContactPoint>? get telecom => throw _privateConstructorUsedError;

  /// [gender] Administrative Gender.
  FhirCode? get gender => throw _privateConstructorUsedError;

  /// [genderElement] Extensions for gender
  @JsonKey(name: '_gender')
  PrimitiveElement? get genderElement => throw _privateConstructorUsedError;

  /// [birthDate] The birth date for the person.
  FhirDate? get birthDate => throw _privateConstructorUsedError;

  /// [birthDateElement] Extensions for birthDate
  @JsonKey(name: '_birthDate')
  PrimitiveElement? get birthDateElement => throw _privateConstructorUsedError;

  /// [address] One or more addresses for the person.
  List<Address>? get address => throw _privateConstructorUsedError;

  /// [photo] An image that can be displayed as a thumbnail of the person to
  ///  enhance the identification of the individual.
  Attachment? get photo => throw _privateConstructorUsedError;

  /// [managingOrganization] The organization that is the custodian of the
  ///  person record.
  Reference? get managingOrganization => throw _privateConstructorUsedError;

  /// [active] Whether this person's record is in active use.
  FhirBoolean? get active => throw _privateConstructorUsedError;

  /// [activeElement] Extensions for active
  @JsonKey(name: '_active')
  PrimitiveElement? get activeElement => throw _privateConstructorUsedError;

  /// [link] Link to a resource that concerns the same actual person.
  List<PersonLink>? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res, Person>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Person)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      List<HumanName>? name,
      List<ContactPoint>? telecom,
      FhirCode? gender,
      @JsonKey(name: '_gender') PrimitiveElement? genderElement,
      FhirDate? birthDate,
      @JsonKey(name: '_birthDate') PrimitiveElement? birthDateElement,
      List<Address>? address,
      Attachment? photo,
      Reference? managingOrganization,
      FhirBoolean? active,
      @JsonKey(name: '_active') PrimitiveElement? activeElement,
      List<PersonLink>? link});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $AttachmentCopyWith<$Res>? get photo;
  $ReferenceCopyWith<$Res>? get managingOrganization;
}

/// @nodoc
class _$PersonCopyWithImpl<$Res, $Val extends Person>
    implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? name = freezed,
    Object? telecom = freezed,
    Object? gender = freezed,
    Object? genderElement = freezed,
    Object? birthDate = freezed,
    Object? birthDateElement = freezed,
    Object? address = freezed,
    Object? photo = freezed,
    Object? managingOrganization = freezed,
    Object? active = freezed,
    Object? activeElement = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as List<HumanName>?,
      telecom: freezed == telecom
          ? _value.telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      genderElement: freezed == genderElement
          ? _value.genderElement
          : genderElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      birthDateElement: freezed == birthDateElement
          ? _value.birthDateElement
          : birthDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      managingOrganization: freezed == managingOrganization
          ? _value.managingOrganization
          : managingOrganization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      activeElement: freezed == activeElement
          ? _value.activeElement
          : activeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as List<PersonLink>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get photo {
    if (_value.photo == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.photo!, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get managingOrganization {
    if (_value.managingOrganization == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.managingOrganization!, (value) {
      return _then(_value.copyWith(managingOrganization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PersonImplCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$PersonImplCopyWith(
          _$PersonImpl value, $Res Function(_$PersonImpl) then) =
      __$$PersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Person)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      List<HumanName>? name,
      List<ContactPoint>? telecom,
      FhirCode? gender,
      @JsonKey(name: '_gender') PrimitiveElement? genderElement,
      FhirDate? birthDate,
      @JsonKey(name: '_birthDate') PrimitiveElement? birthDateElement,
      List<Address>? address,
      Attachment? photo,
      Reference? managingOrganization,
      FhirBoolean? active,
      @JsonKey(name: '_active') PrimitiveElement? activeElement,
      List<PersonLink>? link});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $AttachmentCopyWith<$Res>? get photo;
  @override
  $ReferenceCopyWith<$Res>? get managingOrganization;
}

/// @nodoc
class __$$PersonImplCopyWithImpl<$Res>
    extends _$PersonCopyWithImpl<$Res, _$PersonImpl>
    implements _$$PersonImplCopyWith<$Res> {
  __$$PersonImplCopyWithImpl(
      _$PersonImpl _value, $Res Function(_$PersonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? name = freezed,
    Object? telecom = freezed,
    Object? gender = freezed,
    Object? genderElement = freezed,
    Object? birthDate = freezed,
    Object? birthDateElement = freezed,
    Object? address = freezed,
    Object? photo = freezed,
    Object? managingOrganization = freezed,
    Object? active = freezed,
    Object? activeElement = freezed,
    Object? link = freezed,
  }) {
    return _then(_$PersonImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      name: freezed == name
          ? _value._name
          : name // ignore: cast_nullable_to_non_nullable
              as List<HumanName>?,
      telecom: freezed == telecom
          ? _value._telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      genderElement: freezed == genderElement
          ? _value.genderElement
          : genderElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      birthDateElement: freezed == birthDateElement
          ? _value.birthDateElement
          : birthDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      address: freezed == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      managingOrganization: freezed == managingOrganization
          ? _value.managingOrganization
          : managingOrganization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      activeElement: freezed == activeElement
          ? _value.activeElement
          : activeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      link: freezed == link
          ? _value._link
          : link // ignore: cast_nullable_to_non_nullable
              as List<PersonLink>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonImpl extends _Person {
  const _$PersonImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.Person)
      this.resourceType = R4ResourceType.Person,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final List<HumanName>? name,
      final List<ContactPoint>? telecom,
      this.gender,
      @JsonKey(name: '_gender') this.genderElement,
      this.birthDate,
      @JsonKey(name: '_birthDate') this.birthDateElement,
      final List<Address>? address,
      this.photo,
      this.managingOrganization,
      this.active,
      @JsonKey(name: '_active') this.activeElement,
      final List<PersonLink>? link})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _name = name,
        _telecom = telecom,
        _address = address,
        _link = link,
        super._();

  factory _$PersonImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Person)
  final R4ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  @override
  final String? id;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] Identifier for a person within a particular scope.
  final List<Identifier>? _identifier;

  /// [identifier] Identifier for a person within a particular scope.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [name] A name associated with the person.
  final List<HumanName>? _name;

  /// [name] A name associated with the person.
  @override
  List<HumanName>? get name {
    final value = _name;
    if (value == null) return null;
    if (_name is EqualUnmodifiableListView) return _name;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [telecom] A contact detail for the person, e.g. a telephone number or an
  ///  email address.
  final List<ContactPoint>? _telecom;

  /// [telecom] A contact detail for the person, e.g. a telephone number or an
  ///  email address.
  @override
  List<ContactPoint>? get telecom {
    final value = _telecom;
    if (value == null) return null;
    if (_telecom is EqualUnmodifiableListView) return _telecom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [gender] Administrative Gender.
  @override
  final FhirCode? gender;

  /// [genderElement] Extensions for gender
  @override
  @JsonKey(name: '_gender')
  final PrimitiveElement? genderElement;

  /// [birthDate] The birth date for the person.
  @override
  final FhirDate? birthDate;

  /// [birthDateElement] Extensions for birthDate
  @override
  @JsonKey(name: '_birthDate')
  final PrimitiveElement? birthDateElement;

  /// [address] One or more addresses for the person.
  final List<Address>? _address;

  /// [address] One or more addresses for the person.
  @override
  List<Address>? get address {
    final value = _address;
    if (value == null) return null;
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [photo] An image that can be displayed as a thumbnail of the person to
  ///  enhance the identification of the individual.
  @override
  final Attachment? photo;

  /// [managingOrganization] The organization that is the custodian of the
  ///  person record.
  @override
  final Reference? managingOrganization;

  /// [active] Whether this person's record is in active use.
  @override
  final FhirBoolean? active;

  /// [activeElement] Extensions for active
  @override
  @JsonKey(name: '_active')
  final PrimitiveElement? activeElement;

  /// [link] Link to a resource that concerns the same actual person.
  final List<PersonLink>? _link;

  /// [link] Link to a resource that concerns the same actual person.
  @override
  List<PersonLink>? get link {
    final value = _link;
    if (value == null) return null;
    if (_link is EqualUnmodifiableListView) return _link;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Person(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, name: $name, telecom: $telecom, gender: $gender, genderElement: $genderElement, birthDate: $birthDate, birthDateElement: $birthDateElement, address: $address, photo: $photo, managingOrganization: $managingOrganization, active: $active, activeElement: $activeElement, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            const DeepCollectionEquality().equals(other._name, _name) &&
            const DeepCollectionEquality().equals(other._telecom, _telecom) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.genderElement, genderElement) ||
                other.genderElement == genderElement) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.birthDateElement, birthDateElement) ||
                other.birthDateElement == birthDateElement) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.managingOrganization, managingOrganization) ||
                other.managingOrganization == managingOrganization) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.activeElement, activeElement) ||
                other.activeElement == activeElement) &&
            const DeepCollectionEquality().equals(other._link, _link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        const DeepCollectionEquality().hash(_name),
        const DeepCollectionEquality().hash(_telecom),
        gender,
        genderElement,
        birthDate,
        birthDateElement,
        const DeepCollectionEquality().hash(_address),
        photo,
        managingOrganization,
        active,
        activeElement,
        const DeepCollectionEquality().hash(_link)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith =>
      __$$PersonImplCopyWithImpl<_$PersonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonImplToJson(
      this,
    );
  }
}

abstract class _Person extends Person {
  const factory _Person(
      {@JsonKey(unknownEnumValue: R4ResourceType.Person)
      final R4ResourceType resourceType,
      final String? id,
      final FhirMeta? meta,
      final FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules')
      final PrimitiveElement? implicitRulesElement,
      final FhirCode? language,
      @JsonKey(name: '_language') final PrimitiveElement? languageElement,
      final Narrative? text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final List<HumanName>? name,
      final List<ContactPoint>? telecom,
      final FhirCode? gender,
      @JsonKey(name: '_gender') final PrimitiveElement? genderElement,
      final FhirDate? birthDate,
      @JsonKey(name: '_birthDate') final PrimitiveElement? birthDateElement,
      final List<Address>? address,
      final Attachment? photo,
      final Reference? managingOrganization,
      final FhirBoolean? active,
      @JsonKey(name: '_active') final PrimitiveElement? activeElement,
      final List<PersonLink>? link}) = _$PersonImpl;
  const _Person._() : super._();

  factory _Person.fromJson(Map<String, dynamic> json) = _$PersonImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Person)
  R4ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.
  FhirCode? get language;
  @override

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] Identifier for a person within a particular scope.
  List<Identifier>? get identifier;
  @override

  /// [name] A name associated with the person.
  List<HumanName>? get name;
  @override

  /// [telecom] A contact detail for the person, e.g. a telephone number or an
  ///  email address.
  List<ContactPoint>? get telecom;
  @override

  /// [gender] Administrative Gender.
  FhirCode? get gender;
  @override

  /// [genderElement] Extensions for gender
  @JsonKey(name: '_gender')
  PrimitiveElement? get genderElement;
  @override

  /// [birthDate] The birth date for the person.
  FhirDate? get birthDate;
  @override

  /// [birthDateElement] Extensions for birthDate
  @JsonKey(name: '_birthDate')
  PrimitiveElement? get birthDateElement;
  @override

  /// [address] One or more addresses for the person.
  List<Address>? get address;
  @override

  /// [photo] An image that can be displayed as a thumbnail of the person to
  ///  enhance the identification of the individual.
  Attachment? get photo;
  @override

  /// [managingOrganization] The organization that is the custodian of the
  ///  person record.
  Reference? get managingOrganization;
  @override

  /// [active] Whether this person's record is in active use.
  FhirBoolean? get active;
  @override

  /// [activeElement] Extensions for active
  @JsonKey(name: '_active')
  PrimitiveElement? get activeElement;
  @override

  /// [link] Link to a resource that concerns the same actual person.
  List<PersonLink>? get link;
  @override
  @JsonKey(ignore: true)
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonLink _$PersonLinkFromJson(Map<String, dynamic> json) {
  return _PersonLink.fromJson(json);
}

/// @nodoc
mixin _$PersonLink {
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

  /// [target] The resource to which this actual person is associated.
  Reference get target => throw _privateConstructorUsedError;

  /// [assurance] Level of assurance that this link is associated with the
  ///  target resource.
  FhirCode? get assurance => throw _privateConstructorUsedError;

  /// [assuranceElement] Extensions for assurance
  @JsonKey(name: '_assurance')
  PrimitiveElement? get assuranceElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonLinkCopyWith<PersonLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonLinkCopyWith<$Res> {
  factory $PersonLinkCopyWith(
          PersonLink value, $Res Function(PersonLink) then) =
      _$PersonLinkCopyWithImpl<$Res, PersonLink>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference target,
      FhirCode? assurance,
      @JsonKey(name: '_assurance') PrimitiveElement? assuranceElement});

  $ReferenceCopyWith<$Res> get target;
}

/// @nodoc
class _$PersonLinkCopyWithImpl<$Res, $Val extends PersonLink>
    implements $PersonLinkCopyWith<$Res> {
  _$PersonLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? target = null,
    Object? assurance = freezed,
    Object? assuranceElement = freezed,
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
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as Reference,
      assurance: freezed == assurance
          ? _value.assurance
          : assurance // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      assuranceElement: freezed == assuranceElement
          ? _value.assuranceElement
          : assuranceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get target {
    return $ReferenceCopyWith<$Res>(_value.target, (value) {
      return _then(_value.copyWith(target: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PersonLinkImplCopyWith<$Res>
    implements $PersonLinkCopyWith<$Res> {
  factory _$$PersonLinkImplCopyWith(
          _$PersonLinkImpl value, $Res Function(_$PersonLinkImpl) then) =
      __$$PersonLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference target,
      FhirCode? assurance,
      @JsonKey(name: '_assurance') PrimitiveElement? assuranceElement});

  @override
  $ReferenceCopyWith<$Res> get target;
}

/// @nodoc
class __$$PersonLinkImplCopyWithImpl<$Res>
    extends _$PersonLinkCopyWithImpl<$Res, _$PersonLinkImpl>
    implements _$$PersonLinkImplCopyWith<$Res> {
  __$$PersonLinkImplCopyWithImpl(
      _$PersonLinkImpl _value, $Res Function(_$PersonLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? target = null,
    Object? assurance = freezed,
    Object? assuranceElement = freezed,
  }) {
    return _then(_$PersonLinkImpl(
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
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as Reference,
      assurance: freezed == assurance
          ? _value.assurance
          : assurance // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      assuranceElement: freezed == assuranceElement
          ? _value.assuranceElement
          : assuranceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonLinkImpl extends _PersonLink {
  const _$PersonLinkImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.target,
      this.assurance,
      @JsonKey(name: '_assurance') this.assuranceElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$PersonLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonLinkImplFromJson(json);

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

  /// [target] The resource to which this actual person is associated.
  @override
  final Reference target;

  /// [assurance] Level of assurance that this link is associated with the
  ///  target resource.
  @override
  final FhirCode? assurance;

  /// [assuranceElement] Extensions for assurance
  @override
  @JsonKey(name: '_assurance')
  final PrimitiveElement? assuranceElement;

  @override
  String toString() {
    return 'PersonLink(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, target: $target, assurance: $assurance, assuranceElement: $assuranceElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonLinkImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.assurance, assurance) ||
                other.assurance == assurance) &&
            (identical(other.assuranceElement, assuranceElement) ||
                other.assuranceElement == assuranceElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      target,
      assurance,
      assuranceElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonLinkImplCopyWith<_$PersonLinkImpl> get copyWith =>
      __$$PersonLinkImplCopyWithImpl<_$PersonLinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonLinkImplToJson(
      this,
    );
  }
}

abstract class _PersonLink extends PersonLink {
  const factory _PersonLink(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final Reference target,
      final FhirCode? assurance,
      @JsonKey(name: '_assurance')
      final PrimitiveElement? assuranceElement}) = _$PersonLinkImpl;
  const _PersonLink._() : super._();

  factory _PersonLink.fromJson(Map<String, dynamic> json) =
      _$PersonLinkImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [target] The resource to which this actual person is associated.
  Reference get target;
  @override

  /// [assurance] Level of assurance that this link is associated with the
  ///  target resource.
  FhirCode? get assurance;
  @override

  /// [assuranceElement] Extensions for assurance
  @JsonKey(name: '_assurance')
  PrimitiveElement? get assuranceElement;
  @override
  @JsonKey(ignore: true)
  _$$PersonLinkImplCopyWith<_$PersonLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Practitioner _$PractitionerFromJson(Map<String, dynamic> json) {
  return _Practitioner.fromJson(json);
}

/// @nodoc
mixin _$Practitioner {
  @JsonKey(unknownEnumValue: R4ResourceType.Practitioner)
  R4ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] An identifier that applies to this person in this role.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [active] Whether this practitioner's record is in active use.
  FhirBoolean? get active => throw _privateConstructorUsedError;

  /// [activeElement] Extensions for active
  @JsonKey(name: '_active')
  PrimitiveElement? get activeElement => throw _privateConstructorUsedError;

  /// [name] The name(s) associated with the practitioner.
  List<HumanName>? get name => throw _privateConstructorUsedError;

  /// [telecom] A contact detail for the practitioner, e.g. a telephone number
  ///  or an email address.
  List<ContactPoint>? get telecom => throw _privateConstructorUsedError;

  /// [address] Address(es) of the practitioner that are not role specific
  ///  (typically home address).
  /// Work addresses are not typically entered in this property as they are
  ///  usually role dependent.
  List<Address>? get address => throw _privateConstructorUsedError;

  /// [gender] Administrative Gender - the gender that the person is considered
  ///  to have for administration and record keeping purposes.
  FhirCode? get gender => throw _privateConstructorUsedError;

  /// [genderElement] Extensions for gender
  @JsonKey(name: '_gender')
  PrimitiveElement? get genderElement => throw _privateConstructorUsedError;

  /// [birthDate] The date of birth for the practitioner.
  FhirDate? get birthDate => throw _privateConstructorUsedError;

  /// [birthDateElement] Extensions for birthDate
  @JsonKey(name: '_birthDate')
  PrimitiveElement? get birthDateElement => throw _privateConstructorUsedError;

  /// [photo] Image of the person.
  List<Attachment>? get photo => throw _privateConstructorUsedError;

  /// [qualification] The official certifications, training, and licenses that
  /// authorize or otherwise pertain to the provision of care by the
  /// practitioner.  For example, a medical license issued by a medical board
  /// authorizing the practitioner to practice medicine within a certian
  ///  locality.
  List<PractitionerQualification>? get qualification =>
      throw _privateConstructorUsedError;

  /// [communication] A language the practitioner can use in patient
  ///  communication.
  List<CodeableConcept>? get communication =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PractitionerCopyWith<Practitioner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PractitionerCopyWith<$Res> {
  factory $PractitionerCopyWith(
          Practitioner value, $Res Function(Practitioner) then) =
      _$PractitionerCopyWithImpl<$Res, Practitioner>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Practitioner)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirBoolean? active,
      @JsonKey(name: '_active') PrimitiveElement? activeElement,
      List<HumanName>? name,
      List<ContactPoint>? telecom,
      List<Address>? address,
      FhirCode? gender,
      @JsonKey(name: '_gender') PrimitiveElement? genderElement,
      FhirDate? birthDate,
      @JsonKey(name: '_birthDate') PrimitiveElement? birthDateElement,
      List<Attachment>? photo,
      List<PractitionerQualification>? qualification,
      List<CodeableConcept>? communication});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
}

/// @nodoc
class _$PractitionerCopyWithImpl<$Res, $Val extends Practitioner>
    implements $PractitionerCopyWith<$Res> {
  _$PractitionerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? active = freezed,
    Object? activeElement = freezed,
    Object? name = freezed,
    Object? telecom = freezed,
    Object? address = freezed,
    Object? gender = freezed,
    Object? genderElement = freezed,
    Object? birthDate = freezed,
    Object? birthDateElement = freezed,
    Object? photo = freezed,
    Object? qualification = freezed,
    Object? communication = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      activeElement: freezed == activeElement
          ? _value.activeElement
          : activeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as List<HumanName>?,
      telecom: freezed == telecom
          ? _value.telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      genderElement: freezed == genderElement
          ? _value.genderElement
          : genderElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      birthDateElement: freezed == birthDateElement
          ? _value.birthDateElement
          : birthDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      qualification: freezed == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as List<PractitionerQualification>?,
      communication: freezed == communication
          ? _value.communication
          : communication // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PractitionerImplCopyWith<$Res>
    implements $PractitionerCopyWith<$Res> {
  factory _$$PractitionerImplCopyWith(
          _$PractitionerImpl value, $Res Function(_$PractitionerImpl) then) =
      __$$PractitionerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Practitioner)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirBoolean? active,
      @JsonKey(name: '_active') PrimitiveElement? activeElement,
      List<HumanName>? name,
      List<ContactPoint>? telecom,
      List<Address>? address,
      FhirCode? gender,
      @JsonKey(name: '_gender') PrimitiveElement? genderElement,
      FhirDate? birthDate,
      @JsonKey(name: '_birthDate') PrimitiveElement? birthDateElement,
      List<Attachment>? photo,
      List<PractitionerQualification>? qualification,
      List<CodeableConcept>? communication});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
}

/// @nodoc
class __$$PractitionerImplCopyWithImpl<$Res>
    extends _$PractitionerCopyWithImpl<$Res, _$PractitionerImpl>
    implements _$$PractitionerImplCopyWith<$Res> {
  __$$PractitionerImplCopyWithImpl(
      _$PractitionerImpl _value, $Res Function(_$PractitionerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? active = freezed,
    Object? activeElement = freezed,
    Object? name = freezed,
    Object? telecom = freezed,
    Object? address = freezed,
    Object? gender = freezed,
    Object? genderElement = freezed,
    Object? birthDate = freezed,
    Object? birthDateElement = freezed,
    Object? photo = freezed,
    Object? qualification = freezed,
    Object? communication = freezed,
  }) {
    return _then(_$PractitionerImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      activeElement: freezed == activeElement
          ? _value.activeElement
          : activeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      name: freezed == name
          ? _value._name
          : name // ignore: cast_nullable_to_non_nullable
              as List<HumanName>?,
      telecom: freezed == telecom
          ? _value._telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      address: freezed == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      genderElement: freezed == genderElement
          ? _value.genderElement
          : genderElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      birthDateElement: freezed == birthDateElement
          ? _value.birthDateElement
          : birthDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      photo: freezed == photo
          ? _value._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      qualification: freezed == qualification
          ? _value._qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as List<PractitionerQualification>?,
      communication: freezed == communication
          ? _value._communication
          : communication // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PractitionerImpl extends _Practitioner {
  const _$PractitionerImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.Practitioner)
      this.resourceType = R4ResourceType.Practitioner,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      this.active,
      @JsonKey(name: '_active') this.activeElement,
      final List<HumanName>? name,
      final List<ContactPoint>? telecom,
      final List<Address>? address,
      this.gender,
      @JsonKey(name: '_gender') this.genderElement,
      this.birthDate,
      @JsonKey(name: '_birthDate') this.birthDateElement,
      final List<Attachment>? photo,
      final List<PractitionerQualification>? qualification,
      final List<CodeableConcept>? communication})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _name = name,
        _telecom = telecom,
        _address = address,
        _photo = photo,
        _qualification = qualification,
        _communication = communication,
        super._();

  factory _$PractitionerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PractitionerImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Practitioner)
  final R4ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  @override
  final String? id;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] An identifier that applies to this person in this role.
  final List<Identifier>? _identifier;

  /// [identifier] An identifier that applies to this person in this role.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [active] Whether this practitioner's record is in active use.
  @override
  final FhirBoolean? active;

  /// [activeElement] Extensions for active
  @override
  @JsonKey(name: '_active')
  final PrimitiveElement? activeElement;

  /// [name] The name(s) associated with the practitioner.
  final List<HumanName>? _name;

  /// [name] The name(s) associated with the practitioner.
  @override
  List<HumanName>? get name {
    final value = _name;
    if (value == null) return null;
    if (_name is EqualUnmodifiableListView) return _name;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [telecom] A contact detail for the practitioner, e.g. a telephone number
  ///  or an email address.
  final List<ContactPoint>? _telecom;

  /// [telecom] A contact detail for the practitioner, e.g. a telephone number
  ///  or an email address.
  @override
  List<ContactPoint>? get telecom {
    final value = _telecom;
    if (value == null) return null;
    if (_telecom is EqualUnmodifiableListView) return _telecom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [address] Address(es) of the practitioner that are not role specific
  ///  (typically home address).
  /// Work addresses are not typically entered in this property as they are
  ///  usually role dependent.
  final List<Address>? _address;

  /// [address] Address(es) of the practitioner that are not role specific
  ///  (typically home address).
  /// Work addresses are not typically entered in this property as they are
  ///  usually role dependent.
  @override
  List<Address>? get address {
    final value = _address;
    if (value == null) return null;
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [gender] Administrative Gender - the gender that the person is considered
  ///  to have for administration and record keeping purposes.
  @override
  final FhirCode? gender;

  /// [genderElement] Extensions for gender
  @override
  @JsonKey(name: '_gender')
  final PrimitiveElement? genderElement;

  /// [birthDate] The date of birth for the practitioner.
  @override
  final FhirDate? birthDate;

  /// [birthDateElement] Extensions for birthDate
  @override
  @JsonKey(name: '_birthDate')
  final PrimitiveElement? birthDateElement;

  /// [photo] Image of the person.
  final List<Attachment>? _photo;

  /// [photo] Image of the person.
  @override
  List<Attachment>? get photo {
    final value = _photo;
    if (value == null) return null;
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [qualification] The official certifications, training, and licenses that
  /// authorize or otherwise pertain to the provision of care by the
  /// practitioner.  For example, a medical license issued by a medical board
  /// authorizing the practitioner to practice medicine within a certian
  ///  locality.
  final List<PractitionerQualification>? _qualification;

  /// [qualification] The official certifications, training, and licenses that
  /// authorize or otherwise pertain to the provision of care by the
  /// practitioner.  For example, a medical license issued by a medical board
  /// authorizing the practitioner to practice medicine within a certian
  ///  locality.
  @override
  List<PractitionerQualification>? get qualification {
    final value = _qualification;
    if (value == null) return null;
    if (_qualification is EqualUnmodifiableListView) return _qualification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [communication] A language the practitioner can use in patient
  ///  communication.
  final List<CodeableConcept>? _communication;

  /// [communication] A language the practitioner can use in patient
  ///  communication.
  @override
  List<CodeableConcept>? get communication {
    final value = _communication;
    if (value == null) return null;
    if (_communication is EqualUnmodifiableListView) return _communication;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Practitioner(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, active: $active, activeElement: $activeElement, name: $name, telecom: $telecom, address: $address, gender: $gender, genderElement: $genderElement, birthDate: $birthDate, birthDateElement: $birthDateElement, photo: $photo, qualification: $qualification, communication: $communication)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PractitionerImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.activeElement, activeElement) ||
                other.activeElement == activeElement) &&
            const DeepCollectionEquality().equals(other._name, _name) &&
            const DeepCollectionEquality().equals(other._telecom, _telecom) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.genderElement, genderElement) ||
                other.genderElement == genderElement) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.birthDateElement, birthDateElement) ||
                other.birthDateElement == birthDateElement) &&
            const DeepCollectionEquality().equals(other._photo, _photo) &&
            const DeepCollectionEquality()
                .equals(other._qualification, _qualification) &&
            const DeepCollectionEquality()
                .equals(other._communication, _communication));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        active,
        activeElement,
        const DeepCollectionEquality().hash(_name),
        const DeepCollectionEquality().hash(_telecom),
        const DeepCollectionEquality().hash(_address),
        gender,
        genderElement,
        birthDate,
        birthDateElement,
        const DeepCollectionEquality().hash(_photo),
        const DeepCollectionEquality().hash(_qualification),
        const DeepCollectionEquality().hash(_communication)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PractitionerImplCopyWith<_$PractitionerImpl> get copyWith =>
      __$$PractitionerImplCopyWithImpl<_$PractitionerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PractitionerImplToJson(
      this,
    );
  }
}

abstract class _Practitioner extends Practitioner {
  const factory _Practitioner(
      {@JsonKey(unknownEnumValue: R4ResourceType.Practitioner)
      final R4ResourceType resourceType,
      final String? id,
      final FhirMeta? meta,
      final FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules')
      final PrimitiveElement? implicitRulesElement,
      final FhirCode? language,
      @JsonKey(name: '_language') final PrimitiveElement? languageElement,
      final Narrative? text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final FhirBoolean? active,
      @JsonKey(name: '_active') final PrimitiveElement? activeElement,
      final List<HumanName>? name,
      final List<ContactPoint>? telecom,
      final List<Address>? address,
      final FhirCode? gender,
      @JsonKey(name: '_gender') final PrimitiveElement? genderElement,
      final FhirDate? birthDate,
      @JsonKey(name: '_birthDate') final PrimitiveElement? birthDateElement,
      final List<Attachment>? photo,
      final List<PractitionerQualification>? qualification,
      final List<CodeableConcept>? communication}) = _$PractitionerImpl;
  const _Practitioner._() : super._();

  factory _Practitioner.fromJson(Map<String, dynamic> json) =
      _$PractitionerImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Practitioner)
  R4ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.
  FhirCode? get language;
  @override

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] An identifier that applies to this person in this role.
  List<Identifier>? get identifier;
  @override

  /// [active] Whether this practitioner's record is in active use.
  FhirBoolean? get active;
  @override

  /// [activeElement] Extensions for active
  @JsonKey(name: '_active')
  PrimitiveElement? get activeElement;
  @override

  /// [name] The name(s) associated with the practitioner.
  List<HumanName>? get name;
  @override

  /// [telecom] A contact detail for the practitioner, e.g. a telephone number
  ///  or an email address.
  List<ContactPoint>? get telecom;
  @override

  /// [address] Address(es) of the practitioner that are not role specific
  ///  (typically home address).
  /// Work addresses are not typically entered in this property as they are
  ///  usually role dependent.
  List<Address>? get address;
  @override

  /// [gender] Administrative Gender - the gender that the person is considered
  ///  to have for administration and record keeping purposes.
  FhirCode? get gender;
  @override

  /// [genderElement] Extensions for gender
  @JsonKey(name: '_gender')
  PrimitiveElement? get genderElement;
  @override

  /// [birthDate] The date of birth for the practitioner.
  FhirDate? get birthDate;
  @override

  /// [birthDateElement] Extensions for birthDate
  @JsonKey(name: '_birthDate')
  PrimitiveElement? get birthDateElement;
  @override

  /// [photo] Image of the person.
  List<Attachment>? get photo;
  @override

  /// [qualification] The official certifications, training, and licenses that
  /// authorize or otherwise pertain to the provision of care by the
  /// practitioner.  For example, a medical license issued by a medical board
  /// authorizing the practitioner to practice medicine within a certian
  ///  locality.
  List<PractitionerQualification>? get qualification;
  @override

  /// [communication] A language the practitioner can use in patient
  ///  communication.
  List<CodeableConcept>? get communication;
  @override
  @JsonKey(ignore: true)
  _$$PractitionerImplCopyWith<_$PractitionerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PractitionerQualification _$PractitionerQualificationFromJson(
    Map<String, dynamic> json) {
  return _PractitionerQualification.fromJson(json);
}

/// @nodoc
mixin _$PractitionerQualification {
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

  /// [identifier] An identifier that applies to this person's qualification in
  ///  this role.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [code] Coded representation of the qualification.
  CodeableConcept get code => throw _privateConstructorUsedError;

  /// [period] Period during which the qualification is valid.
  Period? get period => throw _privateConstructorUsedError;

  /// [issuer] Organization that regulates and issues the qualification.
  Reference? get issuer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PractitionerQualificationCopyWith<PractitionerQualification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PractitionerQualificationCopyWith<$Res> {
  factory $PractitionerQualificationCopyWith(PractitionerQualification value,
          $Res Function(PractitionerQualification) then) =
      _$PractitionerQualificationCopyWithImpl<$Res, PractitionerQualification>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      CodeableConcept code,
      Period? period,
      Reference? issuer});

  $CodeableConceptCopyWith<$Res> get code;
  $PeriodCopyWith<$Res>? get period;
  $ReferenceCopyWith<$Res>? get issuer;
}

/// @nodoc
class _$PractitionerQualificationCopyWithImpl<$Res,
        $Val extends PractitionerQualification>
    implements $PractitionerQualificationCopyWith<$Res> {
  _$PractitionerQualificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? code = null,
    Object? period = freezed,
    Object? issuer = freezed,
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
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      issuer: freezed == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get code {
    return $CodeableConceptCopyWith<$Res>(_value.code, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get period {
    if (_value.period == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.period!, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get issuer {
    if (_value.issuer == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.issuer!, (value) {
      return _then(_value.copyWith(issuer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PractitionerQualificationImplCopyWith<$Res>
    implements $PractitionerQualificationCopyWith<$Res> {
  factory _$$PractitionerQualificationImplCopyWith(
          _$PractitionerQualificationImpl value,
          $Res Function(_$PractitionerQualificationImpl) then) =
      __$$PractitionerQualificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      CodeableConcept code,
      Period? period,
      Reference? issuer});

  @override
  $CodeableConceptCopyWith<$Res> get code;
  @override
  $PeriodCopyWith<$Res>? get period;
  @override
  $ReferenceCopyWith<$Res>? get issuer;
}

/// @nodoc
class __$$PractitionerQualificationImplCopyWithImpl<$Res>
    extends _$PractitionerQualificationCopyWithImpl<$Res,
        _$PractitionerQualificationImpl>
    implements _$$PractitionerQualificationImplCopyWith<$Res> {
  __$$PractitionerQualificationImplCopyWithImpl(
      _$PractitionerQualificationImpl _value,
      $Res Function(_$PractitionerQualificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? code = null,
    Object? period = freezed,
    Object? issuer = freezed,
  }) {
    return _then(_$PractitionerQualificationImpl(
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
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      issuer: freezed == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PractitionerQualificationImpl extends _PractitionerQualification {
  const _$PractitionerQualificationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      required this.code,
      this.period,
      this.issuer})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        super._();

  factory _$PractitionerQualificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PractitionerQualificationImplFromJson(json);

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

  /// [identifier] An identifier that applies to this person's qualification in
  ///  this role.
  final List<Identifier>? _identifier;

  /// [identifier] An identifier that applies to this person's qualification in
  ///  this role.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [code] Coded representation of the qualification.
  @override
  final CodeableConcept code;

  /// [period] Period during which the qualification is valid.
  @override
  final Period? period;

  /// [issuer] Organization that regulates and issues the qualification.
  @override
  final Reference? issuer;

  @override
  String toString() {
    return 'PractitionerQualification(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, code: $code, period: $period, issuer: $issuer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PractitionerQualificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.issuer, issuer) || other.issuer == issuer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_identifier),
      code,
      period,
      issuer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PractitionerQualificationImplCopyWith<_$PractitionerQualificationImpl>
      get copyWith => __$$PractitionerQualificationImplCopyWithImpl<
          _$PractitionerQualificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PractitionerQualificationImplToJson(
      this,
    );
  }
}

abstract class _PractitionerQualification extends PractitionerQualification {
  const factory _PractitionerQualification(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      required final CodeableConcept code,
      final Period? period,
      final Reference? issuer}) = _$PractitionerQualificationImpl;
  const _PractitionerQualification._() : super._();

  factory _PractitionerQualification.fromJson(Map<String, dynamic> json) =
      _$PractitionerQualificationImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] An identifier that applies to this person's qualification in
  ///  this role.
  List<Identifier>? get identifier;
  @override

  /// [code] Coded representation of the qualification.
  CodeableConcept get code;
  @override

  /// [period] Period during which the qualification is valid.
  Period? get period;
  @override

  /// [issuer] Organization that regulates and issues the qualification.
  Reference? get issuer;
  @override
  @JsonKey(ignore: true)
  _$$PractitionerQualificationImplCopyWith<_$PractitionerQualificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PractitionerRole _$PractitionerRoleFromJson(Map<String, dynamic> json) {
  return _PractitionerRole.fromJson(json);
}

/// @nodoc
mixin _$PractitionerRole {
  @JsonKey(unknownEnumValue: R4ResourceType.PractitionerRole)
  R4ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] Business Identifiers that are specific to a role/location.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [active] Whether this practitioner role record is in active use.
  FhirBoolean? get active => throw _privateConstructorUsedError;

  /// [activeElement] Extensions for active
  @JsonKey(name: '_active')
  PrimitiveElement? get activeElement => throw _privateConstructorUsedError;

  /// [period] The period during which the person is authorized to act as a
  ///  practitioner in these role(s) for the organization.
  Period? get period => throw _privateConstructorUsedError;

  /// [practitioner] Practitioner that is able to provide the defined services
  ///  for the organization.
  Reference? get practitioner => throw _privateConstructorUsedError;

  /// [organization] The organization where the Practitioner performs the roles
  ///  associated.
  Reference? get organization => throw _privateConstructorUsedError;

  /// [code] Roles which this practitioner is authorized to perform for the
  ///  organization.
  List<CodeableConcept>? get code => throw _privateConstructorUsedError;

  /// [specialty] Specific specialty of the practitioner.
  List<CodeableConcept>? get specialty => throw _privateConstructorUsedError;

  /// [location] The location(s) at which this practitioner provides care.
  List<Reference>? get location => throw _privateConstructorUsedError;

  /// [healthcareService] The list of healthcare services that this worker
  ///  provides for this role's Organization/Location(s).
  List<Reference>? get healthcareService => throw _privateConstructorUsedError;

  /// [telecom] Contact details that are specific to the role/location/service.
  List<ContactPoint>? get telecom => throw _privateConstructorUsedError;

  /// [availableTime] A collection of times the practitioner is available or
  ///  performing this role at the location and/or healthcareservice.
  List<PractitionerRoleAvailableTime>? get availableTime =>
      throw _privateConstructorUsedError;

  /// [notAvailable] The practitioner is not available or performing this role
  ///  during this period of time due to the provided reason.
  List<PractitionerRoleNotAvailable>? get notAvailable =>
      throw _privateConstructorUsedError;

  /// [availabilityExceptions] A description of site availability exceptions,
  /// e.g. public holiday availability. Succinctly describing all possible
  /// exceptions to normal site availability as details in the available Times
  ///  and not available Times.
  String? get availabilityExceptions => throw _privateConstructorUsedError;
  @JsonKey(name: '_availabilityExceptions')
  PrimitiveElement? get availabilityExceptionsElement =>
      throw _privateConstructorUsedError;

  /// [endpoint] Technical endpoints providing access to services operated for
  ///  the practitioner with this role.
  List<Reference>? get endpoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PractitionerRoleCopyWith<PractitionerRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PractitionerRoleCopyWith<$Res> {
  factory $PractitionerRoleCopyWith(
          PractitionerRole value, $Res Function(PractitionerRole) then) =
      _$PractitionerRoleCopyWithImpl<$Res, PractitionerRole>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.PractitionerRole)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirBoolean? active,
      @JsonKey(name: '_active') PrimitiveElement? activeElement,
      Period? period,
      Reference? practitioner,
      Reference? organization,
      List<CodeableConcept>? code,
      List<CodeableConcept>? specialty,
      List<Reference>? location,
      List<Reference>? healthcareService,
      List<ContactPoint>? telecom,
      List<PractitionerRoleAvailableTime>? availableTime,
      List<PractitionerRoleNotAvailable>? notAvailable,
      String? availabilityExceptions,
      @JsonKey(name: '_availabilityExceptions')
      PrimitiveElement? availabilityExceptionsElement,
      List<Reference>? endpoint});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $PeriodCopyWith<$Res>? get period;
  $ReferenceCopyWith<$Res>? get practitioner;
  $ReferenceCopyWith<$Res>? get organization;
}

/// @nodoc
class _$PractitionerRoleCopyWithImpl<$Res, $Val extends PractitionerRole>
    implements $PractitionerRoleCopyWith<$Res> {
  _$PractitionerRoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? active = freezed,
    Object? activeElement = freezed,
    Object? period = freezed,
    Object? practitioner = freezed,
    Object? organization = freezed,
    Object? code = freezed,
    Object? specialty = freezed,
    Object? location = freezed,
    Object? healthcareService = freezed,
    Object? telecom = freezed,
    Object? availableTime = freezed,
    Object? notAvailable = freezed,
    Object? availabilityExceptions = freezed,
    Object? availabilityExceptionsElement = freezed,
    Object? endpoint = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      activeElement: freezed == activeElement
          ? _value.activeElement
          : activeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      practitioner: freezed == practitioner
          ? _value.practitioner
          : practitioner // ignore: cast_nullable_to_non_nullable
              as Reference?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      specialty: freezed == specialty
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      healthcareService: freezed == healthcareService
          ? _value.healthcareService
          : healthcareService // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      telecom: freezed == telecom
          ? _value.telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      availableTime: freezed == availableTime
          ? _value.availableTime
          : availableTime // ignore: cast_nullable_to_non_nullable
              as List<PractitionerRoleAvailableTime>?,
      notAvailable: freezed == notAvailable
          ? _value.notAvailable
          : notAvailable // ignore: cast_nullable_to_non_nullable
              as List<PractitionerRoleNotAvailable>?,
      availabilityExceptions: freezed == availabilityExceptions
          ? _value.availabilityExceptions
          : availabilityExceptions // ignore: cast_nullable_to_non_nullable
              as String?,
      availabilityExceptionsElement: freezed == availabilityExceptionsElement
          ? _value.availabilityExceptionsElement
          : availabilityExceptionsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get period {
    if (_value.period == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.period!, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get practitioner {
    if (_value.practitioner == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.practitioner!, (value) {
      return _then(_value.copyWith(practitioner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get organization {
    if (_value.organization == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.organization!, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PractitionerRoleImplCopyWith<$Res>
    implements $PractitionerRoleCopyWith<$Res> {
  factory _$$PractitionerRoleImplCopyWith(_$PractitionerRoleImpl value,
          $Res Function(_$PractitionerRoleImpl) then) =
      __$$PractitionerRoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.PractitionerRole)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirBoolean? active,
      @JsonKey(name: '_active') PrimitiveElement? activeElement,
      Period? period,
      Reference? practitioner,
      Reference? organization,
      List<CodeableConcept>? code,
      List<CodeableConcept>? specialty,
      List<Reference>? location,
      List<Reference>? healthcareService,
      List<ContactPoint>? telecom,
      List<PractitionerRoleAvailableTime>? availableTime,
      List<PractitionerRoleNotAvailable>? notAvailable,
      String? availabilityExceptions,
      @JsonKey(name: '_availabilityExceptions')
      PrimitiveElement? availabilityExceptionsElement,
      List<Reference>? endpoint});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $PeriodCopyWith<$Res>? get period;
  @override
  $ReferenceCopyWith<$Res>? get practitioner;
  @override
  $ReferenceCopyWith<$Res>? get organization;
}

/// @nodoc
class __$$PractitionerRoleImplCopyWithImpl<$Res>
    extends _$PractitionerRoleCopyWithImpl<$Res, _$PractitionerRoleImpl>
    implements _$$PractitionerRoleImplCopyWith<$Res> {
  __$$PractitionerRoleImplCopyWithImpl(_$PractitionerRoleImpl _value,
      $Res Function(_$PractitionerRoleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? active = freezed,
    Object? activeElement = freezed,
    Object? period = freezed,
    Object? practitioner = freezed,
    Object? organization = freezed,
    Object? code = freezed,
    Object? specialty = freezed,
    Object? location = freezed,
    Object? healthcareService = freezed,
    Object? telecom = freezed,
    Object? availableTime = freezed,
    Object? notAvailable = freezed,
    Object? availabilityExceptions = freezed,
    Object? availabilityExceptionsElement = freezed,
    Object? endpoint = freezed,
  }) {
    return _then(_$PractitionerRoleImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      activeElement: freezed == activeElement
          ? _value.activeElement
          : activeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      practitioner: freezed == practitioner
          ? _value.practitioner
          : practitioner // ignore: cast_nullable_to_non_nullable
              as Reference?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      code: freezed == code
          ? _value._code
          : code // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      specialty: freezed == specialty
          ? _value._specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      location: freezed == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      healthcareService: freezed == healthcareService
          ? _value._healthcareService
          : healthcareService // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      telecom: freezed == telecom
          ? _value._telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      availableTime: freezed == availableTime
          ? _value._availableTime
          : availableTime // ignore: cast_nullable_to_non_nullable
              as List<PractitionerRoleAvailableTime>?,
      notAvailable: freezed == notAvailable
          ? _value._notAvailable
          : notAvailable // ignore: cast_nullable_to_non_nullable
              as List<PractitionerRoleNotAvailable>?,
      availabilityExceptions: freezed == availabilityExceptions
          ? _value.availabilityExceptions
          : availabilityExceptions // ignore: cast_nullable_to_non_nullable
              as String?,
      availabilityExceptionsElement: freezed == availabilityExceptionsElement
          ? _value.availabilityExceptionsElement
          : availabilityExceptionsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      endpoint: freezed == endpoint
          ? _value._endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PractitionerRoleImpl extends _PractitionerRole {
  const _$PractitionerRoleImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.PractitionerRole)
      this.resourceType = R4ResourceType.PractitionerRole,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      this.active,
      @JsonKey(name: '_active') this.activeElement,
      this.period,
      this.practitioner,
      this.organization,
      final List<CodeableConcept>? code,
      final List<CodeableConcept>? specialty,
      final List<Reference>? location,
      final List<Reference>? healthcareService,
      final List<ContactPoint>? telecom,
      final List<PractitionerRoleAvailableTime>? availableTime,
      final List<PractitionerRoleNotAvailable>? notAvailable,
      this.availabilityExceptions,
      @JsonKey(name: '_availabilityExceptions')
      this.availabilityExceptionsElement,
      final List<Reference>? endpoint})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _code = code,
        _specialty = specialty,
        _location = location,
        _healthcareService = healthcareService,
        _telecom = telecom,
        _availableTime = availableTime,
        _notAvailable = notAvailable,
        _endpoint = endpoint,
        super._();

  factory _$PractitionerRoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$PractitionerRoleImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.PractitionerRole)
  final R4ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  @override
  final String? id;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] Business Identifiers that are specific to a role/location.
  final List<Identifier>? _identifier;

  /// [identifier] Business Identifiers that are specific to a role/location.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [active] Whether this practitioner role record is in active use.
  @override
  final FhirBoolean? active;

  /// [activeElement] Extensions for active
  @override
  @JsonKey(name: '_active')
  final PrimitiveElement? activeElement;

  /// [period] The period during which the person is authorized to act as a
  ///  practitioner in these role(s) for the organization.
  @override
  final Period? period;

  /// [practitioner] Practitioner that is able to provide the defined services
  ///  for the organization.
  @override
  final Reference? practitioner;

  /// [organization] The organization where the Practitioner performs the roles
  ///  associated.
  @override
  final Reference? organization;

  /// [code] Roles which this practitioner is authorized to perform for the
  ///  organization.
  final List<CodeableConcept>? _code;

  /// [code] Roles which this practitioner is authorized to perform for the
  ///  organization.
  @override
  List<CodeableConcept>? get code {
    final value = _code;
    if (value == null) return null;
    if (_code is EqualUnmodifiableListView) return _code;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [specialty] Specific specialty of the practitioner.
  final List<CodeableConcept>? _specialty;

  /// [specialty] Specific specialty of the practitioner.
  @override
  List<CodeableConcept>? get specialty {
    final value = _specialty;
    if (value == null) return null;
    if (_specialty is EqualUnmodifiableListView) return _specialty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [location] The location(s) at which this practitioner provides care.
  final List<Reference>? _location;

  /// [location] The location(s) at which this practitioner provides care.
  @override
  List<Reference>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [healthcareService] The list of healthcare services that this worker
  ///  provides for this role's Organization/Location(s).
  final List<Reference>? _healthcareService;

  /// [healthcareService] The list of healthcare services that this worker
  ///  provides for this role's Organization/Location(s).
  @override
  List<Reference>? get healthcareService {
    final value = _healthcareService;
    if (value == null) return null;
    if (_healthcareService is EqualUnmodifiableListView)
      return _healthcareService;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [telecom] Contact details that are specific to the role/location/service.
  final List<ContactPoint>? _telecom;

  /// [telecom] Contact details that are specific to the role/location/service.
  @override
  List<ContactPoint>? get telecom {
    final value = _telecom;
    if (value == null) return null;
    if (_telecom is EqualUnmodifiableListView) return _telecom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [availableTime] A collection of times the practitioner is available or
  ///  performing this role at the location and/or healthcareservice.
  final List<PractitionerRoleAvailableTime>? _availableTime;

  /// [availableTime] A collection of times the practitioner is available or
  ///  performing this role at the location and/or healthcareservice.
  @override
  List<PractitionerRoleAvailableTime>? get availableTime {
    final value = _availableTime;
    if (value == null) return null;
    if (_availableTime is EqualUnmodifiableListView) return _availableTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [notAvailable] The practitioner is not available or performing this role
  ///  during this period of time due to the provided reason.
  final List<PractitionerRoleNotAvailable>? _notAvailable;

  /// [notAvailable] The practitioner is not available or performing this role
  ///  during this period of time due to the provided reason.
  @override
  List<PractitionerRoleNotAvailable>? get notAvailable {
    final value = _notAvailable;
    if (value == null) return null;
    if (_notAvailable is EqualUnmodifiableListView) return _notAvailable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [availabilityExceptions] A description of site availability exceptions,
  /// e.g. public holiday availability. Succinctly describing all possible
  /// exceptions to normal site availability as details in the available Times
  ///  and not available Times.
  @override
  final String? availabilityExceptions;
  @override
  @JsonKey(name: '_availabilityExceptions')
  final PrimitiveElement? availabilityExceptionsElement;

  /// [endpoint] Technical endpoints providing access to services operated for
  ///  the practitioner with this role.
  final List<Reference>? _endpoint;

  /// [endpoint] Technical endpoints providing access to services operated for
  ///  the practitioner with this role.
  @override
  List<Reference>? get endpoint {
    final value = _endpoint;
    if (value == null) return null;
    if (_endpoint is EqualUnmodifiableListView) return _endpoint;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PractitionerRole(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, active: $active, activeElement: $activeElement, period: $period, practitioner: $practitioner, organization: $organization, code: $code, specialty: $specialty, location: $location, healthcareService: $healthcareService, telecom: $telecom, availableTime: $availableTime, notAvailable: $notAvailable, availabilityExceptions: $availabilityExceptions, availabilityExceptionsElement: $availabilityExceptionsElement, endpoint: $endpoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PractitionerRoleImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.activeElement, activeElement) ||
                other.activeElement == activeElement) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.practitioner, practitioner) ||
                other.practitioner == practitioner) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            const DeepCollectionEquality().equals(other._code, _code) &&
            const DeepCollectionEquality()
                .equals(other._specialty, _specialty) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            const DeepCollectionEquality()
                .equals(other._healthcareService, _healthcareService) &&
            const DeepCollectionEquality().equals(other._telecom, _telecom) &&
            const DeepCollectionEquality()
                .equals(other._availableTime, _availableTime) &&
            const DeepCollectionEquality()
                .equals(other._notAvailable, _notAvailable) &&
            (identical(other.availabilityExceptions, availabilityExceptions) ||
                other.availabilityExceptions == availabilityExceptions) &&
            (identical(other.availabilityExceptionsElement,
                    availabilityExceptionsElement) ||
                other.availabilityExceptionsElement ==
                    availabilityExceptionsElement) &&
            const DeepCollectionEquality().equals(other._endpoint, _endpoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        active,
        activeElement,
        period,
        practitioner,
        organization,
        const DeepCollectionEquality().hash(_code),
        const DeepCollectionEquality().hash(_specialty),
        const DeepCollectionEquality().hash(_location),
        const DeepCollectionEquality().hash(_healthcareService),
        const DeepCollectionEquality().hash(_telecom),
        const DeepCollectionEquality().hash(_availableTime),
        const DeepCollectionEquality().hash(_notAvailable),
        availabilityExceptions,
        availabilityExceptionsElement,
        const DeepCollectionEquality().hash(_endpoint)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PractitionerRoleImplCopyWith<_$PractitionerRoleImpl> get copyWith =>
      __$$PractitionerRoleImplCopyWithImpl<_$PractitionerRoleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PractitionerRoleImplToJson(
      this,
    );
  }
}

abstract class _PractitionerRole extends PractitionerRole {
  const factory _PractitionerRole(
      {@JsonKey(unknownEnumValue: R4ResourceType.PractitionerRole)
      final R4ResourceType resourceType,
      final String? id,
      final FhirMeta? meta,
      final FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules')
      final PrimitiveElement? implicitRulesElement,
      final FhirCode? language,
      @JsonKey(name: '_language') final PrimitiveElement? languageElement,
      final Narrative? text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final FhirBoolean? active,
      @JsonKey(name: '_active') final PrimitiveElement? activeElement,
      final Period? period,
      final Reference? practitioner,
      final Reference? organization,
      final List<CodeableConcept>? code,
      final List<CodeableConcept>? specialty,
      final List<Reference>? location,
      final List<Reference>? healthcareService,
      final List<ContactPoint>? telecom,
      final List<PractitionerRoleAvailableTime>? availableTime,
      final List<PractitionerRoleNotAvailable>? notAvailable,
      final String? availabilityExceptions,
      @JsonKey(name: '_availabilityExceptions')
      final PrimitiveElement? availabilityExceptionsElement,
      final List<Reference>? endpoint}) = _$PractitionerRoleImpl;
  const _PractitionerRole._() : super._();

  factory _PractitionerRole.fromJson(Map<String, dynamic> json) =
      _$PractitionerRoleImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.PractitionerRole)
  R4ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.
  FhirCode? get language;
  @override

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] Business Identifiers that are specific to a role/location.
  List<Identifier>? get identifier;
  @override

  /// [active] Whether this practitioner role record is in active use.
  FhirBoolean? get active;
  @override

  /// [activeElement] Extensions for active
  @JsonKey(name: '_active')
  PrimitiveElement? get activeElement;
  @override

  /// [period] The period during which the person is authorized to act as a
  ///  practitioner in these role(s) for the organization.
  Period? get period;
  @override

  /// [practitioner] Practitioner that is able to provide the defined services
  ///  for the organization.
  Reference? get practitioner;
  @override

  /// [organization] The organization where the Practitioner performs the roles
  ///  associated.
  Reference? get organization;
  @override

  /// [code] Roles which this practitioner is authorized to perform for the
  ///  organization.
  List<CodeableConcept>? get code;
  @override

  /// [specialty] Specific specialty of the practitioner.
  List<CodeableConcept>? get specialty;
  @override

  /// [location] The location(s) at which this practitioner provides care.
  List<Reference>? get location;
  @override

  /// [healthcareService] The list of healthcare services that this worker
  ///  provides for this role's Organization/Location(s).
  List<Reference>? get healthcareService;
  @override

  /// [telecom] Contact details that are specific to the role/location/service.
  List<ContactPoint>? get telecom;
  @override

  /// [availableTime] A collection of times the practitioner is available or
  ///  performing this role at the location and/or healthcareservice.
  List<PractitionerRoleAvailableTime>? get availableTime;
  @override

  /// [notAvailable] The practitioner is not available or performing this role
  ///  during this period of time due to the provided reason.
  List<PractitionerRoleNotAvailable>? get notAvailable;
  @override

  /// [availabilityExceptions] A description of site availability exceptions,
  /// e.g. public holiday availability. Succinctly describing all possible
  /// exceptions to normal site availability as details in the available Times
  ///  and not available Times.
  String? get availabilityExceptions;
  @override
  @JsonKey(name: '_availabilityExceptions')
  PrimitiveElement? get availabilityExceptionsElement;
  @override

  /// [endpoint] Technical endpoints providing access to services operated for
  ///  the practitioner with this role.
  List<Reference>? get endpoint;
  @override
  @JsonKey(ignore: true)
  _$$PractitionerRoleImplCopyWith<_$PractitionerRoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PractitionerRoleAvailableTime _$PractitionerRoleAvailableTimeFromJson(
    Map<String, dynamic> json) {
  return _PractitionerRoleAvailableTime.fromJson(json);
}

/// @nodoc
mixin _$PractitionerRoleAvailableTime {
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

  /// [daysOfWeek] Indicates which days of the week are available between the
  ///  start and end Times.
  List<FhirCode>? get daysOfWeek => throw _privateConstructorUsedError;

  /// [daysOfWeekElement] Extensions for daysOfWeek
  @JsonKey(name: '_daysOfWeek')
  List<Element?>? get daysOfWeekElement => throw _privateConstructorUsedError;

  /// [allDay] Is this always available? (hence times are irrelevant) e.g. 24
  ///  hour service.
  FhirBoolean? get allDay => throw _privateConstructorUsedError;

  /// [allDayElement] Extensions for allDay
  @JsonKey(name: '_allDay')
  PrimitiveElement? get allDayElement => throw _privateConstructorUsedError;

  /// [availableStartTime] The opening time of day. Note: If the AllDay flag is
  ///  set, then this time is ignored.
  FhirTime? get availableStartTime => throw _privateConstructorUsedError;

  /// [availableStartTimeElement] Extensions for availableStartTime
  @JsonKey(name: '_availableStartTime')
  PrimitiveElement? get availableStartTimeElement =>
      throw _privateConstructorUsedError;

  /// [availableEndTime] The closing time of day. Note: If the AllDay flag is
  ///  set, then this time is ignored.
  FhirTime? get availableEndTime => throw _privateConstructorUsedError;

  /// [availableEndTimeElement] Extensions for availableEndTime
  @JsonKey(name: '_availableEndTime')
  PrimitiveElement? get availableEndTimeElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PractitionerRoleAvailableTimeCopyWith<PractitionerRoleAvailableTime>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PractitionerRoleAvailableTimeCopyWith<$Res> {
  factory $PractitionerRoleAvailableTimeCopyWith(
          PractitionerRoleAvailableTime value,
          $Res Function(PractitionerRoleAvailableTime) then) =
      _$PractitionerRoleAvailableTimeCopyWithImpl<$Res,
          PractitionerRoleAvailableTime>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<FhirCode>? daysOfWeek,
      @JsonKey(name: '_daysOfWeek') List<Element?>? daysOfWeekElement,
      FhirBoolean? allDay,
      @JsonKey(name: '_allDay') PrimitiveElement? allDayElement,
      FhirTime? availableStartTime,
      @JsonKey(name: '_availableStartTime')
      PrimitiveElement? availableStartTimeElement,
      FhirTime? availableEndTime,
      @JsonKey(name: '_availableEndTime')
      PrimitiveElement? availableEndTimeElement});
}

/// @nodoc
class _$PractitionerRoleAvailableTimeCopyWithImpl<$Res,
        $Val extends PractitionerRoleAvailableTime>
    implements $PractitionerRoleAvailableTimeCopyWith<$Res> {
  _$PractitionerRoleAvailableTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? daysOfWeek = freezed,
    Object? daysOfWeekElement = freezed,
    Object? allDay = freezed,
    Object? allDayElement = freezed,
    Object? availableStartTime = freezed,
    Object? availableStartTimeElement = freezed,
    Object? availableEndTime = freezed,
    Object? availableEndTimeElement = freezed,
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
      daysOfWeek: freezed == daysOfWeek
          ? _value.daysOfWeek
          : daysOfWeek // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      daysOfWeekElement: freezed == daysOfWeekElement
          ? _value.daysOfWeekElement
          : daysOfWeekElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      allDay: freezed == allDay
          ? _value.allDay
          : allDay // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      allDayElement: freezed == allDayElement
          ? _value.allDayElement
          : allDayElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      availableStartTime: freezed == availableStartTime
          ? _value.availableStartTime
          : availableStartTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      availableStartTimeElement: freezed == availableStartTimeElement
          ? _value.availableStartTimeElement
          : availableStartTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      availableEndTime: freezed == availableEndTime
          ? _value.availableEndTime
          : availableEndTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      availableEndTimeElement: freezed == availableEndTimeElement
          ? _value.availableEndTimeElement
          : availableEndTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PractitionerRoleAvailableTimeImplCopyWith<$Res>
    implements $PractitionerRoleAvailableTimeCopyWith<$Res> {
  factory _$$PractitionerRoleAvailableTimeImplCopyWith(
          _$PractitionerRoleAvailableTimeImpl value,
          $Res Function(_$PractitionerRoleAvailableTimeImpl) then) =
      __$$PractitionerRoleAvailableTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<FhirCode>? daysOfWeek,
      @JsonKey(name: '_daysOfWeek') List<Element?>? daysOfWeekElement,
      FhirBoolean? allDay,
      @JsonKey(name: '_allDay') PrimitiveElement? allDayElement,
      FhirTime? availableStartTime,
      @JsonKey(name: '_availableStartTime')
      PrimitiveElement? availableStartTimeElement,
      FhirTime? availableEndTime,
      @JsonKey(name: '_availableEndTime')
      PrimitiveElement? availableEndTimeElement});
}

/// @nodoc
class __$$PractitionerRoleAvailableTimeImplCopyWithImpl<$Res>
    extends _$PractitionerRoleAvailableTimeCopyWithImpl<$Res,
        _$PractitionerRoleAvailableTimeImpl>
    implements _$$PractitionerRoleAvailableTimeImplCopyWith<$Res> {
  __$$PractitionerRoleAvailableTimeImplCopyWithImpl(
      _$PractitionerRoleAvailableTimeImpl _value,
      $Res Function(_$PractitionerRoleAvailableTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? daysOfWeek = freezed,
    Object? daysOfWeekElement = freezed,
    Object? allDay = freezed,
    Object? allDayElement = freezed,
    Object? availableStartTime = freezed,
    Object? availableStartTimeElement = freezed,
    Object? availableEndTime = freezed,
    Object? availableEndTimeElement = freezed,
  }) {
    return _then(_$PractitionerRoleAvailableTimeImpl(
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
      daysOfWeek: freezed == daysOfWeek
          ? _value._daysOfWeek
          : daysOfWeek // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      daysOfWeekElement: freezed == daysOfWeekElement
          ? _value._daysOfWeekElement
          : daysOfWeekElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      allDay: freezed == allDay
          ? _value.allDay
          : allDay // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      allDayElement: freezed == allDayElement
          ? _value.allDayElement
          : allDayElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      availableStartTime: freezed == availableStartTime
          ? _value.availableStartTime
          : availableStartTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      availableStartTimeElement: freezed == availableStartTimeElement
          ? _value.availableStartTimeElement
          : availableStartTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      availableEndTime: freezed == availableEndTime
          ? _value.availableEndTime
          : availableEndTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      availableEndTimeElement: freezed == availableEndTimeElement
          ? _value.availableEndTimeElement
          : availableEndTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PractitionerRoleAvailableTimeImpl
    extends _PractitionerRoleAvailableTime {
  const _$PractitionerRoleAvailableTimeImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<FhirCode>? daysOfWeek,
      @JsonKey(name: '_daysOfWeek') final List<Element?>? daysOfWeekElement,
      this.allDay,
      @JsonKey(name: '_allDay') this.allDayElement,
      this.availableStartTime,
      @JsonKey(name: '_availableStartTime') this.availableStartTimeElement,
      this.availableEndTime,
      @JsonKey(name: '_availableEndTime') this.availableEndTimeElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _daysOfWeek = daysOfWeek,
        _daysOfWeekElement = daysOfWeekElement,
        super._();

  factory _$PractitionerRoleAvailableTimeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PractitionerRoleAvailableTimeImplFromJson(json);

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

  /// [daysOfWeek] Indicates which days of the week are available between the
  ///  start and end Times.
  final List<FhirCode>? _daysOfWeek;

  /// [daysOfWeek] Indicates which days of the week are available between the
  ///  start and end Times.
  @override
  List<FhirCode>? get daysOfWeek {
    final value = _daysOfWeek;
    if (value == null) return null;
    if (_daysOfWeek is EqualUnmodifiableListView) return _daysOfWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [daysOfWeekElement] Extensions for daysOfWeek
  final List<Element?>? _daysOfWeekElement;

  /// [daysOfWeekElement] Extensions for daysOfWeek
  @override
  @JsonKey(name: '_daysOfWeek')
  List<Element?>? get daysOfWeekElement {
    final value = _daysOfWeekElement;
    if (value == null) return null;
    if (_daysOfWeekElement is EqualUnmodifiableListView)
      return _daysOfWeekElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [allDay] Is this always available? (hence times are irrelevant) e.g. 24
  ///  hour service.
  @override
  final FhirBoolean? allDay;

  /// [allDayElement] Extensions for allDay
  @override
  @JsonKey(name: '_allDay')
  final PrimitiveElement? allDayElement;

  /// [availableStartTime] The opening time of day. Note: If the AllDay flag is
  ///  set, then this time is ignored.
  @override
  final FhirTime? availableStartTime;

  /// [availableStartTimeElement] Extensions for availableStartTime
  @override
  @JsonKey(name: '_availableStartTime')
  final PrimitiveElement? availableStartTimeElement;

  /// [availableEndTime] The closing time of day. Note: If the AllDay flag is
  ///  set, then this time is ignored.
  @override
  final FhirTime? availableEndTime;

  /// [availableEndTimeElement] Extensions for availableEndTime
  @override
  @JsonKey(name: '_availableEndTime')
  final PrimitiveElement? availableEndTimeElement;

  @override
  String toString() {
    return 'PractitionerRoleAvailableTime(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, daysOfWeek: $daysOfWeek, daysOfWeekElement: $daysOfWeekElement, allDay: $allDay, allDayElement: $allDayElement, availableStartTime: $availableStartTime, availableStartTimeElement: $availableStartTimeElement, availableEndTime: $availableEndTime, availableEndTimeElement: $availableEndTimeElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PractitionerRoleAvailableTimeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._daysOfWeek, _daysOfWeek) &&
            const DeepCollectionEquality()
                .equals(other._daysOfWeekElement, _daysOfWeekElement) &&
            (identical(other.allDay, allDay) || other.allDay == allDay) &&
            (identical(other.allDayElement, allDayElement) ||
                other.allDayElement == allDayElement) &&
            (identical(other.availableStartTime, availableStartTime) ||
                other.availableStartTime == availableStartTime) &&
            (identical(other.availableStartTimeElement,
                    availableStartTimeElement) ||
                other.availableStartTimeElement == availableStartTimeElement) &&
            (identical(other.availableEndTime, availableEndTime) ||
                other.availableEndTime == availableEndTime) &&
            (identical(
                    other.availableEndTimeElement, availableEndTimeElement) ||
                other.availableEndTimeElement == availableEndTimeElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_daysOfWeek),
      const DeepCollectionEquality().hash(_daysOfWeekElement),
      allDay,
      allDayElement,
      availableStartTime,
      availableStartTimeElement,
      availableEndTime,
      availableEndTimeElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PractitionerRoleAvailableTimeImplCopyWith<
          _$PractitionerRoleAvailableTimeImpl>
      get copyWith => __$$PractitionerRoleAvailableTimeImplCopyWithImpl<
          _$PractitionerRoleAvailableTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PractitionerRoleAvailableTimeImplToJson(
      this,
    );
  }
}

abstract class _PractitionerRoleAvailableTime
    extends PractitionerRoleAvailableTime {
  const factory _PractitionerRoleAvailableTime(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final List<FhirCode>? daysOfWeek,
          @JsonKey(name: '_daysOfWeek') final List<Element?>? daysOfWeekElement,
          final FhirBoolean? allDay,
          @JsonKey(name: '_allDay') final PrimitiveElement? allDayElement,
          final FhirTime? availableStartTime,
          @JsonKey(name: '_availableStartTime')
          final PrimitiveElement? availableStartTimeElement,
          final FhirTime? availableEndTime,
          @JsonKey(name: '_availableEndTime')
          final PrimitiveElement? availableEndTimeElement}) =
      _$PractitionerRoleAvailableTimeImpl;
  const _PractitionerRoleAvailableTime._() : super._();

  factory _PractitionerRoleAvailableTime.fromJson(Map<String, dynamic> json) =
      _$PractitionerRoleAvailableTimeImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [daysOfWeek] Indicates which days of the week are available between the
  ///  start and end Times.
  List<FhirCode>? get daysOfWeek;
  @override

  /// [daysOfWeekElement] Extensions for daysOfWeek
  @JsonKey(name: '_daysOfWeek')
  List<Element?>? get daysOfWeekElement;
  @override

  /// [allDay] Is this always available? (hence times are irrelevant) e.g. 24
  ///  hour service.
  FhirBoolean? get allDay;
  @override

  /// [allDayElement] Extensions for allDay
  @JsonKey(name: '_allDay')
  PrimitiveElement? get allDayElement;
  @override

  /// [availableStartTime] The opening time of day. Note: If the AllDay flag is
  ///  set, then this time is ignored.
  FhirTime? get availableStartTime;
  @override

  /// [availableStartTimeElement] Extensions for availableStartTime
  @JsonKey(name: '_availableStartTime')
  PrimitiveElement? get availableStartTimeElement;
  @override

  /// [availableEndTime] The closing time of day. Note: If the AllDay flag is
  ///  set, then this time is ignored.
  FhirTime? get availableEndTime;
  @override

  /// [availableEndTimeElement] Extensions for availableEndTime
  @JsonKey(name: '_availableEndTime')
  PrimitiveElement? get availableEndTimeElement;
  @override
  @JsonKey(ignore: true)
  _$$PractitionerRoleAvailableTimeImplCopyWith<
          _$PractitionerRoleAvailableTimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PractitionerRoleNotAvailable _$PractitionerRoleNotAvailableFromJson(
    Map<String, dynamic> json) {
  return _PractitionerRoleNotAvailable.fromJson(json);
}

/// @nodoc
mixin _$PractitionerRoleNotAvailable {
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

  /// [description] The reason that can be presented to the user as to why this
  ///  time is not available.
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [during] Service is not available (seasonally or for a public holiday)
  ///  from this date.
  Period? get during => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PractitionerRoleNotAvailableCopyWith<PractitionerRoleNotAvailable>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PractitionerRoleNotAvailableCopyWith<$Res> {
  factory $PractitionerRoleNotAvailableCopyWith(
          PractitionerRoleNotAvailable value,
          $Res Function(PractitionerRoleNotAvailable) then) =
      _$PractitionerRoleNotAvailableCopyWithImpl<$Res,
          PractitionerRoleNotAvailable>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      Period? during});

  $PeriodCopyWith<$Res>? get during;
}

/// @nodoc
class _$PractitionerRoleNotAvailableCopyWithImpl<$Res,
        $Val extends PractitionerRoleNotAvailable>
    implements $PractitionerRoleNotAvailableCopyWith<$Res> {
  _$PractitionerRoleNotAvailableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? during = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      during: freezed == during
          ? _value.during
          : during // ignore: cast_nullable_to_non_nullable
              as Period?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get during {
    if (_value.during == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.during!, (value) {
      return _then(_value.copyWith(during: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PractitionerRoleNotAvailableImplCopyWith<$Res>
    implements $PractitionerRoleNotAvailableCopyWith<$Res> {
  factory _$$PractitionerRoleNotAvailableImplCopyWith(
          _$PractitionerRoleNotAvailableImpl value,
          $Res Function(_$PractitionerRoleNotAvailableImpl) then) =
      __$$PractitionerRoleNotAvailableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      Period? during});

  @override
  $PeriodCopyWith<$Res>? get during;
}

/// @nodoc
class __$$PractitionerRoleNotAvailableImplCopyWithImpl<$Res>
    extends _$PractitionerRoleNotAvailableCopyWithImpl<$Res,
        _$PractitionerRoleNotAvailableImpl>
    implements _$$PractitionerRoleNotAvailableImplCopyWith<$Res> {
  __$$PractitionerRoleNotAvailableImplCopyWithImpl(
      _$PractitionerRoleNotAvailableImpl _value,
      $Res Function(_$PractitionerRoleNotAvailableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? during = freezed,
  }) {
    return _then(_$PractitionerRoleNotAvailableImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      during: freezed == during
          ? _value.during
          : during // ignore: cast_nullable_to_non_nullable
              as Period?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PractitionerRoleNotAvailableImpl extends _PractitionerRoleNotAvailable {
  const _$PractitionerRoleNotAvailableImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.during})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$PractitionerRoleNotAvailableImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PractitionerRoleNotAvailableImplFromJson(json);

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

  /// [description] The reason that can be presented to the user as to why this
  ///  time is not available.
  @override
  final String? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [during] Service is not available (seasonally or for a public holiday)
  ///  from this date.
  @override
  final Period? during;

  @override
  String toString() {
    return 'PractitionerRoleNotAvailable(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, description: $description, descriptionElement: $descriptionElement, during: $during)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PractitionerRoleNotAvailableImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.during, during) || other.during == during));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      description,
      descriptionElement,
      during);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PractitionerRoleNotAvailableImplCopyWith<
          _$PractitionerRoleNotAvailableImpl>
      get copyWith => __$$PractitionerRoleNotAvailableImplCopyWithImpl<
          _$PractitionerRoleNotAvailableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PractitionerRoleNotAvailableImplToJson(
      this,
    );
  }
}

abstract class _PractitionerRoleNotAvailable
    extends PractitionerRoleNotAvailable {
  const factory _PractitionerRoleNotAvailable(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final Period? during}) = _$PractitionerRoleNotAvailableImpl;
  const _PractitionerRoleNotAvailable._() : super._();

  factory _PractitionerRoleNotAvailable.fromJson(Map<String, dynamic> json) =
      _$PractitionerRoleNotAvailableImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [description] The reason that can be presented to the user as to why this
  ///  time is not available.
  String? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [during] Service is not available (seasonally or for a public holiday)
  ///  from this date.
  Period? get during;
  @override
  @JsonKey(ignore: true)
  _$$PractitionerRoleNotAvailableImplCopyWith<
          _$PractitionerRoleNotAvailableImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RelatedPerson _$RelatedPersonFromJson(Map<String, dynamic> json) {
  return _RelatedPerson.fromJson(json);
}

/// @nodoc
mixin _$RelatedPerson {
  @JsonKey(unknownEnumValue: R4ResourceType.RelatedPerson)
  R4ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] Identifier for a person within a particular scope.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [active] Whether this related person record is in active use.
  FhirBoolean? get active => throw _privateConstructorUsedError;

  /// [activeElement] Extensions for active
  @JsonKey(name: '_active')
  PrimitiveElement? get activeElement => throw _privateConstructorUsedError;

  /// [patient] The patient this person is related to.
  Reference get patient => throw _privateConstructorUsedError;

  /// [relationship] The nature of the relationship between a patient and the
  ///  related person.
  List<CodeableConcept>? get relationship => throw _privateConstructorUsedError;

  /// [name] A name associated with the person.
  List<HumanName>? get name => throw _privateConstructorUsedError;

  /// [telecom] A contact detail for the person, e.g. a telephone number or an
  ///  email address.
  List<ContactPoint>? get telecom => throw _privateConstructorUsedError;

  /// [gender] Administrative Gender - the gender that the person is considered
  ///  to have for administration and record keeping purposes.
  FhirCode? get gender => throw _privateConstructorUsedError;

  /// [genderElement] Extensions for gender
  @JsonKey(name: '_gender')
  PrimitiveElement? get genderElement => throw _privateConstructorUsedError;

  /// [birthDate] The date on which the related person was born.
  FhirDate? get birthDate => throw _privateConstructorUsedError;

  /// [birthDateElement] Extensions for birthDate
  @JsonKey(name: '_birthDate')
  PrimitiveElement? get birthDateElement => throw _privateConstructorUsedError;

  /// [address] Address where the related person can be contacted or visited.
  List<Address>? get address => throw _privateConstructorUsedError;

  /// [photo] Image of the person.
  List<Attachment>? get photo => throw _privateConstructorUsedError;

  /// [period] The period of time during which this relationship is or was
  ///  active. If there are no dates defined, then the interval is unknown.
  Period? get period => throw _privateConstructorUsedError;

  /// [communication] A language which may be used to communicate with about
  ///  the patient's health.
  List<RelatedPersonCommunication>? get communication =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelatedPersonCopyWith<RelatedPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedPersonCopyWith<$Res> {
  factory $RelatedPersonCopyWith(
          RelatedPerson value, $Res Function(RelatedPerson) then) =
      _$RelatedPersonCopyWithImpl<$Res, RelatedPerson>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.RelatedPerson)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirBoolean? active,
      @JsonKey(name: '_active') PrimitiveElement? activeElement,
      Reference patient,
      List<CodeableConcept>? relationship,
      List<HumanName>? name,
      List<ContactPoint>? telecom,
      FhirCode? gender,
      @JsonKey(name: '_gender') PrimitiveElement? genderElement,
      FhirDate? birthDate,
      @JsonKey(name: '_birthDate') PrimitiveElement? birthDateElement,
      List<Address>? address,
      List<Attachment>? photo,
      Period? period,
      List<RelatedPersonCommunication>? communication});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ReferenceCopyWith<$Res> get patient;
  $PeriodCopyWith<$Res>? get period;
}

/// @nodoc
class _$RelatedPersonCopyWithImpl<$Res, $Val extends RelatedPerson>
    implements $RelatedPersonCopyWith<$Res> {
  _$RelatedPersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? active = freezed,
    Object? activeElement = freezed,
    Object? patient = null,
    Object? relationship = freezed,
    Object? name = freezed,
    Object? telecom = freezed,
    Object? gender = freezed,
    Object? genderElement = freezed,
    Object? birthDate = freezed,
    Object? birthDateElement = freezed,
    Object? address = freezed,
    Object? photo = freezed,
    Object? period = freezed,
    Object? communication = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      activeElement: freezed == activeElement
          ? _value.activeElement
          : activeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as List<HumanName>?,
      telecom: freezed == telecom
          ? _value.telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      genderElement: freezed == genderElement
          ? _value.genderElement
          : genderElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      birthDateElement: freezed == birthDateElement
          ? _value.birthDateElement
          : birthDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      communication: freezed == communication
          ? _value.communication
          : communication // ignore: cast_nullable_to_non_nullable
              as List<RelatedPersonCommunication>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get patient {
    return $ReferenceCopyWith<$Res>(_value.patient, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get period {
    if (_value.period == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.period!, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RelatedPersonImplCopyWith<$Res>
    implements $RelatedPersonCopyWith<$Res> {
  factory _$$RelatedPersonImplCopyWith(
          _$RelatedPersonImpl value, $Res Function(_$RelatedPersonImpl) then) =
      __$$RelatedPersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.RelatedPerson)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirBoolean? active,
      @JsonKey(name: '_active') PrimitiveElement? activeElement,
      Reference patient,
      List<CodeableConcept>? relationship,
      List<HumanName>? name,
      List<ContactPoint>? telecom,
      FhirCode? gender,
      @JsonKey(name: '_gender') PrimitiveElement? genderElement,
      FhirDate? birthDate,
      @JsonKey(name: '_birthDate') PrimitiveElement? birthDateElement,
      List<Address>? address,
      List<Attachment>? photo,
      Period? period,
      List<RelatedPersonCommunication>? communication});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ReferenceCopyWith<$Res> get patient;
  @override
  $PeriodCopyWith<$Res>? get period;
}

/// @nodoc
class __$$RelatedPersonImplCopyWithImpl<$Res>
    extends _$RelatedPersonCopyWithImpl<$Res, _$RelatedPersonImpl>
    implements _$$RelatedPersonImplCopyWith<$Res> {
  __$$RelatedPersonImplCopyWithImpl(
      _$RelatedPersonImpl _value, $Res Function(_$RelatedPersonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? active = freezed,
    Object? activeElement = freezed,
    Object? patient = null,
    Object? relationship = freezed,
    Object? name = freezed,
    Object? telecom = freezed,
    Object? gender = freezed,
    Object? genderElement = freezed,
    Object? birthDate = freezed,
    Object? birthDateElement = freezed,
    Object? address = freezed,
    Object? photo = freezed,
    Object? period = freezed,
    Object? communication = freezed,
  }) {
    return _then(_$RelatedPersonImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      activeElement: freezed == activeElement
          ? _value.activeElement
          : activeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference,
      relationship: freezed == relationship
          ? _value._relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      name: freezed == name
          ? _value._name
          : name // ignore: cast_nullable_to_non_nullable
              as List<HumanName>?,
      telecom: freezed == telecom
          ? _value._telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      genderElement: freezed == genderElement
          ? _value.genderElement
          : genderElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      birthDateElement: freezed == birthDateElement
          ? _value.birthDateElement
          : birthDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      address: freezed == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
      photo: freezed == photo
          ? _value._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      communication: freezed == communication
          ? _value._communication
          : communication // ignore: cast_nullable_to_non_nullable
              as List<RelatedPersonCommunication>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RelatedPersonImpl extends _RelatedPerson {
  const _$RelatedPersonImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.RelatedPerson)
      this.resourceType = R4ResourceType.RelatedPerson,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      this.active,
      @JsonKey(name: '_active') this.activeElement,
      required this.patient,
      final List<CodeableConcept>? relationship,
      final List<HumanName>? name,
      final List<ContactPoint>? telecom,
      this.gender,
      @JsonKey(name: '_gender') this.genderElement,
      this.birthDate,
      @JsonKey(name: '_birthDate') this.birthDateElement,
      final List<Address>? address,
      final List<Attachment>? photo,
      this.period,
      final List<RelatedPersonCommunication>? communication})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _relationship = relationship,
        _name = name,
        _telecom = telecom,
        _address = address,
        _photo = photo,
        _communication = communication,
        super._();

  factory _$RelatedPersonImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelatedPersonImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.RelatedPerson)
  final R4ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  @override
  final String? id;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] Identifier for a person within a particular scope.
  final List<Identifier>? _identifier;

  /// [identifier] Identifier for a person within a particular scope.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [active] Whether this related person record is in active use.
  @override
  final FhirBoolean? active;

  /// [activeElement] Extensions for active
  @override
  @JsonKey(name: '_active')
  final PrimitiveElement? activeElement;

  /// [patient] The patient this person is related to.
  @override
  final Reference patient;

  /// [relationship] The nature of the relationship between a patient and the
  ///  related person.
  final List<CodeableConcept>? _relationship;

  /// [relationship] The nature of the relationship between a patient and the
  ///  related person.
  @override
  List<CodeableConcept>? get relationship {
    final value = _relationship;
    if (value == null) return null;
    if (_relationship is EqualUnmodifiableListView) return _relationship;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [name] A name associated with the person.
  final List<HumanName>? _name;

  /// [name] A name associated with the person.
  @override
  List<HumanName>? get name {
    final value = _name;
    if (value == null) return null;
    if (_name is EqualUnmodifiableListView) return _name;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [telecom] A contact detail for the person, e.g. a telephone number or an
  ///  email address.
  final List<ContactPoint>? _telecom;

  /// [telecom] A contact detail for the person, e.g. a telephone number or an
  ///  email address.
  @override
  List<ContactPoint>? get telecom {
    final value = _telecom;
    if (value == null) return null;
    if (_telecom is EqualUnmodifiableListView) return _telecom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [gender] Administrative Gender - the gender that the person is considered
  ///  to have for administration and record keeping purposes.
  @override
  final FhirCode? gender;

  /// [genderElement] Extensions for gender
  @override
  @JsonKey(name: '_gender')
  final PrimitiveElement? genderElement;

  /// [birthDate] The date on which the related person was born.
  @override
  final FhirDate? birthDate;

  /// [birthDateElement] Extensions for birthDate
  @override
  @JsonKey(name: '_birthDate')
  final PrimitiveElement? birthDateElement;

  /// [address] Address where the related person can be contacted or visited.
  final List<Address>? _address;

  /// [address] Address where the related person can be contacted or visited.
  @override
  List<Address>? get address {
    final value = _address;
    if (value == null) return null;
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [photo] Image of the person.
  final List<Attachment>? _photo;

  /// [photo] Image of the person.
  @override
  List<Attachment>? get photo {
    final value = _photo;
    if (value == null) return null;
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [period] The period of time during which this relationship is or was
  ///  active. If there are no dates defined, then the interval is unknown.
  @override
  final Period? period;

  /// [communication] A language which may be used to communicate with about
  ///  the patient's health.
  final List<RelatedPersonCommunication>? _communication;

  /// [communication] A language which may be used to communicate with about
  ///  the patient's health.
  @override
  List<RelatedPersonCommunication>? get communication {
    final value = _communication;
    if (value == null) return null;
    if (_communication is EqualUnmodifiableListView) return _communication;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RelatedPerson(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, active: $active, activeElement: $activeElement, patient: $patient, relationship: $relationship, name: $name, telecom: $telecom, gender: $gender, genderElement: $genderElement, birthDate: $birthDate, birthDateElement: $birthDateElement, address: $address, photo: $photo, period: $period, communication: $communication)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelatedPersonImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.activeElement, activeElement) ||
                other.activeElement == activeElement) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            const DeepCollectionEquality()
                .equals(other._relationship, _relationship) &&
            const DeepCollectionEquality().equals(other._name, _name) &&
            const DeepCollectionEquality().equals(other._telecom, _telecom) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.genderElement, genderElement) ||
                other.genderElement == genderElement) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.birthDateElement, birthDateElement) ||
                other.birthDateElement == birthDateElement) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            const DeepCollectionEquality().equals(other._photo, _photo) &&
            (identical(other.period, period) || other.period == period) &&
            const DeepCollectionEquality()
                .equals(other._communication, _communication));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        active,
        activeElement,
        patient,
        const DeepCollectionEquality().hash(_relationship),
        const DeepCollectionEquality().hash(_name),
        const DeepCollectionEquality().hash(_telecom),
        gender,
        genderElement,
        birthDate,
        birthDateElement,
        const DeepCollectionEquality().hash(_address),
        const DeepCollectionEquality().hash(_photo),
        period,
        const DeepCollectionEquality().hash(_communication)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelatedPersonImplCopyWith<_$RelatedPersonImpl> get copyWith =>
      __$$RelatedPersonImplCopyWithImpl<_$RelatedPersonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelatedPersonImplToJson(
      this,
    );
  }
}

abstract class _RelatedPerson extends RelatedPerson {
  const factory _RelatedPerson(
          {@JsonKey(unknownEnumValue: R4ResourceType.RelatedPerson)
          final R4ResourceType resourceType,
          final String? id,
          final FhirMeta? meta,
          final FhirUri? implicitRules,
          @JsonKey(name: '_implicitRules')
          final PrimitiveElement? implicitRulesElement,
          final FhirCode? language,
          @JsonKey(name: '_language') final PrimitiveElement? languageElement,
          final Narrative? text,
          final List<Resource>? contained,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final List<Identifier>? identifier,
          final FhirBoolean? active,
          @JsonKey(name: '_active') final PrimitiveElement? activeElement,
          required final Reference patient,
          final List<CodeableConcept>? relationship,
          final List<HumanName>? name,
          final List<ContactPoint>? telecom,
          final FhirCode? gender,
          @JsonKey(name: '_gender') final PrimitiveElement? genderElement,
          final FhirDate? birthDate,
          @JsonKey(name: '_birthDate') final PrimitiveElement? birthDateElement,
          final List<Address>? address,
          final List<Attachment>? photo,
          final Period? period,
          final List<RelatedPersonCommunication>? communication}) =
      _$RelatedPersonImpl;
  const _RelatedPerson._() : super._();

  factory _RelatedPerson.fromJson(Map<String, dynamic> json) =
      _$RelatedPersonImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.RelatedPerson)
  R4ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.
  FhirCode? get language;
  @override

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] Identifier for a person within a particular scope.
  List<Identifier>? get identifier;
  @override

  /// [active] Whether this related person record is in active use.
  FhirBoolean? get active;
  @override

  /// [activeElement] Extensions for active
  @JsonKey(name: '_active')
  PrimitiveElement? get activeElement;
  @override

  /// [patient] The patient this person is related to.
  Reference get patient;
  @override

  /// [relationship] The nature of the relationship between a patient and the
  ///  related person.
  List<CodeableConcept>? get relationship;
  @override

  /// [name] A name associated with the person.
  List<HumanName>? get name;
  @override

  /// [telecom] A contact detail for the person, e.g. a telephone number or an
  ///  email address.
  List<ContactPoint>? get telecom;
  @override

  /// [gender] Administrative Gender - the gender that the person is considered
  ///  to have for administration and record keeping purposes.
  FhirCode? get gender;
  @override

  /// [genderElement] Extensions for gender
  @JsonKey(name: '_gender')
  PrimitiveElement? get genderElement;
  @override

  /// [birthDate] The date on which the related person was born.
  FhirDate? get birthDate;
  @override

  /// [birthDateElement] Extensions for birthDate
  @JsonKey(name: '_birthDate')
  PrimitiveElement? get birthDateElement;
  @override

  /// [address] Address where the related person can be contacted or visited.
  List<Address>? get address;
  @override

  /// [photo] Image of the person.
  List<Attachment>? get photo;
  @override

  /// [period] The period of time during which this relationship is or was
  ///  active. If there are no dates defined, then the interval is unknown.
  Period? get period;
  @override

  /// [communication] A language which may be used to communicate with about
  ///  the patient's health.
  List<RelatedPersonCommunication>? get communication;
  @override
  @JsonKey(ignore: true)
  _$$RelatedPersonImplCopyWith<_$RelatedPersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RelatedPersonCommunication _$RelatedPersonCommunicationFromJson(
    Map<String, dynamic> json) {
  return _RelatedPersonCommunication.fromJson(json);
}

/// @nodoc
mixin _$RelatedPersonCommunication {
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

  /// [language] The ISO-639-1 alpha 2 code in lower case for the language,
  /// optionally followed by a hyphen and the ISO-3166-1 alpha 2 code for the
  /// region in upper case; e.g. "en" for English, or "en-US" for American
  ///  English versus "en-EN" for England English.
  CodeableConcept get language => throw _privateConstructorUsedError;

  /// [preferred] Indicates whether or not the patient prefers this language
  ///  (over other languages he masters up a certain level).
  FhirBoolean? get preferred => throw _privateConstructorUsedError;

  /// [preferredElement] Extensions for preferred
  @JsonKey(name: '_preferred')
  PrimitiveElement? get preferredElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelatedPersonCommunicationCopyWith<RelatedPersonCommunication>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedPersonCommunicationCopyWith<$Res> {
  factory $RelatedPersonCommunicationCopyWith(RelatedPersonCommunication value,
          $Res Function(RelatedPersonCommunication) then) =
      _$RelatedPersonCommunicationCopyWithImpl<$Res,
          RelatedPersonCommunication>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept language,
      FhirBoolean? preferred,
      @JsonKey(name: '_preferred') PrimitiveElement? preferredElement});

  $CodeableConceptCopyWith<$Res> get language;
}

/// @nodoc
class _$RelatedPersonCommunicationCopyWithImpl<$Res,
        $Val extends RelatedPersonCommunication>
    implements $RelatedPersonCommunicationCopyWith<$Res> {
  _$RelatedPersonCommunicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? language = null,
    Object? preferred = freezed,
    Object? preferredElement = freezed,
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
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      preferred: freezed == preferred
          ? _value.preferred
          : preferred // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      preferredElement: freezed == preferredElement
          ? _value.preferredElement
          : preferredElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get language {
    return $CodeableConceptCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RelatedPersonCommunicationImplCopyWith<$Res>
    implements $RelatedPersonCommunicationCopyWith<$Res> {
  factory _$$RelatedPersonCommunicationImplCopyWith(
          _$RelatedPersonCommunicationImpl value,
          $Res Function(_$RelatedPersonCommunicationImpl) then) =
      __$$RelatedPersonCommunicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept language,
      FhirBoolean? preferred,
      @JsonKey(name: '_preferred') PrimitiveElement? preferredElement});

  @override
  $CodeableConceptCopyWith<$Res> get language;
}

/// @nodoc
class __$$RelatedPersonCommunicationImplCopyWithImpl<$Res>
    extends _$RelatedPersonCommunicationCopyWithImpl<$Res,
        _$RelatedPersonCommunicationImpl>
    implements _$$RelatedPersonCommunicationImplCopyWith<$Res> {
  __$$RelatedPersonCommunicationImplCopyWithImpl(
      _$RelatedPersonCommunicationImpl _value,
      $Res Function(_$RelatedPersonCommunicationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? language = null,
    Object? preferred = freezed,
    Object? preferredElement = freezed,
  }) {
    return _then(_$RelatedPersonCommunicationImpl(
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
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      preferred: freezed == preferred
          ? _value.preferred
          : preferred // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      preferredElement: freezed == preferredElement
          ? _value.preferredElement
          : preferredElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RelatedPersonCommunicationImpl extends _RelatedPersonCommunication {
  const _$RelatedPersonCommunicationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.language,
      this.preferred,
      @JsonKey(name: '_preferred') this.preferredElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$RelatedPersonCommunicationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RelatedPersonCommunicationImplFromJson(json);

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

  /// [language] The ISO-639-1 alpha 2 code in lower case for the language,
  /// optionally followed by a hyphen and the ISO-3166-1 alpha 2 code for the
  /// region in upper case; e.g. "en" for English, or "en-US" for American
  ///  English versus "en-EN" for England English.
  @override
  final CodeableConcept language;

  /// [preferred] Indicates whether or not the patient prefers this language
  ///  (over other languages he masters up a certain level).
  @override
  final FhirBoolean? preferred;

  /// [preferredElement] Extensions for preferred
  @override
  @JsonKey(name: '_preferred')
  final PrimitiveElement? preferredElement;

  @override
  String toString() {
    return 'RelatedPersonCommunication(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, language: $language, preferred: $preferred, preferredElement: $preferredElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelatedPersonCommunicationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.preferred, preferred) ||
                other.preferred == preferred) &&
            (identical(other.preferredElement, preferredElement) ||
                other.preferredElement == preferredElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      language,
      preferred,
      preferredElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelatedPersonCommunicationImplCopyWith<_$RelatedPersonCommunicationImpl>
      get copyWith => __$$RelatedPersonCommunicationImplCopyWithImpl<
          _$RelatedPersonCommunicationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelatedPersonCommunicationImplToJson(
      this,
    );
  }
}

abstract class _RelatedPersonCommunication extends RelatedPersonCommunication {
  const factory _RelatedPersonCommunication(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept language,
          final FhirBoolean? preferred,
          @JsonKey(name: '_preferred')
          final PrimitiveElement? preferredElement}) =
      _$RelatedPersonCommunicationImpl;
  const _RelatedPersonCommunication._() : super._();

  factory _RelatedPersonCommunication.fromJson(Map<String, dynamic> json) =
      _$RelatedPersonCommunicationImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [language] The ISO-639-1 alpha 2 code in lower case for the language,
  /// optionally followed by a hyphen and the ISO-3166-1 alpha 2 code for the
  /// region in upper case; e.g. "en" for English, or "en-US" for American
  ///  English versus "en-EN" for England English.
  CodeableConcept get language;
  @override

  /// [preferred] Indicates whether or not the patient prefers this language
  ///  (over other languages he masters up a certain level).
  FhirBoolean? get preferred;
  @override

  /// [preferredElement] Extensions for preferred
  @JsonKey(name: '_preferred')
  PrimitiveElement? get preferredElement;
  @override
  @JsonKey(ignore: true)
  _$$RelatedPersonCommunicationImplCopyWith<_$RelatedPersonCommunicationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
