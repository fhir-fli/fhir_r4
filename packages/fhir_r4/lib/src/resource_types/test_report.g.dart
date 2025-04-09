// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'test_report.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $TestReportCopyWith<T> extends $DomainResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    FhirString? name,
    TestReportStatus? status,
    Reference? testScript,
    TestReportResult? result,
    FhirDecimal? score,
    FhirString? tester,
    FhirDateTime? issued,
    List<TestReportParticipant>? participant,
    TestReportSetup? setup,
    List<TestReportTest>? test,
    TestReportTeardown? teardown,
    bool? disallowExtensions,
  });
}

class _$TestReportCopyWithImpl<T> implements $TestReportCopyWith<T> {
  final TestReport _value;
  final T Function(TestReport) _then;

  _$TestReportCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? contained = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? name = fhirSentinel,
    Object? status = fhirSentinel,
    Object? testScript = fhirSentinel,
    Object? result = fhirSentinel,
    Object? score = fhirSentinel,
    Object? tester = fhirSentinel,
    Object? issued = fhirSentinel,
    Object? participant = fhirSentinel,
    Object? setup = fhirSentinel,
    Object? test = fhirSentinel,
    Object? teardown = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestReport(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        contained: identical(contained, fhirSentinel)
            ? _value.contained
            : contained as List<Resource>?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        status: status as TestReportStatus? ?? _value.status,
        testScript: testScript as Reference? ?? _value.testScript,
        result: result as TestReportResult? ?? _value.result,
        score: identical(score, fhirSentinel)
            ? _value.score
            : score as FhirDecimal?,
        tester: identical(tester, fhirSentinel)
            ? _value.tester
            : tester as FhirString?,
        issued: identical(issued, fhirSentinel)
            ? _value.issued
            : issued as FhirDateTime?,
        participant: identical(participant, fhirSentinel)
            ? _value.participant
            : participant as List<TestReportParticipant>?,
        setup: identical(setup, fhirSentinel)
            ? _value.setup
            : setup as TestReportSetup?,
        test: identical(test, fhirSentinel)
            ? _value.test
            : test as List<TestReportTest>?,
        teardown: identical(teardown, fhirSentinel)
            ? _value.teardown
            : teardown as TestReportTeardown?,
      ),
    );
  }
}

extension TestReportCopyWithExtension on TestReport {
  $TestReportCopyWith<TestReport> get copyWith =>
      _$TestReportCopyWithImpl<TestReport>(
        this,
        (value) => value,
      );
}

abstract class $TestReportParticipantCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestReportParticipantType? type,
    FhirUri? uri,
    FhirString? display,
    bool? disallowExtensions,
  });
}

class _$TestReportParticipantCopyWithImpl<T>
    implements $TestReportParticipantCopyWith<T> {
  final TestReportParticipant _value;
  final T Function(TestReportParticipant) _then;

  _$TestReportParticipantCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? uri = fhirSentinel,
    Object? display = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestReportParticipant(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: type as TestReportParticipantType? ?? _value.type,
        uri: uri as FhirUri? ?? _value.uri,
        display: identical(display, fhirSentinel)
            ? _value.display
            : display as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestReportParticipantCopyWithExtension on TestReportParticipant {
  $TestReportParticipantCopyWith<TestReportParticipant> get copyWith =>
      _$TestReportParticipantCopyWithImpl<TestReportParticipant>(
        this,
        (value) => value,
      );
}

abstract class $TestReportSetupCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<TestReportAction>? action,
    bool? disallowExtensions,
  });
}

class _$TestReportSetupCopyWithImpl<T> implements $TestReportSetupCopyWith<T> {
  final TestReportSetup _value;
  final T Function(TestReportSetup) _then;

  _$TestReportSetupCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? action = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestReportSetup(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        action: action as List<TestReportAction>? ?? _value.action,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestReportSetupCopyWithExtension on TestReportSetup {
  $TestReportSetupCopyWith<TestReportSetup> get copyWith =>
      _$TestReportSetupCopyWithImpl<TestReportSetup>(
        this,
        (value) => value,
      );
}

abstract class $TestReportActionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestReportOperation? operation,
    TestReportAssert? assert_,
    bool? disallowExtensions,
  });
}

class _$TestReportActionCopyWithImpl<T>
    implements $TestReportActionCopyWith<T> {
  final TestReportAction _value;
  final T Function(TestReportAction) _then;

  _$TestReportActionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? operation = fhirSentinel,
    Object? assert_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestReportAction(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        operation: identical(operation, fhirSentinel)
            ? _value.operation
            : operation as TestReportOperation?,
        assert_: identical(assert_, fhirSentinel)
            ? _value.assert_
            : assert_ as TestReportAssert?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestReportActionCopyWithExtension on TestReportAction {
  $TestReportActionCopyWith<TestReportAction> get copyWith =>
      _$TestReportActionCopyWithImpl<TestReportAction>(
        this,
        (value) => value,
      );
}

abstract class $TestReportOperationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestReportActionResult? result,
    FhirMarkdown? message,
    FhirUri? detail,
    bool? disallowExtensions,
  });
}

class _$TestReportOperationCopyWithImpl<T>
    implements $TestReportOperationCopyWith<T> {
  final TestReportOperation _value;
  final T Function(TestReportOperation) _then;

  _$TestReportOperationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? result = fhirSentinel,
    Object? message = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestReportOperation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        result: result as TestReportActionResult? ?? _value.result,
        message: identical(message, fhirSentinel)
            ? _value.message
            : message as FhirMarkdown?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as FhirUri?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestReportOperationCopyWithExtension on TestReportOperation {
  $TestReportOperationCopyWith<TestReportOperation> get copyWith =>
      _$TestReportOperationCopyWithImpl<TestReportOperation>(
        this,
        (value) => value,
      );
}

abstract class $TestReportAssertCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestReportActionResult? result,
    FhirMarkdown? message,
    FhirString? detail,
    bool? disallowExtensions,
  });
}

class _$TestReportAssertCopyWithImpl<T>
    implements $TestReportAssertCopyWith<T> {
  final TestReportAssert _value;
  final T Function(TestReportAssert) _then;

  _$TestReportAssertCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? result = fhirSentinel,
    Object? message = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestReportAssert(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        result: result as TestReportActionResult? ?? _value.result,
        message: identical(message, fhirSentinel)
            ? _value.message
            : message as FhirMarkdown?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestReportAssertCopyWithExtension on TestReportAssert {
  $TestReportAssertCopyWith<TestReportAssert> get copyWith =>
      _$TestReportAssertCopyWithImpl<TestReportAssert>(
        this,
        (value) => value,
      );
}

abstract class $TestReportTestCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? description,
    List<TestReportAction>? action,
    bool? disallowExtensions,
  });
}

class _$TestReportTestCopyWithImpl<T> implements $TestReportTestCopyWith<T> {
  final TestReportTest _value;
  final T Function(TestReportTest) _then;

  _$TestReportTestCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? description = fhirSentinel,
    Object? action = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestReportTest(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        action: action as List<TestReportAction>? ?? _value.action,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestReportTestCopyWithExtension on TestReportTest {
  $TestReportTestCopyWith<TestReportTest> get copyWith =>
      _$TestReportTestCopyWithImpl<TestReportTest>(
        this,
        (value) => value,
      );
}

abstract class $TestReportAction1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestReportOperation? operation,
    TestReportAssert? assert_,
    bool? disallowExtensions,
  });
}

class _$TestReportAction1CopyWithImpl<T>
    implements $TestReportAction1CopyWith<T> {
  final TestReportAction1 _value;
  final T Function(TestReportAction1) _then;

  _$TestReportAction1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? operation = fhirSentinel,
    Object? assert_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestReportAction1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        operation: identical(operation, fhirSentinel)
            ? _value.operation
            : operation as TestReportOperation?,
        assert_: identical(assert_, fhirSentinel)
            ? _value.assert_
            : assert_ as TestReportAssert?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestReportAction1CopyWithExtension on TestReportAction1 {
  $TestReportAction1CopyWith<TestReportAction1> get copyWith =>
      _$TestReportAction1CopyWithImpl<TestReportAction1>(
        this,
        (value) => value,
      );
}

abstract class $TestReportTeardownCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<TestReportAction>? action,
    bool? disallowExtensions,
  });
}

class _$TestReportTeardownCopyWithImpl<T>
    implements $TestReportTeardownCopyWith<T> {
  final TestReportTeardown _value;
  final T Function(TestReportTeardown) _then;

  _$TestReportTeardownCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? action = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestReportTeardown(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        action: action as List<TestReportAction>? ?? _value.action,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestReportTeardownCopyWithExtension on TestReportTeardown {
  $TestReportTeardownCopyWith<TestReportTeardown> get copyWith =>
      _$TestReportTeardownCopyWithImpl<TestReportTeardown>(
        this,
        (value) => value,
      );
}

abstract class $TestReportAction2CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestReportOperation? operation,
    bool? disallowExtensions,
  });
}

class _$TestReportAction2CopyWithImpl<T>
    implements $TestReportAction2CopyWith<T> {
  final TestReportAction2 _value;
  final T Function(TestReportAction2) _then;

  _$TestReportAction2CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? operation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TestReportAction2(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        operation: operation as TestReportOperation? ?? _value.operation,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TestReportAction2CopyWithExtension on TestReportAction2 {
  $TestReportAction2CopyWith<TestReportAction2> get copyWith =>
      _$TestReportAction2CopyWithImpl<TestReportAction2>(
        this,
        (value) => value,
      );
}
