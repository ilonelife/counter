import 'package:counter/data/data_source/counter.dart';
import 'package:counter/data/repository/count_repository.dart';

class DoubleCounterRepositoryImpl implements CountRepository {
  final Counter _counter;

  DoubleCounterRepositoryImpl(this._counter);

  @override
  int increment() {
    _counter.count += 2;
    return _counter.count;
  }
}
