// Mocks generated by Mockito 5.4.4 from annotations
// in fhir_r4/test/fhir_at_rest/old/requests_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:fhir_r4/fhir_r4.dart' as _i3;
import 'package:http/http.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeUri_0 extends _i1.SmartFake implements Uri {
  _FakeUri_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeClient_1 extends _i1.SmartFake implements _i2.Client {
  _FakeClient_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_2 extends _i1.SmartFake implements _i2.Response {
  _FakeResponse_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [FhirRequest].
///
/// See the documentation for Mockito's code generation for more information.
class MockFhirRequest extends _i1.Mock implements _i3.FhirRequest {
  MockFhirRequest() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Uri get base => (super.noSuchMethod(
        Invocation.getter(#base),
        returnValue: _FakeUri_0(
          this,
          Invocation.getter(#base),
        ),
      ) as Uri);

  @override
  Map<String, String> get headers => (super.noSuchMethod(
        Invocation.getter(#headers),
        returnValue: <String, String>{},
      ) as Map<String, String>);

  @override
  _i2.Client get client => (super.noSuchMethod(
        Invocation.getter(#client),
        returnValue: _FakeClient_1(
          this,
          Invocation.getter(#client),
        ),
      ) as _i2.Client);

  @override
  _i3.Summary get summary => (super.noSuchMethod(
        Invocation.getter(#summary),
        returnValue: _i3.Summary.true_,
      ) as _i3.Summary);

  @override
  _i4.Future<_i2.Response> sendRequest() => (super.noSuchMethod(
        Invocation.method(
          #sendRequest,
          [],
        ),
        returnValue: _i4.Future<_i2.Response>.value(_FakeResponse_2(
          this,
          Invocation.method(
            #sendRequest,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Response>);

  @override
  Uri buildUri() => (super.noSuchMethod(
        Invocation.method(
          #buildUri,
          [],
        ),
        returnValue: _FakeUri_0(
          this,
          Invocation.method(
            #buildUri,
            [],
          ),
        ),
      ) as Uri);

  @override
  Map<String, String> buildHeaders() => (super.noSuchMethod(
        Invocation.method(
          #buildHeaders,
          [],
        ),
        returnValue: <String, String>{},
      ) as Map<String, String>);

  @override
  Map<String, dynamic> buildQueryParams() => (super.noSuchMethod(
        Invocation.method(
          #buildQueryParams,
          [],
        ),
        returnValue: <String, dynamic>{},
      ) as Map<String, dynamic>);

  @override
  Uri buildUriWithParams(
    Uri? baseUri,
    Map<String, dynamic>? queryParams,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #buildUriWithParams,
          [
            baseUri,
            queryParams,
          ],
        ),
        returnValue: _FakeUri_0(
          this,
          Invocation.method(
            #buildUriWithParams,
            [
              baseUri,
              queryParams,
            ],
          ),
        ),
      ) as Uri);
}