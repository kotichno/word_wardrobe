// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:word_wardrobe/features/dictionary/data/dictionary_interactor.dart'
    as _i4;
import 'package:word_wardrobe/features/dictionary/data/dictionary_storage.dart'
    as _i3;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await gh.singletonAsync<_i3.DictionaryStorage>(
      () => _i3.DictionaryStorage.create(),
      preResolve: true,
    );
    gh.singleton<_i4.DictionaryInteractor>(
      _i4.DictionaryInteractor(gh<_i3.DictionaryStorage>()),
      dispose: (i) => i.dispose(),
    );
    return this;
  }
}
