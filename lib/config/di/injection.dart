import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart'; 

final locator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', 
  preferRelativeImports: true, 
  asExtension: false, 
)
Future<void> configureDependencies() => $initGetIt(locator);
