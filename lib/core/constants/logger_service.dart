import 'package:logger/logger.dart';

class LoggingService {
  late Logger _logger;

  LoggingService._internal() {
    _logger = Logger(
      printer: PrettyPrinter(
        methodCount: 2, // Ko'rsatiladigan metodlar soni
        errorMethodCount: 8, // Stacktrace bilan ko'rsatiladigan metodlar soni
        lineLength: 120, // Chiqariladigan qator uzunligi
        colors: true, // Rangli log xabarlar
        printEmojis: true, // Emoji qo'shish
        printTime: true, // Vaqtni ko'rsatish
      ),
    );
  }

  static final LoggingService _instance = LoggingService._internal();

  factory LoggingService() => _instance;

  void logDebug(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.d(message, error: error, stackTrace: stackTrace);
  }

  void logInfo(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.i(message, error: error, stackTrace: stackTrace);
  }

  void logWarning(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.w(message, error: error, stackTrace: stackTrace);
  }

  void logError(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }

  void logVerbose(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.v(message, error: error, stackTrace: stackTrace);
  }

 
}
