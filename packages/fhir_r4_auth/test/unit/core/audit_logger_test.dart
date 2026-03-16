/// Tests for audit logging
library;

import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:test/test.dart';

void main() {
  group('AuditEvent', () {
    test('creates with required fields', () {
      final event = AuditEvent(
        eventType: AuditEventType.authenticationSuccess,
        severity: AuditSeverity.info,
        message: 'User authenticated',
      );

      expect(event.eventType, equals(AuditEventType.authenticationSuccess));
      expect(event.severity, equals(AuditSeverity.info));
      expect(event.message, equals('User authenticated'));
      expect(event.eventId, isNotEmpty);
      expect(event.timestamp, isNotNull);
    });

    test('creates with optional fields', () {
      final event = AuditEvent(
        eventType: AuditEventType.tokenIssued,
        severity: AuditSeverity.info,
        message: 'Token issued',
        userId: 'user123',
        clientId: 'client456',
        sessionId: 'session789',
        outcome: true,
      );

      expect(event.userId, equals('user123'));
      expect(event.clientId, equals('client456'));
      expect(event.sessionId, equals('session789'));
      expect(event.outcome, isTrue);
    });

    test('serializes to JSON', () {
      final event = AuditEvent(
        eventType: AuditEventType.authenticationSuccess,
        severity: AuditSeverity.info,
        message: 'User authenticated',
        userId: 'user123',
        outcome: true,
      );

      final json = event.toJson();

      expect(json['eventId'], equals(event.eventId));
      expect(json['eventType'], equals('authenticationSuccess'));
      expect(json['severity'], equals('info'));
      expect(json['message'], equals('User authenticated'));
      expect(json['userId'], equals('user123'));
      expect(json['outcome'], equals('success'));
    });

    test('deserializes from JSON', () {
      final json = <String, dynamic>{
        'eventId': 'test-event-123',
        'timestamp': '2025-01-01T12:00:00.000Z',
        'eventType': 'authenticationSuccess',
        'severity': 'info',
        'message': 'User authenticated',
        'userId': 'user123',
        'outcome': 'success',
      };

      final event = AuditEvent.fromJson(json);

      expect(event.eventId, equals('test-event-123'));
      expect(event.eventType, equals(AuditEventType.authenticationSuccess));
      expect(event.severity, equals(AuditSeverity.info));
      expect(event.message, equals('User authenticated'));
      expect(event.userId, equals('user123'));
      expect(event.outcome, isTrue);
    });

    test('includes details in JSON', () {
      final event = AuditEvent(
        eventType: AuditEventType.tokenIssued,
        severity: AuditSeverity.info,
        message: 'Token issued',
        details: <String, dynamic>{
          'scopes': <String>['patient/*.read'],
          'expires_in': 3600,
        },
      );

      final json = event.toJson();

      expect(json['details'], isA<Map>());
      expect(json['details']['scopes'], equals(<String>['patient/*.read']));
      expect(json['details']['expires_in'], equals(3600));
    });

    test('has string representation', () {
      final event = AuditEvent(
        eventType: AuditEventType.authenticationSuccess,
        severity: AuditSeverity.info,
        message: 'User authenticated',
      );

      final str = event.toString();

      expect(str, contains('AuditEvent'));
      expect(str, contains('authenticationSuccess'));
      expect(str, contains('info'));
    });
  });

  group('InMemoryAuditStore', () {
    late InMemoryAuditStore store;

    setUp(() {
      store = InMemoryAuditStore();
    });

    test('stores audit events', () async {
      final event = AuditEvent(
        eventType: AuditEventType.authenticationSuccess,
        severity: AuditSeverity.info,
        message: 'Test event',
      );

      await store.store(event);

      expect(store.eventCount, equals(1));
    });

    test('stores multiple events', () async {
      for (int i = 0; i < 5; i++) {
        await store.store(AuditEvent(
          eventType: AuditEventType.authenticationSuccess,
          severity: AuditSeverity.info,
          message: 'Event $i',
        ));
      }

      expect(store.eventCount, equals(5));
    });

    test('enforces max events limit', () async {
      final smallStore = InMemoryAuditStore(maxEvents: 3);

      for (int i = 0; i < 5; i++) {
        await smallStore.store(AuditEvent(
          eventType: AuditEventType.authenticationSuccess,
          severity: AuditSeverity.info,
          message: 'Event $i',
        ));
      }

      expect(smallStore.eventCount, equals(3));
    });

    test('queries by event type', () async {
      await store.store(AuditEvent(
        eventType: AuditEventType.authenticationSuccess,
        severity: AuditSeverity.info,
        message: 'Success',
      ));

      await store.store(AuditEvent(
        eventType: AuditEventType.authenticationFailure,
        severity: AuditSeverity.warning,
        message: 'Failure',
      ));

      final successes = await store.query(
        eventType: AuditEventType.authenticationSuccess,
      );

      expect(successes.length, equals(1));
      expect(successes.first.message, equals('Success'));
    });

    test('queries by time range', () async {
      final now = DateTime.now();
      final past = now.subtract(const Duration(hours: 2));
      final future = now.add(const Duration(hours: 2));

      await store.store(AuditEvent(
        eventType: AuditEventType.authenticationSuccess,
        severity: AuditSeverity.info,
        message: 'Test',
        timestamp: now,
      ));

      final results = await store.query(
        startTime: past,
        endTime: future,
      );

      expect(results.length, equals(1));
    });

    test('queries by user ID', () async {
      await store.store(AuditEvent(
        eventType: AuditEventType.authenticationSuccess,
        severity: AuditSeverity.info,
        message: 'User1',
        userId: 'user1',
      ));

      await store.store(AuditEvent(
        eventType: AuditEventType.authenticationSuccess,
        severity: AuditSeverity.info,
        message: 'User2',
        userId: 'user2',
      ));

      final user1Events = await store.query(userId: 'user1');

      expect(user1Events.length, equals(1));
      expect(user1Events.first.userId, equals('user1'));
    });

    test('queries by minimum severity', () async {
      await store.store(AuditEvent(
        eventType: AuditEventType.authenticationSuccess,
        severity: AuditSeverity.info,
        message: 'Info',
      ));

      await store.store(AuditEvent(
        eventType: AuditEventType.securityViolation,
        severity: AuditSeverity.critical,
        message: 'Critical',
      ));

      final criticalEvents = await store.query(
        minSeverity: AuditSeverity.critical,
      );

      expect(criticalEvents.length, equals(1));
      expect(criticalEvents.first.severity, equals(AuditSeverity.critical));
    });

    test('limits query results', () async {
      for (int i = 0; i < 10; i++) {
        await store.store(AuditEvent(
          eventType: AuditEventType.authenticationSuccess,
          severity: AuditSeverity.info,
          message: 'Event $i',
        ));
      }

      final limited = await store.query(limit: 5);

      expect(limited.length, equals(5));
    });

    test('sorts by timestamp descending', () async {
      final event1 = AuditEvent(
        eventType: AuditEventType.authenticationSuccess,
        severity: AuditSeverity.info,
        message: 'First',
        timestamp: DateTime.now().subtract(const Duration(minutes: 2)),
      );

      final event2 = AuditEvent(
        eventType: AuditEventType.authenticationSuccess,
        severity: AuditSeverity.info,
        message: 'Second',
        timestamp: DateTime.now().subtract(const Duration(minutes: 1)),
      );

      await store.store(event1);
      await store.store(event2);

      final results = await store.query();

      expect(results.first.message, equals('Second')); // Most recent first
      expect(results.last.message, equals('First'));
    });

    test('cleans up old events', () async {
      final old = DateTime.now().subtract(const Duration(days: 2));

      await store.store(AuditEvent(
        eventType: AuditEventType.authenticationSuccess,
        severity: AuditSeverity.info,
        message: 'Old event',
        timestamp: old,
      ));

      await store.store(AuditEvent(
        eventType: AuditEventType.authenticationSuccess,
        severity: AuditSeverity.info,
        message: 'New event',
      ));

      await store.cleanup(
          olderThan: DateTime.now().subtract(const Duration(days: 1)));

      expect(store.eventCount, equals(1));
    });

    test('clears all events', () async {
      for (int i = 0; i < 5; i++) {
        await store.store(AuditEvent(
          eventType: AuditEventType.authenticationSuccess,
          severity: AuditSeverity.info,
          message: 'Event $i',
        ));
      }

      await store.cleanup();

      expect(store.eventCount, equals(0));
    });
  });

  group('AuditLogger', () {
    late AuditLogger auditLogger;
    late InMemoryAuditStore store;

    setUp(() {
      store = InMemoryAuditStore();
      auditLogger = AuditLogger(
        store: store,
        sessionId: 'test-session',
        clientId: 'test-client',
      );
    });

    test('logs authentication attempt', () async {
      await auditLogger.logAuthenticationAttempt(
        userId: 'user123',
        ipAddress: '192.168.1.1',
      );

      final events = await store.query();

      expect(events.length, equals(1));
      expect(
          events.first.eventType, equals(AuditEventType.authenticationAttempt));
      expect(events.first.userId, equals('user123'));
      expect(events.first.ipAddress, equals('192.168.1.1'));
    });

    test('logs authentication success', () async {
      await auditLogger.logAuthenticationSuccess(
        userId: 'user123',
        details: <String, dynamic>{'method': 'password'},
      );

      final events = await store.query();

      expect(
          events.first.eventType, equals(AuditEventType.authenticationSuccess));
      expect(events.first.outcome, isTrue);
      expect(events.first.details['method'], equals('password'));
    });

    test('logs authentication failure', () async {
      await auditLogger.logAuthenticationFailure(
        userId: 'user123',
        reason: 'Invalid credentials',
        errorCode: 'invalid_credentials',
      );

      final events = await store.query();

      expect(
          events.first.eventType, equals(AuditEventType.authenticationFailure));
      expect(events.first.outcome, isFalse);
      expect(events.first.errorCode, equals('invalid_credentials'));
    });

    test('logs security violation', () async {
      await auditLogger.logSecurityViolation(
        violation: 'CSRF detected',
        details: 'Token mismatch',
        userId: 'attacker',
      );

      final events = await store.query();

      expect(events.first.eventType, equals(AuditEventType.securityViolation));
      expect(events.first.severity, equals(AuditSeverity.critical));
      expect(events.first.outcome, isFalse);
    });

    test('logs token issued', () async {
      await auditLogger.logTokenIssued(
        userId: 'user123',
        scopes: <String>['patient/*.read', 'user/Practitioner.read'],
      );

      final events = await store.query();

      expect(events.first.eventType, equals(AuditEventType.tokenIssued));
      expect(events.first.details['scopes'], isA<List>());
    });

    test('logs token refreshed', () async {
      await auditLogger.logTokenRefreshed(userId: 'user123');

      final events = await store.query();

      expect(events.first.eventType, equals(AuditEventType.tokenRefreshed));
      expect(events.first.outcome, isTrue);
    });

    test('logs resource access', () async {
      await auditLogger.logResourceAccess(
        resourceType: 'Patient',
        resourceId: '123',
        operation: 'read',
        userId: 'user123',
      );

      final events = await store.query();

      expect(events.first.eventType, equals(AuditEventType.resourceAccessed));
      expect(events.first.resourceType, equals('Patient'));
      expect(events.first.resourceId, equals('123'));
    });

    test('includes session ID in events', () async {
      await auditLogger.logAuthenticationSuccess(userId: 'user123');

      final events = await store.query();

      expect(events.first.sessionId, equals('test-session'));
    });

    test('includes client ID in events', () async {
      await auditLogger.logAuthenticationSuccess(userId: 'user123');

      final events = await store.query();

      expect(events.first.clientId, equals('test-client'));
    });

    test('queries events from logger', () async {
      await auditLogger.logAuthenticationSuccess(userId: 'user123');
      await auditLogger.logAuthenticationFailure(
        reason: 'Test',
        errorCode: 'test',
      );

      final events = await auditLogger.queryEvents(
        eventType: AuditEventType.authenticationSuccess,
      );

      expect(events.length, equals(1));
    });
  });
}
