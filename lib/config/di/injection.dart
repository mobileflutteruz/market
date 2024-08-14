import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/config/di/injection.config.dart';  // Make sure this path is correct

final locator = GetIt.instance;
 
@InjectableInit(  
  initializerName: 'init', // default  
  preferRelativeImports: true, // default  
  asExtension: true, // default  
) 
Future <void> configureDependencies() => locator.init();