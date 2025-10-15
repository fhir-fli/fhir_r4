/// Audit logging for security events and HIPAA compliance
/// Logs authentication events, token access, and security violations
library;

import 'package:logging/logging.dart';
import 'package:uuid/uuid.dart';

/// Types of audit events
enum AuditEventType {
  /// Authentication events
  authenticationAttempt,
  authenticationSuccess,
  authenticationFailure,
  authenticationCancelled,

  /// Authorization events
  authorizationGranted,
  authorizationDenied,

  /// Token events
  tokenIssued,
  tokenRefreshed,
  tokenRevoked,
  tokenExpired,
  tokenValidated,
  tokenIntrospected,

  /// Session events
  sessionStarted,
  sessionEnded,
  sessionTimeout,

  /// Security events
  securityViolation,
  csrfDetected,
  replayAttackDetected,
  invalidSignature,
  expiredToken,
  tamperedToken,

  /// Resource access
  resourceAccessed,
  resourceModified,
  resourceCreated,
  resourceDeleted,

  /// Configuration events
  endpointDiscovered,
  capabilitiesLoaded,

  /// Error events
  networkError,
  configurationError,
  unexpectedError,
}

/// Severity level for audit events
enum AuditSeverity {
  /// Informational - normal operations
  info,

  /// Warning - potential issues
  warning,

  /// Error - operation failures
  error,

  /// Critical - security violations
  critical,
}

/// Represents an audit event
class AuditEvent {
  AuditEvent({
    required this.eventType,
    required this.severity,
    required this.message,
    String? eventId,
    DateTime? timestamp,
    this.userId,
    this.clientId,
    this.sessionId,
    this.resourceType,
    this.resourceId,
    this.ipAddress,
    this.userAgent,
    this.details = const <String, dynamic>{},
    this.outcome,
    this.errorCode,
  })  : eventId = eventId ?? const Uuid().v4(),
        timestamp = timestamp ?? DateTime.now();

  /// Unique identifier for this event
  final String eventId;

  /// When the event occurred
  final DateTime timestamp;

  /// Type of event
  final AuditEventType eventType;

  /// Severity level
  final AuditSeverity severity;

  /// Human-readable message
  final String message;

  /// User identifier (if available)
  final String? userId;

  /// OAuth client ID
  final String? clientId;

  /// Session identifier
  final String? sessionId;

  /// FHIR resource type (if applicable)
  final String? resourceType;

  /// FHIR resource ID (if applicable)
  final String? resourceId;

  /// Client IP address
  final String? ipAddress;

  /// User agent string
  final String? userAgent;

  /// Additional structured details
  final Map<String, dynamic> details;

  /// Event outcome (success/failure)
  final bool? outcome;

  /// Error code (if failure)
  final String? errorCode;

  /// Convert to JSON for storage/transmission
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'eventId': eventId,
      'timestamp': timestamp.toIso8601String(),
      'eventType': eventType.name,
      'severity': severity.name,
      'message': message,
      if (userId != null) 'userId': userId,
      if (clientId != null) 'clientId': clientId,
      if (sessionId != null) 'sessionId': sessionId,
      if (resourceType != null) 'resourceType': resourceType,
      if (resourceId != null) 'resourceId': resourceId,
      if (ipAddress != null) 'ipAddress': ipAddress,
      if (userAgent != null) 'userAgent': userAgent,
      if (outcome != null) 'outcome': outcome! ? 'success' : 'failure',
      if (errorCode != null) 'errorCode': errorCode,
      if (details.isNotEmpty) 'details': details,
    };
  }

  /// Create from JSON
  factory AuditEvent.fromJson(Map<String, dynamic> json) {
    return AuditEvent(
      eventId: json['eventId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      eventType: AuditEventType.values.byName(json['eventType'] as String),
      severity: AuditSeverity.values.byName(json['severity'] as String),
      message: json['message'] as String,
      userId: json['userId'] as String?,
      clientId: json['clientId'] as String?,
      sessionId: json['sessionId'] as String?,
      resourceType: json['resourceType'] as String?,
      resourceId: json['resourceId'] as String?,
      ipAddress: json['ipAddress'] as String?,
      userAgent: json['userAgent'] as String?,
      outcome: json['outcome'] != null ? json['outcome'] == 'success' : null,
      errorCode: json['errorCode'] as String?,
      details: json['details'] as Map<String, dynamic>? ?? <String, dynamic>{},
    );
  }

  @override
  String toString() => 'AuditEvent($eventType, $severity, $message)';
}

/// Interface for audit event storage
abstract class AuditEventStore {
  /// Store an audit event
  Future<void> store(AuditEvent event);

  /// Query audit events
  Future<List<AuditEvent>> query({
    DateTime? startTime,
    DateTime? endTime,
    String? userId,
    String? sessionId,
    AuditEventType? eventType,
    AuditSeverity? minSeverity,
    int? limit,
  });

  /// Clear old audit events
  Future<void> cleanup({DateTime? olderThan});
}

/// In-memory audit event store (for development/testing)
class InMemoryAuditStore implements AuditEventStore {
  InMemoryAuditStore({this.maxEvents = 10000});

  final List<AuditEvent> _events = <AuditEvent>[];
  final int maxEvents;

  @override
  Future<void> store(AuditEvent event) async {
    _events.add(event);

    // Keep only most recent events
    if (_events.length > maxEvents) {
      _events.removeRange(0, _events.length - maxEvents);
    }
  }

  @override
  Future<List<AuditEvent>> query({
    DateTime? startTime,
    DateTime? endTime,
    String? userId,
    String? sessionId,
    AuditEventType? eventType,
    AuditSeverity? minSeverity,
    int? limit,
  }) async {
    var results = _events.where((event) {
      if (startTime != null && event.timestamp.isBefore(startTime)) {
        return false;
      }
      if (endTime != null && event.timestamp.isAfter(endTime)) {
        return false;
      }
      if (userId != null && event.userId != userId) return false;
      if (sessionId != null && event.sessionId != sessionId) return false;
      if (eventType != null && event.eventType != eventType) return false;
      if (minSeverity != null && event.severity.index < minSeverity.index) {
        return false;
      }
      return true;
    }).toList();

    // Sort by timestamp descending
    results.sort((a, b) => b.timestamp.compareTo(a.timestamp));

    if (limit != null && results.length > limit) {
      results = results.sublist(0, limit);
    }

    return results;
  }

  @override
  Future<void> cleanup({DateTime? olderThan}) async {
    if (olderThan == null) {
      _events.clear();
      return;
    }

    _events.removeWhere((event) => event.timestamp.isBefore(olderThan));
  }

  /// Get event count
  int get eventCount => _events.length;
}

/// Audit logger for security events
class AuditLogger {
  AuditLogger({
    AuditEventStore? store,
    Logger? logger,
    this.sessionId,
    this.clientId,
  })  : _store = store ?? InMemoryAuditStore(),
        _logger = logger ?? Logger('AuditLogger');

  final AuditEventStore _store;
  final Logger _logger;

  /// Current session ID
  final String? sessionId;

  /// OAuth client ID
  final String? clientId;

  /// Log an audit event
  Future<void> logEvent(AuditEvent event) async {
    try {
      // Add to store
      await _store.store(event);

      // Also log to standard logger
      final level = _severityToLogLevel(event.severity);
      _logger.log(
        level,
        '[AUDIT] ${event.eventType.name}: ${event.message}',
        event,
      );
    } catch (e, stackTrace) {
      _logger.severe('Failed to log audit event', e, stackTrace);
    }
  }

  /// Log authentication attempt
  Future<void> logAuthenticationAttempt({
    required String userId,
    String? ipAddress,
  }) async {
    await logEvent(AuditEvent(
      eventType: AuditEventType.authenticationAttempt,
      severity: AuditSeverity.info,
      message: 'User authentication attempt',
      userId: userId,
      clientId: clientId,
      sessionId: sessionId,
      ipAddress: ipAddress,
    ));
  }

  /// Log successful authentication
  Future<void> logAuthenticationSuccess({
    required String userId,
    String? ipAddress,
    Map<String, dynamic>? details,
  }) async {
    await logEvent(AuditEvent(
      eventType: AuditEventType.authenticationSuccess,
      severity: AuditSeverity.info,
      message: 'User authenticated successfully',
      userId: userId,
      clientId: clientId,
      sessionId: sessionId,
      ipAddress: ipAddress,
      outcome: true,
      details: details ?? <String, dynamic>{},
    ));
  }

  /// Log authentication failure
  Future<void> logAuthenticationFailure({
    String? userId,
    required String reason,
    String? errorCode,
    String? ipAddress,
  }) async {
    await logEvent(AuditEvent(
      eventType: AuditEventType.authenticationFailure,
      severity: AuditSeverity.warning,
      message: 'Authentication failed: $reason',
      userId: userId,
      clientId: clientId,
      sessionId: sessionId,
      ipAddress: ipAddress,
      outcome: false,
      errorCode: errorCode,
      details: <String, dynamic>{'reason': reason},
    ));
  }

  /// Log security violation
  Future<void> logSecurityViolation({
    required String violation,
    required String details,
    String? userId,
    String? ipAddress,
  }) async {
    await logEvent(AuditEvent(
      eventType: AuditEventType.securityViolation,
      severity: AuditSeverity.critical,
      message: 'Security violation detected: $violation',
      userId: userId,
      clientId: clientId,
      sessionId: sessionId,
      ipAddress: ipAddress,
      outcome: false,
      details: <String, dynamic>{'violation': violation, 'details': details},
    ));
  }

  /// Log token issued
  Future<void> logTokenIssued({
    String? userId,
    required List<String> scopes,
  }) async {
    await logEvent(AuditEvent(
      eventType: AuditEventType.tokenIssued,
      severity: AuditSeverity.info,
      message: 'Access token issued',
      userId: userId,
      clientId: clientId,
      sessionId: sessionId,
      outcome: true,
      details: <String, dynamic>{'scopes': scopes},
    ));
  }

  /// Log token refreshed
  Future<void> logTokenRefreshed({String? userId}) async {
    await logEvent(AuditEvent(
      eventType: AuditEventType.tokenRefreshed,
      severity: AuditSeverity.info,
      message: 'Access token refreshed',
      userId: userId,
      clientId: clientId,
      sessionId: sessionId,
      outcome: true,
    ));
  }

  /// Log resource access
  Future<void> logResourceAccess({
    required String resourceType,
    required String resourceId,
    required String operation,
    String? userId,
  }) async {
    await logEvent(AuditEvent(
      eventType: AuditEventType.resourceAccessed,
      severity: AuditSeverity.info,
      message: 'Resource accessed: $operation $resourceType/$resourceId',
      userId: userId,
      clientId: clientId,
      sessionId: sessionId,
      resourceType: resourceType,
      resourceId: resourceId,
      outcome: true,
      details: <String, dynamic>{'operation': operation},
    ));
  }

  /// Convert severity to log level
  Level _severityToLogLevel(AuditSeverity severity) {
    switch (severity) {
      case AuditSeverity.info:
        return Level.INFO;
      case AuditSeverity.warning:
        return Level.WARNING;
      case AuditSeverity.error:
        return Level.SEVERE;
      case AuditSeverity.critical:
        return Level.SHOUT;
    }
  }

  /// Query audit events
  Future<List<AuditEvent>> queryEvents({
    DateTime? startTime,
    DateTime? endTime,
    String? userId,
    AuditEventType? eventType,
    AuditSeverity? minSeverity,
    int? limit,
  }) async {
    return _store.query(
      startTime: startTime,
      endTime: endTime,
      userId: userId,
      sessionId: sessionId,
      eventType: eventType,
      minSeverity: minSeverity,
      limit: limit,
    );
  }

  /// Get store for direct access
  AuditEventStore get store => _store;
}
