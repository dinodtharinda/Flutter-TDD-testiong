import 'package:flutter_tdd_testing/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Counter counter;

  setUp(() {
    counter = Counter();
  });

  //setup is called before every test
  //setupall is called before all the tests

  //setup -> test -> setup -> test -> setup test
  //setupall -> test -> test -> test

  //given when then

  group('Counter class -', () {
    test(
      'given counter class when it is instantiated then value of count should be 0',
      () {
        //Act
        final val = counter.count;
        // Assert
        expect(val, 0);
      },
    );

    test(
      'given counter class when it is incremented then value fo count should 1',
      () {
        //Act
        counter.increment();
        //Assert
        expect(counter.count, 1);
      },
    );

    test(
      'given counter class when it is decremented then value fo count should -1',
      () {
        //Act
        counter.decrement();
        //Assert
        expect(counter.count, -1);
      },
    );

    test(
      'given counter class when it is rested then value fo count should 0',
      () {
        //Act
        counter.reset();
        //Assert
        expect(counter.count, 0);
      },
    );
  });
  //post test
  // tearDown(() {});
  // tearDownAll(() {});
  // test -> teardown -> test -> teardown test teardown
  // test -> test -> test -> teardownall
}
