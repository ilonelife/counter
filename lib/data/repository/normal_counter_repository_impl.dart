import 'package:counter/data/data_source/counter.dart';
import 'package:counter/data/repository/count_repository.dart';

class NormalCounterRepositoryImpl implements CountRepository {
  final Counter _counter;

  NormalCounterRepositoryImpl(this._counter);

  @override
  int increment() {
    _counter.count++;
    return _counter.count;
  }
}
