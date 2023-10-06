part of '../pages/settings_page.dart';

class _OptionsListView extends StatelessWidget {
  const _OptionsListView(
    this.options,
  );

  final List<Option> options;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: options.length + 1,
      itemBuilder: (context, index) {
        return index == options.length
            ? nil
            : ListTile(
                onTap: () async {
                  switch (index) {
                    case 0:
                      await showModalBottomSheet<void>(
                        backgroundColor: Colors.transparent,
                        context: context,
                        useRootNavigator: true,
                        elevation: 4,
                        builder: (_) => const _ThemesBottomSheet(),
                      );
                    default:
                      break;
                  }
                },
                leading: Hero(
                  tag: 'option$index',
                  child: SvgPicture.asset(
                    options[index].iconPath,
                    color: context.theme.iconTheme.color,
                  ),
                ),
                title: Text(
                  options[index].title,
                  style: context.textTheme.titleMedium,
                ),
              );
      },
      separatorBuilder: (context, index) {
        return const Divider(thickness: 1, height: 4);
      },
    );
  }
}
