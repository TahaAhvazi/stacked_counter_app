import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_counter_app/ui/common/ui_helpers.dart';

import 'counter_viewmodel.dart';

class CounterView extends StackedView<CounterViewModel> {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CounterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: viewModel.incrementCounter,
            child: const Center(
              child: Icon(
                Icons.add,
              ),
            ),
          ),
          horizontalSpaceSmall,
          FloatingActionButton(
            onPressed: viewModel.decrementCounter,
            child: const Center(
              child: Icon(
                Icons.remove,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Counter Value: ${viewModel.counter}",
          style: TextStyle(
            fontSize: getResponsiveFontSize(context),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  @override
  CounterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CounterViewModel();
}
