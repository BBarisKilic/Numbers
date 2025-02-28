part of '../pages/number_page.dart';

class _NumpadGridView extends StatelessWidget {
  const _NumpadGridView({required TextEditingController controller})
    : _controller = controller;

  final TextEditingController _controller;

  void _onPressedNumberButton(String number) {
    if (_controller.text.length > 15) return;
    if (_controller.text == '${_NumpadNumber.zero}') {
      _controller.text = number;
      return;
    }

    _controller.text += number;
  }

  void _onPressedClearButton() {
    _controller.text = '${_NumpadNumber.zero}';
  }

  void _onPressedRemoveLastButton() {
    if (_controller.text.length == 1) {
      _controller.text = '${_NumpadNumber.zero}';
      return;
    }

    _controller.text = _controller.text.substring(
      0,
      _controller.text.length - 1,
    );
  }

  void _onPressedRandomButton(BuildContext context) {
    context.read<NumberCubit>().getRandomNumberInfo();
  }

  void _onPressedSearchButton(BuildContext context) {
    context.read<NumberCubit>().getNumberInfo(
      number: int.parse(_controller.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
      children: [
        _NumpadNumberButton(
          '${_NumpadNumber.one}',
          onPressed: () => _onPressedNumberButton('${_NumpadNumber.one}'),
        ),
        _NumpadNumberButton(
          '${_NumpadNumber.two}',
          onPressed: () => _onPressedNumberButton('${_NumpadNumber.two}'),
        ),
        _NumpadNumberButton(
          '${_NumpadNumber.three}',
          onPressed: () => _onPressedNumberButton('${_NumpadNumber.three}'),
        ),
        _NumpadActionButton(
          context.l10n.numpadClear,
          onPressed: _onPressedClearButton,
        ),
        _NumpadNumberButton(
          '${_NumpadNumber.four}',
          onPressed: () => _onPressedNumberButton('${_NumpadNumber.four}'),
        ),
        _NumpadNumberButton(
          '${_NumpadNumber.five}',
          onPressed: () => _onPressedNumberButton('${_NumpadNumber.five}'),
        ),
        _NumpadNumberButton(
          '${_NumpadNumber.six}',
          onPressed: () => _onPressedNumberButton('${_NumpadNumber.six}'),
        ),
        _NumpadActionButton(
          context.l10n.numpadRemoveLast,
          onPressed: _onPressedRemoveLastButton,
        ),
        _NumpadNumberButton(
          '${_NumpadNumber.seven}',
          onPressed: () => _onPressedNumberButton('${_NumpadNumber.seven}'),
        ),
        _NumpadNumberButton(
          '${_NumpadNumber.eight}',
          onPressed: () => _onPressedNumberButton('${_NumpadNumber.eight}'),
        ),
        _NumpadNumberButton(
          '${_NumpadNumber.nine}',
          onPressed: () => _onPressedNumberButton('${_NumpadNumber.nine}'),
        ),
        _NumpadActionButton(
          context.l10n.numpadRandom,
          onPressed: () => _onPressedRandomButton(context),
        ),
        _NumpadNumberButton(
          '${_NumpadNumber.zero}',
          crossAxisCellCount: 2,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(12),
          ),
          onPressed: () => _onPressedNumberButton('${_NumpadNumber.zero}'),
        ),
        _NumpadActionButton(
          context.l10n.numpadSearch,
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
