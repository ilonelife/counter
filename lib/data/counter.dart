class Counter {
  int _counter = 0;

//  공통 인터페이스 만들기  implement  extends   with

  int get counter => _counter;

  void incrementCount() {
    // 상태 바꾸고
    _counter++;
  }
}
