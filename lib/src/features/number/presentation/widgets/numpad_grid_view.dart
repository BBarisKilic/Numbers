part of '../pages/number_page.dart';

class _NumpadGridView extends StatelessWidget {
  const _NumpadGridView({
    required TextEditingController controller,
  }) : _controller = controller;

  final TextEditingController _controller;

  void _onPressedNumberButton(String number) {
    if (_controller.text.length > 15) return;
    if (_controller.text == '0') {
      _controller.text = number;
      return;
    }

    _controller.text += number;
  }

  void _onPressedClearButton() {
    _controller.text = '0';
  }

  void _onPressedRemoveLastButton() {
    if (_controller.text.length == 1) {
      _controller.text = '0';
      return;
    }

    _controller.text =
        _controller.text.substring(0, _controller.text.length - 1);
  }

  void _onPressedRandomButton(BuildContext context) {
    context.read<NumberCubit>().getRandomNumberInfo();
  }

  void _onPressedSearchButton(BuildContext context) {
    context
        .read<NumberCubit>()
        .getNumberInfo(number: int.parse(_controller.text));
  }

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
      children: [
        _NumpadNumberButton(
          '${NumpadNumber.one}',
          onPressed: () => _onPressedNumberButton('${NumpadNumber.one}'),
        ),
        _NumpadNumberButton(
          '${NumpadNumber.two}',
          onPressed: () => _onPressedNumberButton('${NumpadNumber.two}'),
        ),
        _NumpadNumberButton(
          '${NumpadNumber.three}',
          onPressed: () => _onPressedNumberButton('${NumpadNumber.three}'),
        ),
        _NumpadActionButton(
          kNumpadClearText,
          onPressed: _onPressedClearButton,
        ),
        _NumpadNumberButton(
          '${NumpadNumber.four}',
          onPressed: () => _onPressedNumberButton('${NumpadNumber.four}'),
        ),
        _NumpadNumberButton(
          '${NumpadNumber.five}',
          onPressed: () => _onPressedNumberButton('${NumpadNumber.five}'),
        ),
        _NumpadNumberButton(
          '${NumpadNumber.six}',
          onPressed: () => _onPressedNumberButton('${NumpadNumber.six}'),
        ),
        _NumpadActionButton(
          kNumpadRemoveLastText,
          onPressed: _onPressedRemoveLastButton,
        ),
        _NumpadNumberButton(
          '${NumpadNumber.seven}',
          onPressed: () => _onPressedNumberButton('${NumpadNumber.seven}'),
        ),
        _NumpadNumberButton(
          '${NumpadNumber.eight}',
          onPressed: () => _onPressedNumberButton('${NumpadNumber.eight}'),
        ),
        _NumpadNumberButton(
          '${NumpadNumber.nine}',
          onPressed: () => _onPressedNumberButton('${NumpadNumber.nine}'),
        ),
        _NumpadActionButton(
          kNumpadRandomText,
          onPressed: () => _onPressedRandomButton(context),
        ),
        _NumpadNumberButton(
          '${NumpadNumber.zero}',
          crossAxisCellCount: 2,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(12),
          ),
          onPressed: () => _onPressedNumberButton('${NumpadNumber.zero}'),
        ),
        _NumpadActionButton(
          kNumpadSearchText,
          crossAxisCellCount: 2,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(12),
          ),
          onPressed: () => _onPressedSearchButton(context),
        ),
      ],
    );
  }
}
