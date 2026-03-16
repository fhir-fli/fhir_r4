import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';
import 'package:test/test.dart';

void main() {
  group('CdsActionType', () {
    test('all values round-trip', () {
      for (final value in CdsActionType.values) {
        final json = value.toJson();
        final decoded = CdsActionType.fromJson(json);
        expect(decoded, value);
      }
    });

    test('fromJson throws on unknown value', () {
      expect(
        () => CdsActionType.fromJson('unknown'),
        throwsA(isA<StateError>()),
      );
    });

    test('values are create, update, delete', () {
      expect(CdsActionType.values.length, 3);
      expect(CdsActionType.create.toJson(), 'create');
      expect(CdsActionType.update.toJson(), 'update');
      expect(CdsActionType.delete.toJson(), 'delete');
    });
  });

  group('CdsIndicator', () {
    test('all values round-trip', () {
      for (final value in CdsIndicator.values) {
        final json = value.toJson();
        final decoded = CdsIndicator.fromJson(json);
        expect(decoded, value);
      }
    });

    test('fromJson throws on unknown value', () {
      expect(
        () => CdsIndicator.fromJson('danger'),
        throwsA(isA<StateError>()),
      );
    });

    test('values are info, warning, critical', () {
      expect(CdsIndicator.values.length, 3);
      expect(CdsIndicator.info.toJson(), 'info');
      expect(CdsIndicator.warning.toJson(), 'warning');
      expect(CdsIndicator.critical.toJson(), 'critical');
    });
  });

  group('CdsLinkType', () {
    test('all values round-trip', () {
      for (final value in CdsLinkType.values) {
        final json = value.toJson();
        final decoded = CdsLinkType.fromJson(json);
        expect(decoded, value);
      }
    });

    test('fromJson throws on unknown value', () {
      expect(
        () => CdsLinkType.fromJson('relative'),
        throwsA(isA<StateError>()),
      );
    });

    test('values are absolute, smart', () {
      expect(CdsLinkType.values.length, 2);
      expect(CdsLinkType.absolute.toJson(), 'absolute');
      expect(CdsLinkType.smart.toJson(), 'smart');
    });
  });

  group('CdsSelectionBehavior', () {
    test('all values round-trip', () {
      for (final value in CdsSelectionBehavior.values) {
        final json = value.toJson();
        final decoded = CdsSelectionBehavior.fromJson(json);
        expect(decoded, value);
      }
    });

    test('fromJson throws on unknown value', () {
      expect(
        () => CdsSelectionBehavior.fromJson('exactly-one'),
        throwsA(isA<StateError>()),
      );
    });

    test('wire format uses hyphenated names', () {
      expect(CdsSelectionBehavior.atMostOne.toJson(), 'at-most-one');
      expect(CdsSelectionBehavior.any.toJson(), 'any');
    });

    test('fromJson with wire format', () {
      expect(
        CdsSelectionBehavior.fromJson('at-most-one'),
        CdsSelectionBehavior.atMostOne,
      );
      expect(
        CdsSelectionBehavior.fromJson('any'),
        CdsSelectionBehavior.any,
      );
    });
  });

  group('CdsFeedbackOutcome', () {
    test('all values round-trip', () {
      for (final value in CdsFeedbackOutcome.values) {
        final json = value.toJson();
        final decoded = CdsFeedbackOutcome.fromJson(json);
        expect(decoded, value);
      }
    });

    test('fromJson throws on unknown value', () {
      expect(
        () => CdsFeedbackOutcome.fromJson('dismissed'),
        throwsA(isA<StateError>()),
      );
    });

    test('values are accepted, overridden', () {
      expect(CdsFeedbackOutcome.values.length, 2);
      expect(CdsFeedbackOutcome.accepted.toJson(), 'accepted');
      expect(CdsFeedbackOutcome.overridden.toJson(), 'overridden');
    });
  });
}
