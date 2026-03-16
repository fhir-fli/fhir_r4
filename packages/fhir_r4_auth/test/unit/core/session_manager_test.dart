/// Tests for session management
library;

import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:test/test.dart';

void main() {
  group('SessionConfig', () {
    test('creates high security config', () {
      final config = SessionConfig.highSecurity();

      expect(config.idleTimeout, equals(const Duration(minutes: 15)));
      expect(config.absoluteTimeout, equals(const Duration(hours: 4)));
      expect(config.warningBeforeTimeout, equals(const Duration(minutes: 2)));
    });

    test('creates standard config', () {
      final config = SessionConfig.standard();

      expect(config.idleTimeout, equals(const Duration(minutes: 30)));
      expect(config.absoluteTimeout, equals(const Duration(hours: 8)));
      expect(config.warningBeforeTimeout, equals(const Duration(minutes: 5)));
    });

    test('creates development config', () {
      final config = SessionConfig.development();

      expect(config.idleTimeout, equals(const Duration(hours: 24)));
      expect(config.absoluteTimeout, equals(const Duration(days: 7)));
    });

    test('creates custom config', () {
      const config = SessionConfig(
        idleTimeout: Duration(minutes: 10),
        absoluteTimeout: Duration(hours: 2),
        warningBeforeTimeout: Duration(minutes: 1),
        checkInterval: Duration(seconds: 30),
      );

      expect(config.idleTimeout, equals(const Duration(minutes: 10)));
      expect(config.absoluteTimeout, equals(const Duration(hours: 2)));
      expect(config.warningBeforeTimeout, equals(const Duration(minutes: 1)));
      expect(config.checkInterval, equals(const Duration(seconds: 30)));
    });
  });

  group('Session', () {
    test('creates with required fields', () {
      final session = Session(userId: 'user123');

      expect(session.id, isNotEmpty);
      expect(session.userId, equals('user123'));
      expect(session.createdAt, isNotNull);
      expect(session.lastActivity, isNotNull);
    });

    test('creates with custom ID', () {
      final session = Session(
        id: 'custom-id',
        userId: 'user123',
      );

      expect(session.id, equals('custom-id'));
    });

    test('creates with metadata', () {
      final session = Session(
        userId: 'user123',
        metadata: <String, dynamic>{
          'role': 'practitioner',
          'department': 'cardiology',
        },
      );

      expect(session.metadata['role'], equals('practitioner'));
      expect(session.metadata['department'], equals('cardiology'));
    });

    test('records activity', () {
      final session = Session(userId: 'user123');
      final initialActivity = session.lastActivity;

      // Wait a bit
      Future<void>.delayed(const Duration(milliseconds: 10));

      session.recordActivity();

      expect(
        session.lastActivity.isAfter(initialActivity) ||
            session.lastActivity.isAtSameMomentAs(initialActivity),
        isTrue,
      );
    });

    test('calculates age', () {
      final pastTime = DateTime.now().subtract(const Duration(minutes: 5));
      final session = Session(
        userId: 'user123',
        createdAt: pastTime,
      );

      expect(session.age.inMinutes, greaterThanOrEqualTo(4));
      expect(session.age.inMinutes, lessThanOrEqualTo(6));
    });

    test('calculates idle time', () {
      final pastTime = DateTime.now().subtract(const Duration(minutes: 3));
      final session = Session(
        userId: 'user123',
        lastActivity: pastTime,
      );

      expect(session.idleTime.inMinutes, greaterThanOrEqualTo(2));
      expect(session.idleTime.inMinutes, lessThanOrEqualTo(4));
    });

    test('detects idle session', () {
      final pastTime = DateTime.now().subtract(const Duration(minutes: 10));
      final session = Session(
        userId: 'user123',
        lastActivity: pastTime,
      );

      expect(session.isIdle(const Duration(minutes: 5)), isTrue);
      expect(session.isIdle(const Duration(minutes: 15)), isFalse);
    });

    test('detects exceeded absolute timeout', () {
      final pastTime = DateTime.now().subtract(const Duration(hours: 5));
      final session = Session(
        userId: 'user123',
        createdAt: pastTime,
      );

      expect(
        session.hasExceededAbsoluteTimeout(const Duration(hours: 4)),
        isTrue,
      );
      expect(
        session.hasExceededAbsoluteTimeout(const Duration(hours: 6)),
        isFalse,
      );
    });

    test('serializes to JSON', () {
      final session = Session(
        id: 'test-id',
        userId: 'user123',
        metadata: <String, dynamic>{'role': 'admin'},
      );

      final json = session.toJson();

      expect(json['id'], equals('test-id'));
      expect(json['userId'], equals('user123'));
      expect(json['createdAt'], isA<String>());
      expect(json['lastActivity'], isA<String>());
      expect(json['metadata'], isA<Map>());
    });

    test('deserializes from JSON', () {
      final json = <String, dynamic>{
        'id': 'test-id',
        'userId': 'user123',
        'createdAt': DateTime.now().toIso8601String(),
        'lastActivity': DateTime.now().toIso8601String(),
        'metadata': <String, dynamic>{'role': 'admin'},
      };

      final session = Session.fromJson(json);

      expect(session.id, equals('test-id'));
      expect(session.userId, equals('user123'));
      expect(session.metadata['role'], equals('admin'));
    });

    test('has string representation', () {
      final session = Session(userId: 'user123');

      final str = session.toString();

      expect(str, contains('Session'));
      expect(str, contains(session.id));
      expect(str, contains('user123'));
    });
  });

  group('SessionManager', () {
    late SessionManager sessionManager;

    setUp(() {
      sessionManager = SessionManager(
        config: const SessionConfig(
          idleTimeout: Duration(minutes: 30),
          absoluteTimeout: Duration(hours: 8),
          warningBeforeTimeout: Duration(minutes: 5),
          checkInterval: Duration(minutes: 1),
        ),
      );
    });

    tearDown(() {
      sessionManager.dispose();
    });

    test('starts session', () async {
      final session = await sessionManager.startSession(userId: 'user123');

      expect(session.userId, equals('user123'));
      expect(sessionManager.hasActiveSession, isTrue);
      expect(sessionManager.currentSession, equals(session));
    });

    test('starts session with metadata', () async {
      final session = await sessionManager.startSession(
        userId: 'user123',
        metadata: <String, dynamic>{'role': 'practitioner'},
      );

      expect(session.metadata['role'], equals('practitioner'));
    });

    test('replaces existing session on new start', () async {
      final session1 = await sessionManager.startSession(userId: 'user1');
      final session2 = await sessionManager.startSession(userId: 'user2');

      expect(session1.id, isNot(equals(session2.id)));
      expect(sessionManager.currentSession, equals(session2));
    });

    test('records activity', () async {
      await sessionManager.startSession(userId: 'user123');
      final initialActivity = sessionManager.currentSession!.lastActivity;

      await Future<void>.delayed(const Duration(milliseconds: 10));
      await sessionManager.recordActivity();

      expect(
        sessionManager.currentSession!.lastActivity.isAfter(initialActivity) ||
            sessionManager.currentSession!.lastActivity
                .isAtSameMomentAs(initialActivity),
        isTrue,
      );
    });

    test('handles record activity without session', () async {
      // Should not throw
      await sessionManager.recordActivity();
    });

    test('ends session', () async {
      await sessionManager.startSession(userId: 'user123');

      await sessionManager.endSession(TimeoutReason.logout);

      expect(sessionManager.hasActiveSession, isFalse);
      expect(sessionManager.currentSession, isNull);
    });

    test('handles end session without active session', () async {
      // Should not throw
      await sessionManager.endSession(TimeoutReason.logout);
    });

    test('extends session', () async {
      await sessionManager.startSession(userId: 'user123');
      final initialActivity = sessionManager.currentSession!.lastActivity;

      await Future<void>.delayed(const Duration(milliseconds: 10));
      await sessionManager.extendSession();

      expect(
        sessionManager.currentSession!.lastActivity.isAfter(initialActivity),
        isTrue,
      );
    });

    test('provides session info', () async {
      await sessionManager.startSession(userId: 'user123');

      final info = sessionManager.getSessionInfo();

      expect(info, isNotNull);
      expect(info!['session'], isA<Map>());
      expect(info['idle_time_seconds'], isA<int>());
      expect(info['session_age_seconds'], isA<int>());
      expect(info['time_until_idle_timeout_seconds'], isA<int>());
      expect(info['time_until_absolute_timeout_seconds'], isA<int>());
    });

    test('returns null session info when no session', () {
      final info = sessionManager.getSessionInfo();

      expect(info, isNull);
    });

    test('emits timeout event on idle timeout', () async {
      final sessionManager = SessionManager(
        config: const SessionConfig(
          idleTimeout: Duration(seconds: 10),
          absoluteTimeout: Duration(hours: 1),
          checkInterval: Duration(seconds: 1),
        ),
      );

      await sessionManager.startSession(userId: 'user123');

      final timeouts = <TimeoutReason>[];
      sessionManager.onTimeout.listen(timeouts.add);

      // Wait for idle timeout to pass
      await Future.delayed(const Duration(seconds: 11));

      // Manually trigger timeout check
      await sessionManager.checkTimeoutsForTesting();

      expect(timeouts, contains(TimeoutReason.idle));

      sessionManager.dispose();
    });

    test('emits timeout event on absolute timeout', () async {
      final sessionManager = SessionManager(
        config: const SessionConfig(
          idleTimeout: Duration(hours: 1),
          absoluteTimeout: Duration(seconds: 10),
          checkInterval: Duration(seconds: 1),
        ),
      );

      await sessionManager.startSession(userId: 'user123');

      final timeouts = <TimeoutReason>[];
      sessionManager.onTimeout.listen(timeouts.add);

      // Wait for absolute timeout to pass
      await Future.delayed(const Duration(seconds: 11));

      // Keep recording activity (but absolute timeout should still trigger)
      await sessionManager.recordActivity();

      // Manually trigger timeout check
      await sessionManager.checkTimeoutsForTesting();

      expect(timeouts, contains(TimeoutReason.absolute));

      sessionManager.dispose();
    });

    test('emits warning before timeout', () async {
      final sessionManager = SessionManager(
        config: const SessionConfig(
          idleTimeout: Duration(seconds: 10),
          absoluteTimeout: Duration(hours: 1),
          warningBeforeTimeout: Duration(seconds: 3),
          checkInterval: Duration(seconds: 1),
        ),
      );

      await sessionManager.startSession(userId: 'user123');

      final warnings = <Duration>[];
      sessionManager.onTimeoutWarning.listen(warnings.add);

      // Wait until we're in the warning period (7-8 seconds idle)
      await Future.delayed(const Duration(seconds: 8));

      // Manually trigger timeout check
      await sessionManager.checkTimeoutsForTesting();

      expect(warnings, isNotEmpty);
      expect(
        warnings.first.inSeconds,
        lessThanOrEqualTo(3),
      );

      sessionManager.dispose();
    });

    test('prevents timeout with activity', () async {
      final sessionManager = SessionManager(
        config: const SessionConfig(
          idleTimeout: Duration(seconds: 10),
          absoluteTimeout: Duration(hours: 1),
          checkInterval: Duration(seconds: 1),
        ),
      );

      await sessionManager.startSession(userId: 'user123');

      final timeouts = <TimeoutReason>[];
      sessionManager.onTimeout.listen(timeouts.add);

      // Record activity to keep session alive
      await Future.delayed(const Duration(seconds: 5));
      await sessionManager.recordActivity();

      await Future.delayed(const Duration(seconds: 5));
      await sessionManager.recordActivity();

      // Check for timeouts - should not trigger because of recent activity
      await sessionManager.checkTimeoutsForTesting();

      // Should not timeout due to activity
      expect(timeouts, isEmpty);
      expect(sessionManager.hasActiveSession, isTrue);

      sessionManager.dispose();
    });
  });

  group('TimeoutReason', () {
    test('has all expected values', () {
      expect(TimeoutReason.values, contains(TimeoutReason.idle));
      expect(TimeoutReason.values, contains(TimeoutReason.absolute));
      expect(TimeoutReason.values, contains(TimeoutReason.manual));
      expect(TimeoutReason.values, contains(TimeoutReason.logout));
    });
  });
}
