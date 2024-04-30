import 'package:backend/hash_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@visibleForTesting

/// store sessions in memory
Map<String, Session> sessionDB = {};

/// A Session class
class Session extends Equatable {
  /// Constructor Method
  const Session({
    required this.token,
    required this.createdAt,
    required this.expiryDate,
    required this.userId,
  });

  /// The session token
  final String token;

  /// User's id
  final String userId;

  /// When the session will expire
  final DateTime expiryDate;

  /// When the session was created
  final DateTime createdAt;

  @override
  List<Object?> get props => [token, userId, expiryDate, createdAt];
}

/// Session Repository
class SessionRepository {
  /// Create a new session
  Session createSession(String userId) {
    final session = Session(
        token: generateToken(userId),
        createdAt: DateTime.now(),
        expiryDate: DateTime.now().add(const Duration(hours: 24)),
        userId: userId);

    sessionDB[session.token] = session;
    return session;
  }

  /// Generate token from [userId]
  String generateToken(String userId) {
    return '${userId}_${DateTime.now().toIso8601String()}'.hashValue;
  }

  /// Get session from token
  Session? sessionFromToken(String token) {
    final session = sessionDB[token];

    if (session != null && session.expiryDate.isAfter(DateTime.now())) {
      return session;
    }
    return null;
  }
}
