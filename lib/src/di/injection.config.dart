// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:get_it_example/src/modules/local_storage/hive_storage.dart'
    as _i6;
import 'package:injectable/injectable.dart' as _i2;

import '../controllers/counter_controller.dart' as _i3;
import '../modules/local_storage/key_value_storage_abstract.dart' as _i4;
import '../modules/local_storage/shared_prefs.dart' as _i5;

const String _sharedPrefsEnv = 'sharedPrefsEnv';
const String _hiveEnv = 'hiveEnv';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.CounterController>(_i3.CounterController());
    gh.singleton<_i4.IKeyValueStorage>(
      _i5.SharedPreferencesStorage(),
      registerFor: {_sharedPrefsEnv},
    );
    gh.singleton<_i4.IKeyValueStorage>(
      _i6.HiveStorage(),
      registerFor: {_hiveEnv},
    );
    return this;
  }
}
