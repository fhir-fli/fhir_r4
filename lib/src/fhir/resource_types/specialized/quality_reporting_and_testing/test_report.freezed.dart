// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestReport _$TestReportFromJson(Map<String, dynamic> json) {
  return _TestReport.fromJson(json);
}

/// @nodoc
mixin _$TestReport {
  @JsonKey(unknownEnumValue: R4ResourceType.TestReport)
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

  /// [identifier] Identifier for the TestScript assigned for external purposes
  ///  outside the context of FHIR.
  Identifier? get identifier => throw _privateConstructorUsedError;

  /// [name] A free text natural language name identifying the executed
  ///  TestScript.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [status] The current state of this test report.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [testScript] Ideally this is an absolute URL that is used to identify the
  /// version-specific TestScript that was executed, matching the
  ///  `TestScript.url`.
  Reference get testScript => throw _privateConstructorUsedError;

  /// [result] The overall result from the execution of the TestScript.
  FhirCode? get result => throw _privateConstructorUsedError;

  /// [resultElement] Extensions for result
  @JsonKey(name: '_result')
  PrimitiveElement? get resultElement => throw _privateConstructorUsedError;

  /// [score] The final score (percentage of tests passed) resulting from the
  ///  execution of the TestScript.
  FhirDecimal? get score => throw _privateConstructorUsedError;

  /// [scoreElement] Extensions for score
  @JsonKey(name: '_score')
  PrimitiveElement? get scoreElement => throw _privateConstructorUsedError;

  /// [tester] Name of the tester producing this report (Organization or
  ///  individual).
  String? get tester => throw _privateConstructorUsedError;

  /// [testerElement] Extensions for tester
  @JsonKey(name: '_tester')
  PrimitiveElement? get testerElement => throw _privateConstructorUsedError;

  /// [issued] When the TestScript was executed and this TestReport was
  ///  generated.
  FhirDateTime? get issued => throw _privateConstructorUsedError;

  /// [issuedElement] Extensions for issued
  @JsonKey(name: '_issued')
  PrimitiveElement? get issuedElement => throw _privateConstructorUsedError;

  /// [participant] A participant in the test execution, either the execution
  ///  engine, a client, or a server.
  List<TestReportParticipant>? get participant =>
      throw _privateConstructorUsedError;

  /// [setup] The results of the series of required setup operations before the
  ///  tests were executed.
  TestReportSetup? get setup => throw _privateConstructorUsedError;

  /// [test] A test executed from the test script.
  List<TestReportTest>? get test => throw _privateConstructorUsedError;

  /// [teardown] The results of the series of operations required to clean up
  ///  after all the tests were executed (successfully or otherwise).
  TestReportTeardown? get teardown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestReportCopyWith<TestReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestReportCopyWith<$Res> {
  factory $TestReportCopyWith(
          TestReport value, $Res Function(TestReport) then) =
      _$TestReportCopyWithImpl<$Res, TestReport>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.TestReport)
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
      Identifier? identifier,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      Reference testScript,
      FhirCode? result,
      @JsonKey(name: '_result') PrimitiveElement? resultElement,
      FhirDecimal? score,
      @JsonKey(name: '_score') PrimitiveElement? scoreElement,
      String? tester,
      @JsonKey(name: '_tester') PrimitiveElement? testerElement,
      FhirDateTime? issued,
      @JsonKey(name: '_issued') PrimitiveElement? issuedElement,
      List<TestReportParticipant>? participant,
      TestReportSetup? setup,
      List<TestReportTest>? test,
      TestReportTeardown? teardown});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $IdentifierCopyWith<$Res>? get identifier;
  $ReferenceCopyWith<$Res> get testScript;
  $TestReportSetupCopyWith<$Res>? get setup;
  $TestReportTeardownCopyWith<$Res>? get teardown;
}

/// @nodoc
class _$TestReportCopyWithImpl<$Res, $Val extends TestReport>
    implements $TestReportCopyWith<$Res> {
  _$TestReportCopyWithImpl(this._value, this._then);

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
    Object? nameElement = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? testScript = null,
    Object? result = freezed,
    Object? resultElement = freezed,
    Object? score = freezed,
    Object? scoreElement = freezed,
    Object? tester = freezed,
    Object? testerElement = freezed,
    Object? issued = freezed,
    Object? issuedElement = freezed,
    Object? participant = freezed,
    Object? setup = freezed,
    Object? test = freezed,
    Object? teardown = freezed,
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
              as Identifier?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      testScript: null == testScript
          ? _value.testScript
          : testScript // ignore: cast_nullable_to_non_nullable
              as Reference,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      resultElement: freezed == resultElement
          ? _value.resultElement
          : resultElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      scoreElement: freezed == scoreElement
          ? _value.scoreElement
          : scoreElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      tester: freezed == tester
          ? _value.tester
          : tester // ignore: cast_nullable_to_non_nullable
              as String?,
      testerElement: freezed == testerElement
          ? _value.testerElement
          : testerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      issuedElement: freezed == issuedElement
          ? _value.issuedElement
          : issuedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      participant: freezed == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as List<TestReportParticipant>?,
      setup: freezed == setup
          ? _value.setup
          : setup // ignore: cast_nullable_to_non_nullable
              as TestReportSetup?,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as List<TestReportTest>?,
      teardown: freezed == teardown
          ? _value.teardown
          : teardown // ignore: cast_nullable_to_non_nullable
              as TestReportTeardown?,
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
  $IdentifierCopyWith<$Res>? get identifier {
    if (_value.identifier == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.identifier!, (value) {
      return _then(_value.copyWith(identifier: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get testScript {
    return $ReferenceCopyWith<$Res>(_value.testScript, (value) {
      return _then(_value.copyWith(testScript: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TestReportSetupCopyWith<$Res>? get setup {
    if (_value.setup == null) {
      return null;
    }

    return $TestReportSetupCopyWith<$Res>(_value.setup!, (value) {
      return _then(_value.copyWith(setup: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TestReportTeardownCopyWith<$Res>? get teardown {
    if (_value.teardown == null) {
      return null;
    }

    return $TestReportTeardownCopyWith<$Res>(_value.teardown!, (value) {
      return _then(_value.copyWith(teardown: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TestReportImplCopyWith<$Res>
    implements $TestReportCopyWith<$Res> {
  factory _$$TestReportImplCopyWith(
          _$TestReportImpl value, $Res Function(_$TestReportImpl) then) =
      __$$TestReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.TestReport)
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
      Identifier? identifier,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      Reference testScript,
      FhirCode? result,
      @JsonKey(name: '_result') PrimitiveElement? resultElement,
      FhirDecimal? score,
      @JsonKey(name: '_score') PrimitiveElement? scoreElement,
      String? tester,
      @JsonKey(name: '_tester') PrimitiveElement? testerElement,
      FhirDateTime? issued,
      @JsonKey(name: '_issued') PrimitiveElement? issuedElement,
      List<TestReportParticipant>? participant,
      TestReportSetup? setup,
      List<TestReportTest>? test,
      TestReportTeardown? teardown});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $IdentifierCopyWith<$Res>? get identifier;
  @override
  $ReferenceCopyWith<$Res> get testScript;
  @override
  $TestReportSetupCopyWith<$Res>? get setup;
  @override
  $TestReportTeardownCopyWith<$Res>? get teardown;
}

/// @nodoc
class __$$TestReportImplCopyWithImpl<$Res>
    extends _$TestReportCopyWithImpl<$Res, _$TestReportImpl>
    implements _$$TestReportImplCopyWith<$Res> {
  __$$TestReportImplCopyWithImpl(
      _$TestReportImpl _value, $Res Function(_$TestReportImpl) _then)
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
    Object? nameElement = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? testScript = null,
    Object? result = freezed,
    Object? resultElement = freezed,
    Object? score = freezed,
    Object? scoreElement = freezed,
    Object? tester = freezed,
    Object? testerElement = freezed,
    Object? issued = freezed,
    Object? issuedElement = freezed,
    Object? participant = freezed,
    Object? setup = freezed,
    Object? test = freezed,
    Object? teardown = freezed,
  }) {
    return _then(_$TestReportImpl(
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
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      testScript: null == testScript
          ? _value.testScript
          : testScript // ignore: cast_nullable_to_non_nullable
              as Reference,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      resultElement: freezed == resultElement
          ? _value.resultElement
          : resultElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      scoreElement: freezed == scoreElement
          ? _value.scoreElement
          : scoreElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      tester: freezed == tester
          ? _value.tester
          : tester // ignore: cast_nullable_to_non_nullable
              as String?,
      testerElement: freezed == testerElement
          ? _value.testerElement
          : testerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      issuedElement: freezed == issuedElement
          ? _value.issuedElement
          : issuedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      participant: freezed == participant
          ? _value._participant
          : participant // ignore: cast_nullable_to_non_nullable
              as List<TestReportParticipant>?,
      setup: freezed == setup
          ? _value.setup
          : setup // ignore: cast_nullable_to_non_nullable
              as TestReportSetup?,
      test: freezed == test
          ? _value._test
          : test // ignore: cast_nullable_to_non_nullable
              as List<TestReportTest>?,
      teardown: freezed == teardown
          ? _value.teardown
          : teardown // ignore: cast_nullable_to_non_nullable
              as TestReportTeardown?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestReportImpl extends _TestReport {
  const _$TestReportImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.TestReport)
      this.resourceType = R4ResourceType.TestReport,
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
      this.identifier,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      required this.testScript,
      this.result,
      @JsonKey(name: '_result') this.resultElement,
      this.score,
      @JsonKey(name: '_score') this.scoreElement,
      this.tester,
      @JsonKey(name: '_tester') this.testerElement,
      this.issued,
      @JsonKey(name: '_issued') this.issuedElement,
      final List<TestReportParticipant>? participant,
      this.setup,
      final List<TestReportTest>? test,
      this.teardown})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _participant = participant,
        _test = test,
        super._();

  factory _$TestReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestReportImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.TestReport)
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

  /// [identifier] Identifier for the TestScript assigned for external purposes
  ///  outside the context of FHIR.
  @override
  final Identifier? identifier;

  /// [name] A free text natural language name identifying the executed
  ///  TestScript.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [status] The current state of this test report.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [testScript] Ideally this is an absolute URL that is used to identify the
  /// version-specific TestScript that was executed, matching the
  ///  `TestScript.url`.
  @override
  final Reference testScript;

  /// [result] The overall result from the execution of the TestScript.
  @override
  final FhirCode? result;

  /// [resultElement] Extensions for result
  @override
  @JsonKey(name: '_result')
  final PrimitiveElement? resultElement;

  /// [score] The final score (percentage of tests passed) resulting from the
  ///  execution of the TestScript.
  @override
  final FhirDecimal? score;

  /// [scoreElement] Extensions for score
  @override
  @JsonKey(name: '_score')
  final PrimitiveElement? scoreElement;

  /// [tester] Name of the tester producing this report (Organization or
  ///  individual).
  @override
  final String? tester;

  /// [testerElement] Extensions for tester
  @override
  @JsonKey(name: '_tester')
  final PrimitiveElement? testerElement;

  /// [issued] When the TestScript was executed and this TestReport was
  ///  generated.
  @override
  final FhirDateTime? issued;

  /// [issuedElement] Extensions for issued
  @override
  @JsonKey(name: '_issued')
  final PrimitiveElement? issuedElement;

  /// [participant] A participant in the test execution, either the execution
  ///  engine, a client, or a server.
  final List<TestReportParticipant>? _participant;

  /// [participant] A participant in the test execution, either the execution
  ///  engine, a client, or a server.
  @override
  List<TestReportParticipant>? get participant {
    final value = _participant;
    if (value == null) return null;
    if (_participant is EqualUnmodifiableListView) return _participant;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [setup] The results of the series of required setup operations before the
  ///  tests were executed.
  @override
  final TestReportSetup? setup;

  /// [test] A test executed from the test script.
  final List<TestReportTest>? _test;

  /// [test] A test executed from the test script.
  @override
  List<TestReportTest>? get test {
    final value = _test;
    if (value == null) return null;
    if (_test is EqualUnmodifiableListView) return _test;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [teardown] The results of the series of operations required to clean up
  ///  after all the tests were executed (successfully or otherwise).
  @override
  final TestReportTeardown? teardown;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestReportImpl &&
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
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.testScript, testScript) ||
                other.testScript == testScript) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.resultElement, resultElement) ||
                other.resultElement == resultElement) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.scoreElement, scoreElement) ||
                other.scoreElement == scoreElement) &&
            (identical(other.tester, tester) || other.tester == tester) &&
            (identical(other.testerElement, testerElement) ||
                other.testerElement == testerElement) &&
            (identical(other.issued, issued) || other.issued == issued) &&
            (identical(other.issuedElement, issuedElement) ||
                other.issuedElement == issuedElement) &&
            const DeepCollectionEquality()
                .equals(other._participant, _participant) &&
            (identical(other.setup, setup) || other.setup == setup) &&
            const DeepCollectionEquality().equals(other._test, _test) &&
            (identical(other.teardown, teardown) ||
                other.teardown == teardown));
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
        identifier,
        name,
        nameElement,
        status,
        statusElement,
        testScript,
        result,
        resultElement,
        score,
        scoreElement,
        tester,
        testerElement,
        issued,
        issuedElement,
        const DeepCollectionEquality().hash(_participant),
        setup,
        const DeepCollectionEquality().hash(_test),
        teardown
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestReportImplCopyWith<_$TestReportImpl> get copyWith =>
      __$$TestReportImplCopyWithImpl<_$TestReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestReportImplToJson(
      this,
    );
  }
}

abstract class _TestReport extends TestReport {
  const factory _TestReport(
      {@JsonKey(unknownEnumValue: R4ResourceType.TestReport)
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
      final Identifier? identifier,
      final String? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      required final Reference testScript,
      final FhirCode? result,
      @JsonKey(name: '_result') final PrimitiveElement? resultElement,
      final FhirDecimal? score,
      @JsonKey(name: '_score') final PrimitiveElement? scoreElement,
      final String? tester,
      @JsonKey(name: '_tester') final PrimitiveElement? testerElement,
      final FhirDateTime? issued,
      @JsonKey(name: '_issued') final PrimitiveElement? issuedElement,
      final List<TestReportParticipant>? participant,
      final TestReportSetup? setup,
      final List<TestReportTest>? test,
      final TestReportTeardown? teardown}) = _$TestReportImpl;
  const _TestReport._() : super._();

  factory _TestReport.fromJson(Map<String, dynamic> json) =
      _$TestReportImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.TestReport)
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

  /// [identifier] Identifier for the TestScript assigned for external purposes
  ///  outside the context of FHIR.
  Identifier? get identifier;
  @override

  /// [name] A free text natural language name identifying the executed
  ///  TestScript.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [status] The current state of this test report.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [testScript] Ideally this is an absolute URL that is used to identify the
  /// version-specific TestScript that was executed, matching the
  ///  `TestScript.url`.
  Reference get testScript;
  @override

  /// [result] The overall result from the execution of the TestScript.
  FhirCode? get result;
  @override

  /// [resultElement] Extensions for result
  @JsonKey(name: '_result')
  PrimitiveElement? get resultElement;
  @override

  /// [score] The final score (percentage of tests passed) resulting from the
  ///  execution of the TestScript.
  FhirDecimal? get score;
  @override

  /// [scoreElement] Extensions for score
  @JsonKey(name: '_score')
  PrimitiveElement? get scoreElement;
  @override

  /// [tester] Name of the tester producing this report (Organization or
  ///  individual).
  String? get tester;
  @override

  /// [testerElement] Extensions for tester
  @JsonKey(name: '_tester')
  PrimitiveElement? get testerElement;
  @override

  /// [issued] When the TestScript was executed and this TestReport was
  ///  generated.
  FhirDateTime? get issued;
  @override

  /// [issuedElement] Extensions for issued
  @JsonKey(name: '_issued')
  PrimitiveElement? get issuedElement;
  @override

  /// [participant] A participant in the test execution, either the execution
  ///  engine, a client, or a server.
  List<TestReportParticipant>? get participant;
  @override

  /// [setup] The results of the series of required setup operations before the
  ///  tests were executed.
  TestReportSetup? get setup;
  @override

  /// [test] A test executed from the test script.
  List<TestReportTest>? get test;
  @override

  /// [teardown] The results of the series of operations required to clean up
  ///  after all the tests were executed (successfully or otherwise).
  TestReportTeardown? get teardown;
  @override
  @JsonKey(ignore: true)
  _$$TestReportImplCopyWith<_$TestReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TestReportParticipant _$TestReportParticipantFromJson(
    Map<String, dynamic> json) {
  return _TestReportParticipant.fromJson(json);
}

/// @nodoc
mixin _$TestReportParticipant {
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

  /// [type] The type of participant.
  FhirCode? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [uri] The uri of the participant. An absolute URL is preferred.
  FhirUri? get uri => throw _privateConstructorUsedError;

  /// [uriElement] Extensions for uri
  @JsonKey(name: '_uri')
  PrimitiveElement? get uriElement => throw _privateConstructorUsedError;

  /// [display] The display name of the participant.
  String? get display => throw _privateConstructorUsedError;

  /// [displayElement] Extensions for display
  @JsonKey(name: '_display')
  PrimitiveElement? get displayElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestReportParticipantCopyWith<TestReportParticipant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestReportParticipantCopyWith<$Res> {
  factory $TestReportParticipantCopyWith(TestReportParticipant value,
          $Res Function(TestReportParticipant) then) =
      _$TestReportParticipantCopyWithImpl<$Res, TestReportParticipant>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirUri? uri,
      @JsonKey(name: '_uri') PrimitiveElement? uriElement,
      String? display,
      @JsonKey(name: '_display') PrimitiveElement? displayElement});
}

/// @nodoc
class _$TestReportParticipantCopyWithImpl<$Res,
        $Val extends TestReportParticipant>
    implements $TestReportParticipantCopyWith<$Res> {
  _$TestReportParticipantCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? uri = freezed,
    Object? uriElement = freezed,
    Object? display = freezed,
    Object? displayElement = freezed,
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
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      uriElement: freezed == uriElement
          ? _value.uriElement
          : uriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      displayElement: freezed == displayElement
          ? _value.displayElement
          : displayElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestReportParticipantImplCopyWith<$Res>
    implements $TestReportParticipantCopyWith<$Res> {
  factory _$$TestReportParticipantImplCopyWith(
          _$TestReportParticipantImpl value,
          $Res Function(_$TestReportParticipantImpl) then) =
      __$$TestReportParticipantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirUri? uri,
      @JsonKey(name: '_uri') PrimitiveElement? uriElement,
      String? display,
      @JsonKey(name: '_display') PrimitiveElement? displayElement});
}

/// @nodoc
class __$$TestReportParticipantImplCopyWithImpl<$Res>
    extends _$TestReportParticipantCopyWithImpl<$Res,
        _$TestReportParticipantImpl>
    implements _$$TestReportParticipantImplCopyWith<$Res> {
  __$$TestReportParticipantImplCopyWithImpl(_$TestReportParticipantImpl _value,
      $Res Function(_$TestReportParticipantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? uri = freezed,
    Object? uriElement = freezed,
    Object? display = freezed,
    Object? displayElement = freezed,
  }) {
    return _then(_$TestReportParticipantImpl(
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
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      uriElement: freezed == uriElement
          ? _value.uriElement
          : uriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      displayElement: freezed == displayElement
          ? _value.displayElement
          : displayElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestReportParticipantImpl extends _TestReportParticipant {
  const _$TestReportParticipantImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.uri,
      @JsonKey(name: '_uri') this.uriElement,
      this.display,
      @JsonKey(name: '_display') this.displayElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$TestReportParticipantImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestReportParticipantImplFromJson(json);

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

  /// [type] The type of participant.
  @override
  final FhirCode? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [uri] The uri of the participant. An absolute URL is preferred.
  @override
  final FhirUri? uri;

  /// [uriElement] Extensions for uri
  @override
  @JsonKey(name: '_uri')
  final PrimitiveElement? uriElement;

  /// [display] The display name of the participant.
  @override
  final String? display;

  /// [displayElement] Extensions for display
  @override
  @JsonKey(name: '_display')
  final PrimitiveElement? displayElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestReportParticipantImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.uriElement, uriElement) ||
                other.uriElement == uriElement) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.displayElement, displayElement) ||
                other.displayElement == displayElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      typeElement,
      uri,
      uriElement,
      display,
      displayElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestReportParticipantImplCopyWith<_$TestReportParticipantImpl>
      get copyWith => __$$TestReportParticipantImplCopyWithImpl<
          _$TestReportParticipantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestReportParticipantImplToJson(
      this,
    );
  }
}

abstract class _TestReportParticipant extends TestReportParticipant {
  const factory _TestReportParticipant(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? type,
          @JsonKey(name: '_type') final PrimitiveElement? typeElement,
          final FhirUri? uri,
          @JsonKey(name: '_uri') final PrimitiveElement? uriElement,
          final String? display,
          @JsonKey(name: '_display') final PrimitiveElement? displayElement}) =
      _$TestReportParticipantImpl;
  const _TestReportParticipant._() : super._();

  factory _TestReportParticipant.fromJson(Map<String, dynamic> json) =
      _$TestReportParticipantImpl.fromJson;

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

  /// [type] The type of participant.
  FhirCode? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [uri] The uri of the participant. An absolute URL is preferred.
  FhirUri? get uri;
  @override

  /// [uriElement] Extensions for uri
  @JsonKey(name: '_uri')
  PrimitiveElement? get uriElement;
  @override

  /// [display] The display name of the participant.
  String? get display;
  @override

  /// [displayElement] Extensions for display
  @JsonKey(name: '_display')
  PrimitiveElement? get displayElement;
  @override
  @JsonKey(ignore: true)
  _$$TestReportParticipantImplCopyWith<_$TestReportParticipantImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TestReportSetup _$TestReportSetupFromJson(Map<String, dynamic> json) {
  return _TestReportSetup.fromJson(json);
}

/// @nodoc
mixin _$TestReportSetup {
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

  /// [action] Action would contain either an operation or an assertion.
  List<TestReportAction> get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestReportSetupCopyWith<TestReportSetup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestReportSetupCopyWith<$Res> {
  factory $TestReportSetupCopyWith(
          TestReportSetup value, $Res Function(TestReportSetup) then) =
      _$TestReportSetupCopyWithImpl<$Res, TestReportSetup>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<TestReportAction> action});
}

/// @nodoc
class _$TestReportSetupCopyWithImpl<$Res, $Val extends TestReportSetup>
    implements $TestReportSetupCopyWith<$Res> {
  _$TestReportSetupCopyWithImpl(this._value, this._then);

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
    Object? action = null,
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
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as List<TestReportAction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestReportSetupImplCopyWith<$Res>
    implements $TestReportSetupCopyWith<$Res> {
  factory _$$TestReportSetupImplCopyWith(_$TestReportSetupImpl value,
          $Res Function(_$TestReportSetupImpl) then) =
      __$$TestReportSetupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<TestReportAction> action});
}

/// @nodoc
class __$$TestReportSetupImplCopyWithImpl<$Res>
    extends _$TestReportSetupCopyWithImpl<$Res, _$TestReportSetupImpl>
    implements _$$TestReportSetupImplCopyWith<$Res> {
  __$$TestReportSetupImplCopyWithImpl(
      _$TestReportSetupImpl _value, $Res Function(_$TestReportSetupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? action = null,
  }) {
    return _then(_$TestReportSetupImpl(
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
      action: null == action
          ? _value._action
          : action // ignore: cast_nullable_to_non_nullable
              as List<TestReportAction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestReportSetupImpl extends _TestReportSetup {
  const _$TestReportSetupImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final List<TestReportAction> action})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _action = action,
        super._();

  factory _$TestReportSetupImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestReportSetupImplFromJson(json);

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

  /// [action] Action would contain either an operation or an assertion.
  final List<TestReportAction> _action;

  /// [action] Action would contain either an operation or an assertion.
  @override
  List<TestReportAction> get action {
    if (_action is EqualUnmodifiableListView) return _action;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_action);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestReportSetupImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other._action, _action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_action));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestReportSetupImplCopyWith<_$TestReportSetupImpl> get copyWith =>
      __$$TestReportSetupImplCopyWithImpl<_$TestReportSetupImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestReportSetupImplToJson(
      this,
    );
  }
}

abstract class _TestReportSetup extends TestReportSetup {
  const factory _TestReportSetup(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final List<TestReportAction> action}) = _$TestReportSetupImpl;
  const _TestReportSetup._() : super._();

  factory _TestReportSetup.fromJson(Map<String, dynamic> json) =
      _$TestReportSetupImpl.fromJson;

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

  /// [action] Action would contain either an operation or an assertion.
  List<TestReportAction> get action;
  @override
  @JsonKey(ignore: true)
  _$$TestReportSetupImplCopyWith<_$TestReportSetupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TestReportAction _$TestReportActionFromJson(Map<String, dynamic> json) {
  return _TestReportAction.fromJson(json);
}

/// @nodoc
mixin _$TestReportAction {
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

  /// [operation] The operation performed.
  TestReportOperation? get operation => throw _privateConstructorUsedError;

  /// [assert] The results of the assertion performed on the previous
  ///  operations.
  @JsonKey(name: 'assert')
  TestReportAssert? get assert_ => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestReportActionCopyWith<TestReportAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestReportActionCopyWith<$Res> {
  factory $TestReportActionCopyWith(
          TestReportAction value, $Res Function(TestReportAction) then) =
      _$TestReportActionCopyWithImpl<$Res, TestReportAction>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      TestReportOperation? operation,
      @JsonKey(name: 'assert') TestReportAssert? assert_});

  $TestReportOperationCopyWith<$Res>? get operation;
  $TestReportAssertCopyWith<$Res>? get assert_;
}

/// @nodoc
class _$TestReportActionCopyWithImpl<$Res, $Val extends TestReportAction>
    implements $TestReportActionCopyWith<$Res> {
  _$TestReportActionCopyWithImpl(this._value, this._then);

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
    Object? operation = freezed,
    Object? assert_ = freezed,
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
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as TestReportOperation?,
      assert_: freezed == assert_
          ? _value.assert_
          : assert_ // ignore: cast_nullable_to_non_nullable
              as TestReportAssert?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TestReportOperationCopyWith<$Res>? get operation {
    if (_value.operation == null) {
      return null;
    }

    return $TestReportOperationCopyWith<$Res>(_value.operation!, (value) {
      return _then(_value.copyWith(operation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TestReportAssertCopyWith<$Res>? get assert_ {
    if (_value.assert_ == null) {
      return null;
    }

    return $TestReportAssertCopyWith<$Res>(_value.assert_!, (value) {
      return _then(_value.copyWith(assert_: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TestReportActionImplCopyWith<$Res>
    implements $TestReportActionCopyWith<$Res> {
  factory _$$TestReportActionImplCopyWith(_$TestReportActionImpl value,
          $Res Function(_$TestReportActionImpl) then) =
      __$$TestReportActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      TestReportOperation? operation,
      @JsonKey(name: 'assert') TestReportAssert? assert_});

  @override
  $TestReportOperationCopyWith<$Res>? get operation;
  @override
  $TestReportAssertCopyWith<$Res>? get assert_;
}

/// @nodoc
class __$$TestReportActionImplCopyWithImpl<$Res>
    extends _$TestReportActionCopyWithImpl<$Res, _$TestReportActionImpl>
    implements _$$TestReportActionImplCopyWith<$Res> {
  __$$TestReportActionImplCopyWithImpl(_$TestReportActionImpl _value,
      $Res Function(_$TestReportActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? operation = freezed,
    Object? assert_ = freezed,
  }) {
    return _then(_$TestReportActionImpl(
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
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as TestReportOperation?,
      assert_: freezed == assert_
          ? _value.assert_
          : assert_ // ignore: cast_nullable_to_non_nullable
              as TestReportAssert?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestReportActionImpl extends _TestReportAction {
  const _$TestReportActionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.operation,
      @JsonKey(name: 'assert') this.assert_})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$TestReportActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestReportActionImplFromJson(json);

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

  /// [operation] The operation performed.
  @override
  final TestReportOperation? operation;

  /// [assert] The results of the assertion performed on the previous
  ///  operations.
  @override
  @JsonKey(name: 'assert')
  final TestReportAssert? assert_;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestReportActionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            (identical(other.assert_, assert_) || other.assert_ == assert_));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      operation,
      assert_);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestReportActionImplCopyWith<_$TestReportActionImpl> get copyWith =>
      __$$TestReportActionImplCopyWithImpl<_$TestReportActionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestReportActionImplToJson(
      this,
    );
  }
}

abstract class _TestReportAction extends TestReportAction {
  const factory _TestReportAction(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final TestReportOperation? operation,
          @JsonKey(name: 'assert') final TestReportAssert? assert_}) =
      _$TestReportActionImpl;
  const _TestReportAction._() : super._();

  factory _TestReportAction.fromJson(Map<String, dynamic> json) =
      _$TestReportActionImpl.fromJson;

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

  /// [operation] The operation performed.
  TestReportOperation? get operation;
  @override

  /// [assert] The results of the assertion performed on the previous
  ///  operations.
  @JsonKey(name: 'assert')
  TestReportAssert? get assert_;
  @override
  @JsonKey(ignore: true)
  _$$TestReportActionImplCopyWith<_$TestReportActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TestReportOperation _$TestReportOperationFromJson(Map<String, dynamic> json) {
  return _TestReportOperation.fromJson(json);
}

/// @nodoc
mixin _$TestReportOperation {
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

  /// [result] The result of this operation.
  FhirCode? get result => throw _privateConstructorUsedError;

  /// [resultElement] Extensions for result
  @JsonKey(name: '_result')
  PrimitiveElement? get resultElement => throw _privateConstructorUsedError;

  /// [message] An explanatory message associated with the result.
  FhirMarkdown? get message => throw _privateConstructorUsedError;

  /// [messageElement] Extensions for message
  @JsonKey(name: '_message')
  PrimitiveElement? get messageElement => throw _privateConstructorUsedError;

  /// [detail] A link to further details on the result.
  FhirUri? get detail => throw _privateConstructorUsedError;

  /// [detailElement] Extensions for detail
  @JsonKey(name: '_detail')
  PrimitiveElement? get detailElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestReportOperationCopyWith<TestReportOperation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestReportOperationCopyWith<$Res> {
  factory $TestReportOperationCopyWith(
          TestReportOperation value, $Res Function(TestReportOperation) then) =
      _$TestReportOperationCopyWithImpl<$Res, TestReportOperation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? result,
      @JsonKey(name: '_result') PrimitiveElement? resultElement,
      FhirMarkdown? message,
      @JsonKey(name: '_message') PrimitiveElement? messageElement,
      FhirUri? detail,
      @JsonKey(name: '_detail') PrimitiveElement? detailElement});
}

/// @nodoc
class _$TestReportOperationCopyWithImpl<$Res, $Val extends TestReportOperation>
    implements $TestReportOperationCopyWith<$Res> {
  _$TestReportOperationCopyWithImpl(this._value, this._then);

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
    Object? result = freezed,
    Object? resultElement = freezed,
    Object? message = freezed,
    Object? messageElement = freezed,
    Object? detail = freezed,
    Object? detailElement = freezed,
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
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      resultElement: freezed == resultElement
          ? _value.resultElement
          : resultElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      messageElement: freezed == messageElement
          ? _value.messageElement
          : messageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      detailElement: freezed == detailElement
          ? _value.detailElement
          : detailElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestReportOperationImplCopyWith<$Res>
    implements $TestReportOperationCopyWith<$Res> {
  factory _$$TestReportOperationImplCopyWith(_$TestReportOperationImpl value,
          $Res Function(_$TestReportOperationImpl) then) =
      __$$TestReportOperationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? result,
      @JsonKey(name: '_result') PrimitiveElement? resultElement,
      FhirMarkdown? message,
      @JsonKey(name: '_message') PrimitiveElement? messageElement,
      FhirUri? detail,
      @JsonKey(name: '_detail') PrimitiveElement? detailElement});
}

/// @nodoc
class __$$TestReportOperationImplCopyWithImpl<$Res>
    extends _$TestReportOperationCopyWithImpl<$Res, _$TestReportOperationImpl>
    implements _$$TestReportOperationImplCopyWith<$Res> {
  __$$TestReportOperationImplCopyWithImpl(_$TestReportOperationImpl _value,
      $Res Function(_$TestReportOperationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? result = freezed,
    Object? resultElement = freezed,
    Object? message = freezed,
    Object? messageElement = freezed,
    Object? detail = freezed,
    Object? detailElement = freezed,
  }) {
    return _then(_$TestReportOperationImpl(
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
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      resultElement: freezed == resultElement
          ? _value.resultElement
          : resultElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      messageElement: freezed == messageElement
          ? _value.messageElement
          : messageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      detailElement: freezed == detailElement
          ? _value.detailElement
          : detailElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestReportOperationImpl extends _TestReportOperation {
  const _$TestReportOperationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.result,
      @JsonKey(name: '_result') this.resultElement,
      this.message,
      @JsonKey(name: '_message') this.messageElement,
      this.detail,
      @JsonKey(name: '_detail') this.detailElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$TestReportOperationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestReportOperationImplFromJson(json);

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

  /// [result] The result of this operation.
  @override
  final FhirCode? result;

  /// [resultElement] Extensions for result
  @override
  @JsonKey(name: '_result')
  final PrimitiveElement? resultElement;

  /// [message] An explanatory message associated with the result.
  @override
  final FhirMarkdown? message;

  /// [messageElement] Extensions for message
  @override
  @JsonKey(name: '_message')
  final PrimitiveElement? messageElement;

  /// [detail] A link to further details on the result.
  @override
  final FhirUri? detail;

  /// [detailElement] Extensions for detail
  @override
  @JsonKey(name: '_detail')
  final PrimitiveElement? detailElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestReportOperationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.resultElement, resultElement) ||
                other.resultElement == resultElement) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.messageElement, messageElement) ||
                other.messageElement == messageElement) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.detailElement, detailElement) ||
                other.detailElement == detailElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      result,
      resultElement,
      message,
      messageElement,
      detail,
      detailElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestReportOperationImplCopyWith<_$TestReportOperationImpl> get copyWith =>
      __$$TestReportOperationImplCopyWithImpl<_$TestReportOperationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestReportOperationImplToJson(
      this,
    );
  }
}

abstract class _TestReportOperation extends TestReportOperation {
  const factory _TestReportOperation(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? result,
          @JsonKey(name: '_result') final PrimitiveElement? resultElement,
          final FhirMarkdown? message,
          @JsonKey(name: '_message') final PrimitiveElement? messageElement,
          final FhirUri? detail,
          @JsonKey(name: '_detail') final PrimitiveElement? detailElement}) =
      _$TestReportOperationImpl;
  const _TestReportOperation._() : super._();

  factory _TestReportOperation.fromJson(Map<String, dynamic> json) =
      _$TestReportOperationImpl.fromJson;

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

  /// [result] The result of this operation.
  FhirCode? get result;
  @override

  /// [resultElement] Extensions for result
  @JsonKey(name: '_result')
  PrimitiveElement? get resultElement;
  @override

  /// [message] An explanatory message associated with the result.
  FhirMarkdown? get message;
  @override

  /// [messageElement] Extensions for message
  @JsonKey(name: '_message')
  PrimitiveElement? get messageElement;
  @override

  /// [detail] A link to further details on the result.
  FhirUri? get detail;
  @override

  /// [detailElement] Extensions for detail
  @JsonKey(name: '_detail')
  PrimitiveElement? get detailElement;
  @override
  @JsonKey(ignore: true)
  _$$TestReportOperationImplCopyWith<_$TestReportOperationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TestReportAssert _$TestReportAssertFromJson(Map<String, dynamic> json) {
  return _TestReportAssert.fromJson(json);
}

/// @nodoc
mixin _$TestReportAssert {
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

  /// [result] The result of this assertion.
  FhirCode? get result => throw _privateConstructorUsedError;

  /// [resultElement] Extensions for result
  @JsonKey(name: '_result')
  PrimitiveElement? get resultElement => throw _privateConstructorUsedError;

  /// [message] An explanatory message associated with the result.
  FhirMarkdown? get message => throw _privateConstructorUsedError;

  /// [messageElement] Extensions for message
  @JsonKey(name: '_message')
  PrimitiveElement? get messageElement => throw _privateConstructorUsedError;

  /// [detail] A link to further details on the result.
  String? get detail => throw _privateConstructorUsedError;

  /// [detailElement] Extensions for detail
  @JsonKey(name: '_detail')
  PrimitiveElement? get detailElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestReportAssertCopyWith<TestReportAssert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestReportAssertCopyWith<$Res> {
  factory $TestReportAssertCopyWith(
          TestReportAssert value, $Res Function(TestReportAssert) then) =
      _$TestReportAssertCopyWithImpl<$Res, TestReportAssert>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? result,
      @JsonKey(name: '_result') PrimitiveElement? resultElement,
      FhirMarkdown? message,
      @JsonKey(name: '_message') PrimitiveElement? messageElement,
      String? detail,
      @JsonKey(name: '_detail') PrimitiveElement? detailElement});
}

/// @nodoc
class _$TestReportAssertCopyWithImpl<$Res, $Val extends TestReportAssert>
    implements $TestReportAssertCopyWith<$Res> {
  _$TestReportAssertCopyWithImpl(this._value, this._then);

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
    Object? result = freezed,
    Object? resultElement = freezed,
    Object? message = freezed,
    Object? messageElement = freezed,
    Object? detail = freezed,
    Object? detailElement = freezed,
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
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      resultElement: freezed == resultElement
          ? _value.resultElement
          : resultElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      messageElement: freezed == messageElement
          ? _value.messageElement
          : messageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      detailElement: freezed == detailElement
          ? _value.detailElement
          : detailElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestReportAssertImplCopyWith<$Res>
    implements $TestReportAssertCopyWith<$Res> {
  factory _$$TestReportAssertImplCopyWith(_$TestReportAssertImpl value,
          $Res Function(_$TestReportAssertImpl) then) =
      __$$TestReportAssertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? result,
      @JsonKey(name: '_result') PrimitiveElement? resultElement,
      FhirMarkdown? message,
      @JsonKey(name: '_message') PrimitiveElement? messageElement,
      String? detail,
      @JsonKey(name: '_detail') PrimitiveElement? detailElement});
}

/// @nodoc
class __$$TestReportAssertImplCopyWithImpl<$Res>
    extends _$TestReportAssertCopyWithImpl<$Res, _$TestReportAssertImpl>
    implements _$$TestReportAssertImplCopyWith<$Res> {
  __$$TestReportAssertImplCopyWithImpl(_$TestReportAssertImpl _value,
      $Res Function(_$TestReportAssertImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? result = freezed,
    Object? resultElement = freezed,
    Object? message = freezed,
    Object? messageElement = freezed,
    Object? detail = freezed,
    Object? detailElement = freezed,
  }) {
    return _then(_$TestReportAssertImpl(
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
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      resultElement: freezed == resultElement
          ? _value.resultElement
          : resultElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      messageElement: freezed == messageElement
          ? _value.messageElement
          : messageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      detailElement: freezed == detailElement
          ? _value.detailElement
          : detailElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestReportAssertImpl extends _TestReportAssert {
  const _$TestReportAssertImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.result,
      @JsonKey(name: '_result') this.resultElement,
      this.message,
      @JsonKey(name: '_message') this.messageElement,
      this.detail,
      @JsonKey(name: '_detail') this.detailElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$TestReportAssertImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestReportAssertImplFromJson(json);

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

  /// [result] The result of this assertion.
  @override
  final FhirCode? result;

  /// [resultElement] Extensions for result
  @override
  @JsonKey(name: '_result')
  final PrimitiveElement? resultElement;

  /// [message] An explanatory message associated with the result.
  @override
  final FhirMarkdown? message;

  /// [messageElement] Extensions for message
  @override
  @JsonKey(name: '_message')
  final PrimitiveElement? messageElement;

  /// [detail] A link to further details on the result.
  @override
  final String? detail;

  /// [detailElement] Extensions for detail
  @override
  @JsonKey(name: '_detail')
  final PrimitiveElement? detailElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestReportAssertImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.resultElement, resultElement) ||
                other.resultElement == resultElement) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.messageElement, messageElement) ||
                other.messageElement == messageElement) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.detailElement, detailElement) ||
                other.detailElement == detailElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      result,
      resultElement,
      message,
      messageElement,
      detail,
      detailElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestReportAssertImplCopyWith<_$TestReportAssertImpl> get copyWith =>
      __$$TestReportAssertImplCopyWithImpl<_$TestReportAssertImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestReportAssertImplToJson(
      this,
    );
  }
}

abstract class _TestReportAssert extends TestReportAssert {
  const factory _TestReportAssert(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? result,
          @JsonKey(name: '_result') final PrimitiveElement? resultElement,
          final FhirMarkdown? message,
          @JsonKey(name: '_message') final PrimitiveElement? messageElement,
          final String? detail,
          @JsonKey(name: '_detail') final PrimitiveElement? detailElement}) =
      _$TestReportAssertImpl;
  const _TestReportAssert._() : super._();

  factory _TestReportAssert.fromJson(Map<String, dynamic> json) =
      _$TestReportAssertImpl.fromJson;

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

  /// [result] The result of this assertion.
  FhirCode? get result;
  @override

  /// [resultElement] Extensions for result
  @JsonKey(name: '_result')
  PrimitiveElement? get resultElement;
  @override

  /// [message] An explanatory message associated with the result.
  FhirMarkdown? get message;
  @override

  /// [messageElement] Extensions for message
  @JsonKey(name: '_message')
  PrimitiveElement? get messageElement;
  @override

  /// [detail] A link to further details on the result.
  String? get detail;
  @override

  /// [detailElement] Extensions for detail
  @JsonKey(name: '_detail')
  PrimitiveElement? get detailElement;
  @override
  @JsonKey(ignore: true)
  _$$TestReportAssertImplCopyWith<_$TestReportAssertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TestReportTest _$TestReportTestFromJson(Map<String, dynamic> json) {
  return _TestReportTest.fromJson(json);
}

/// @nodoc
mixin _$TestReportTest {
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

  /// [name] The name of this test used for tracking/logging purposes by test
  ///  engines.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [description] A short description of the test used by test engines for
  ///  tracking and reporting purposes.
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [action] Action would contain either an operation or an assertion.
  List<TestReportAction1> get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestReportTestCopyWith<TestReportTest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestReportTestCopyWith<$Res> {
  factory $TestReportTestCopyWith(
          TestReportTest value, $Res Function(TestReportTest) then) =
      _$TestReportTestCopyWithImpl<$Res, TestReportTest>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<TestReportAction1> action});
}

/// @nodoc
class _$TestReportTestCopyWithImpl<$Res, $Val extends TestReportTest>
    implements $TestReportTestCopyWith<$Res> {
  _$TestReportTestCopyWithImpl(this._value, this._then);

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
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? action = null,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as List<TestReportAction1>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestReportTestImplCopyWith<$Res>
    implements $TestReportTestCopyWith<$Res> {
  factory _$$TestReportTestImplCopyWith(_$TestReportTestImpl value,
          $Res Function(_$TestReportTestImpl) then) =
      __$$TestReportTestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<TestReportAction1> action});
}

/// @nodoc
class __$$TestReportTestImplCopyWithImpl<$Res>
    extends _$TestReportTestCopyWithImpl<$Res, _$TestReportTestImpl>
    implements _$$TestReportTestImplCopyWith<$Res> {
  __$$TestReportTestImplCopyWithImpl(
      _$TestReportTestImpl _value, $Res Function(_$TestReportTestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? action = null,
  }) {
    return _then(_$TestReportTestImpl(
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      action: null == action
          ? _value._action
          : action // ignore: cast_nullable_to_non_nullable
              as List<TestReportAction1>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestReportTestImpl extends _TestReportTest {
  const _$TestReportTestImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      required final List<TestReportAction1> action})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _action = action,
        super._();

  factory _$TestReportTestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestReportTestImplFromJson(json);

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

  /// [name] The name of this test used for tracking/logging purposes by test
  ///  engines.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [description] A short description of the test used by test engines for
  ///  tracking and reporting purposes.
  @override
  final String? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [action] Action would contain either an operation or an assertion.
  final List<TestReportAction1> _action;

  /// [action] Action would contain either an operation or an assertion.
  @override
  List<TestReportAction1> get action {
    if (_action is EqualUnmodifiableListView) return _action;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_action);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestReportTestImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality().equals(other._action, _action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      name,
      nameElement,
      description,
      descriptionElement,
      const DeepCollectionEquality().hash(_action));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestReportTestImplCopyWith<_$TestReportTestImpl> get copyWith =>
      __$$TestReportTestImplCopyWithImpl<_$TestReportTestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestReportTestImplToJson(
      this,
    );
  }
}

abstract class _TestReportTest extends TestReportTest {
  const factory _TestReportTest(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      required final List<TestReportAction1> action}) = _$TestReportTestImpl;
  const _TestReportTest._() : super._();

  factory _TestReportTest.fromJson(Map<String, dynamic> json) =
      _$TestReportTestImpl.fromJson;

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

  /// [name] The name of this test used for tracking/logging purposes by test
  ///  engines.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [description] A short description of the test used by test engines for
  ///  tracking and reporting purposes.
  String? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [action] Action would contain either an operation or an assertion.
  List<TestReportAction1> get action;
  @override
  @JsonKey(ignore: true)
  _$$TestReportTestImplCopyWith<_$TestReportTestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TestReportAction1 _$TestReportAction1FromJson(Map<String, dynamic> json) {
  return _TestReportAction1.fromJson(json);
}

/// @nodoc
mixin _$TestReportAction1 {
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

  /// [operation] An operation would involve a REST request to a server.
  TestReportOperation? get operation => throw _privateConstructorUsedError;

  /// [assert] The results of the assertion performed on the previous
  ///  operations.
  @JsonKey(name: 'assert')
  TestReportAssert? get assert_ => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestReportAction1CopyWith<TestReportAction1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestReportAction1CopyWith<$Res> {
  factory $TestReportAction1CopyWith(
          TestReportAction1 value, $Res Function(TestReportAction1) then) =
      _$TestReportAction1CopyWithImpl<$Res, TestReportAction1>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      TestReportOperation? operation,
      @JsonKey(name: 'assert') TestReportAssert? assert_});

  $TestReportOperationCopyWith<$Res>? get operation;
  $TestReportAssertCopyWith<$Res>? get assert_;
}

/// @nodoc
class _$TestReportAction1CopyWithImpl<$Res, $Val extends TestReportAction1>
    implements $TestReportAction1CopyWith<$Res> {
  _$TestReportAction1CopyWithImpl(this._value, this._then);

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
    Object? operation = freezed,
    Object? assert_ = freezed,
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
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as TestReportOperation?,
      assert_: freezed == assert_
          ? _value.assert_
          : assert_ // ignore: cast_nullable_to_non_nullable
              as TestReportAssert?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TestReportOperationCopyWith<$Res>? get operation {
    if (_value.operation == null) {
      return null;
    }

    return $TestReportOperationCopyWith<$Res>(_value.operation!, (value) {
      return _then(_value.copyWith(operation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TestReportAssertCopyWith<$Res>? get assert_ {
    if (_value.assert_ == null) {
      return null;
    }

    return $TestReportAssertCopyWith<$Res>(_value.assert_!, (value) {
      return _then(_value.copyWith(assert_: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TestReportAction1ImplCopyWith<$Res>
    implements $TestReportAction1CopyWith<$Res> {
  factory _$$TestReportAction1ImplCopyWith(_$TestReportAction1Impl value,
          $Res Function(_$TestReportAction1Impl) then) =
      __$$TestReportAction1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      TestReportOperation? operation,
      @JsonKey(name: 'assert') TestReportAssert? assert_});

  @override
  $TestReportOperationCopyWith<$Res>? get operation;
  @override
  $TestReportAssertCopyWith<$Res>? get assert_;
}

/// @nodoc
class __$$TestReportAction1ImplCopyWithImpl<$Res>
    extends _$TestReportAction1CopyWithImpl<$Res, _$TestReportAction1Impl>
    implements _$$TestReportAction1ImplCopyWith<$Res> {
  __$$TestReportAction1ImplCopyWithImpl(_$TestReportAction1Impl _value,
      $Res Function(_$TestReportAction1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? operation = freezed,
    Object? assert_ = freezed,
  }) {
    return _then(_$TestReportAction1Impl(
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
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as TestReportOperation?,
      assert_: freezed == assert_
          ? _value.assert_
          : assert_ // ignore: cast_nullable_to_non_nullable
              as TestReportAssert?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestReportAction1Impl extends _TestReportAction1 {
  const _$TestReportAction1Impl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.operation,
      @JsonKey(name: 'assert') this.assert_})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$TestReportAction1Impl.fromJson(Map<String, dynamic> json) =>
      _$$TestReportAction1ImplFromJson(json);

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

  /// [operation] An operation would involve a REST request to a server.
  @override
  final TestReportOperation? operation;

  /// [assert] The results of the assertion performed on the previous
  ///  operations.
  @override
  @JsonKey(name: 'assert')
  final TestReportAssert? assert_;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestReportAction1Impl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            (identical(other.assert_, assert_) || other.assert_ == assert_));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      operation,
      assert_);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestReportAction1ImplCopyWith<_$TestReportAction1Impl> get copyWith =>
      __$$TestReportAction1ImplCopyWithImpl<_$TestReportAction1Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestReportAction1ImplToJson(
      this,
    );
  }
}

abstract class _TestReportAction1 extends TestReportAction1 {
  const factory _TestReportAction1(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final TestReportOperation? operation,
          @JsonKey(name: 'assert') final TestReportAssert? assert_}) =
      _$TestReportAction1Impl;
  const _TestReportAction1._() : super._();

  factory _TestReportAction1.fromJson(Map<String, dynamic> json) =
      _$TestReportAction1Impl.fromJson;

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

  /// [operation] An operation would involve a REST request to a server.
  TestReportOperation? get operation;
  @override

  /// [assert] The results of the assertion performed on the previous
  ///  operations.
  @JsonKey(name: 'assert')
  TestReportAssert? get assert_;
  @override
  @JsonKey(ignore: true)
  _$$TestReportAction1ImplCopyWith<_$TestReportAction1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

TestReportTeardown _$TestReportTeardownFromJson(Map<String, dynamic> json) {
  return _TestReportTeardown.fromJson(json);
}

/// @nodoc
mixin _$TestReportTeardown {
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

  /// [action] The teardown action will only contain an operation.
  List<TestReportAction2> get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestReportTeardownCopyWith<TestReportTeardown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestReportTeardownCopyWith<$Res> {
  factory $TestReportTeardownCopyWith(
          TestReportTeardown value, $Res Function(TestReportTeardown) then) =
      _$TestReportTeardownCopyWithImpl<$Res, TestReportTeardown>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<TestReportAction2> action});
}

/// @nodoc
class _$TestReportTeardownCopyWithImpl<$Res, $Val extends TestReportTeardown>
    implements $TestReportTeardownCopyWith<$Res> {
  _$TestReportTeardownCopyWithImpl(this._value, this._then);

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
    Object? action = null,
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
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as List<TestReportAction2>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestReportTeardownImplCopyWith<$Res>
    implements $TestReportTeardownCopyWith<$Res> {
  factory _$$TestReportTeardownImplCopyWith(_$TestReportTeardownImpl value,
          $Res Function(_$TestReportTeardownImpl) then) =
      __$$TestReportTeardownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<TestReportAction2> action});
}

/// @nodoc
class __$$TestReportTeardownImplCopyWithImpl<$Res>
    extends _$TestReportTeardownCopyWithImpl<$Res, _$TestReportTeardownImpl>
    implements _$$TestReportTeardownImplCopyWith<$Res> {
  __$$TestReportTeardownImplCopyWithImpl(_$TestReportTeardownImpl _value,
      $Res Function(_$TestReportTeardownImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? action = null,
  }) {
    return _then(_$TestReportTeardownImpl(
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
      action: null == action
          ? _value._action
          : action // ignore: cast_nullable_to_non_nullable
              as List<TestReportAction2>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestReportTeardownImpl extends _TestReportTeardown {
  const _$TestReportTeardownImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final List<TestReportAction2> action})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _action = action,
        super._();

  factory _$TestReportTeardownImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestReportTeardownImplFromJson(json);

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

  /// [action] The teardown action will only contain an operation.
  final List<TestReportAction2> _action;

  /// [action] The teardown action will only contain an operation.
  @override
  List<TestReportAction2> get action {
    if (_action is EqualUnmodifiableListView) return _action;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_action);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestReportTeardownImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other._action, _action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_action));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestReportTeardownImplCopyWith<_$TestReportTeardownImpl> get copyWith =>
      __$$TestReportTeardownImplCopyWithImpl<_$TestReportTeardownImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestReportTeardownImplToJson(
      this,
    );
  }
}

abstract class _TestReportTeardown extends TestReportTeardown {
  const factory _TestReportTeardown(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final List<TestReportAction2> action}) =
      _$TestReportTeardownImpl;
  const _TestReportTeardown._() : super._();

  factory _TestReportTeardown.fromJson(Map<String, dynamic> json) =
      _$TestReportTeardownImpl.fromJson;

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

  /// [action] The teardown action will only contain an operation.
  List<TestReportAction2> get action;
  @override
  @JsonKey(ignore: true)
  _$$TestReportTeardownImplCopyWith<_$TestReportTeardownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TestReportAction2 _$TestReportAction2FromJson(Map<String, dynamic> json) {
  return _TestReportAction2.fromJson(json);
}

/// @nodoc
mixin _$TestReportAction2 {
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

  /// [operation] An operation would involve a REST request to a server.
  TestReportOperation get operation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestReportAction2CopyWith<TestReportAction2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestReportAction2CopyWith<$Res> {
  factory $TestReportAction2CopyWith(
          TestReportAction2 value, $Res Function(TestReportAction2) then) =
      _$TestReportAction2CopyWithImpl<$Res, TestReportAction2>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      TestReportOperation operation});

  $TestReportOperationCopyWith<$Res> get operation;
}

/// @nodoc
class _$TestReportAction2CopyWithImpl<$Res, $Val extends TestReportAction2>
    implements $TestReportAction2CopyWith<$Res> {
  _$TestReportAction2CopyWithImpl(this._value, this._then);

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
    Object? operation = null,
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
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as TestReportOperation,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TestReportOperationCopyWith<$Res> get operation {
    return $TestReportOperationCopyWith<$Res>(_value.operation, (value) {
      return _then(_value.copyWith(operation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TestReportAction2ImplCopyWith<$Res>
    implements $TestReportAction2CopyWith<$Res> {
  factory _$$TestReportAction2ImplCopyWith(_$TestReportAction2Impl value,
          $Res Function(_$TestReportAction2Impl) then) =
      __$$TestReportAction2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      TestReportOperation operation});

  @override
  $TestReportOperationCopyWith<$Res> get operation;
}

/// @nodoc
class __$$TestReportAction2ImplCopyWithImpl<$Res>
    extends _$TestReportAction2CopyWithImpl<$Res, _$TestReportAction2Impl>
    implements _$$TestReportAction2ImplCopyWith<$Res> {
  __$$TestReportAction2ImplCopyWithImpl(_$TestReportAction2Impl _value,
      $Res Function(_$TestReportAction2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? operation = null,
  }) {
    return _then(_$TestReportAction2Impl(
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
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as TestReportOperation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestReportAction2Impl extends _TestReportAction2 {
  const _$TestReportAction2Impl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.operation})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$TestReportAction2Impl.fromJson(Map<String, dynamic> json) =>
      _$$TestReportAction2ImplFromJson(json);

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

  /// [operation] An operation would involve a REST request to a server.
  @override
  final TestReportOperation operation;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestReportAction2Impl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.operation, operation) ||
                other.operation == operation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      operation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestReportAction2ImplCopyWith<_$TestReportAction2Impl> get copyWith =>
      __$$TestReportAction2ImplCopyWithImpl<_$TestReportAction2Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestReportAction2ImplToJson(
      this,
    );
  }
}

abstract class _TestReportAction2 extends TestReportAction2 {
  const factory _TestReportAction2(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final TestReportOperation operation}) = _$TestReportAction2Impl;
  const _TestReportAction2._() : super._();

  factory _TestReportAction2.fromJson(Map<String, dynamic> json) =
      _$TestReportAction2Impl.fromJson;

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

  /// [operation] An operation would involve a REST request to a server.
  TestReportOperation get operation;
  @override
  @JsonKey(ignore: true)
  _$$TestReportAction2ImplCopyWith<_$TestReportAction2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
