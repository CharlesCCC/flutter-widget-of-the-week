import 'package:flutter/material.dart';

class NumberManagerWidget extends StatefulWidget {
  final Widget child;

  NumberManagerWidget({Key key, @required this.child})
      : assert(child != null),
        super(key: key);

  @override
  State<StatefulWidget> createState() => NumberManagerWidgetState();
}

class NumberManagerWidgetState extends State<NumberManagerWidget> {
  int firstTick, secondTick, thirdTick;

  @override
  void initState() {
    super.initState();
    firstTick = secondTick = thirdTick = 0;
  }

  // ... snip code for handling timers, etc, to update the tick values ...

  @override
  Widget build(BuildContext context) {
    return NumberModel(
      firstValue: firstTick,
      secondValue: secondTick,
      thirdValue: thirdTick,
      child: widget.child,
    );
  }
}

enum NUMBER_TYPE {
  FIRST,
  SECOND,
  THIRD,
}

class NumberModel extends InheritedModel<NUMBER_TYPE> {
  final int firstValue, secondValue, thirdValue;

  NumberModel({
    @required this.firstValue,
    @required this.secondValue,
    @required this.thirdValue,
    @required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(NumberModel old) {
    return firstValue != old.firstValue ||
        secondValue != old.secondValue ||
        thirdValue != old.thirdValue;
  }

  @override
  bool updateShouldNotifyDependent(NumberModel old, Set<NUMBER_TYPE> aspects) {
    return (aspects.contains(NUMBER_TYPE.FIRST) &&
            old.firstValue != firstValue) ||
        (aspects.contains(NUMBER_TYPE.SECOND) &&
            old.secondValue != secondValue) ||
        (aspects.contains(NUMBER_TYPE.THIRD) && old.thirdValue != thirdValue);
  }

  static NumberModel of(BuildContext context, {NUMBER_TYPE aspect}) {
    return InheritedModel.inheritFrom<NumberModel>(context, aspect: aspect);
  }
}
