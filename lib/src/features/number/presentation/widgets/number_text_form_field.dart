part of '../pages/number_page.dart';

class _NumberTextFormField extends StatelessWidget {
  const _NumberTextFormField({required TextEditingController controller})
    : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      style: context.textTheme.titleMedium,
      enabled: false,
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          borderSide: BorderSide(color: context.theme.dividerColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          borderSide: BorderSide(color: context.theme.dividerColor),
        ),
      ),
    );
  }
}
