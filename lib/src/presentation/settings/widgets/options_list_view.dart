part of '../pages/settings_page.dart';

class _OptionsListView extends StatelessWidget {
  const _OptionsListView(
    this.options,
  );

  final List<Option> options;

  @override
  Widget build(BuildContext context) => ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: options.length + 1,
        itemBuilder: (context, index) => index == options.length
            ? nil
            : ListTile(
                onTap: () => context.read<SettingsCubit>().onTapListTile(
                      context: context,
                      index: index,
                      theme: const _ThemesBottomSheet(),
                    ),
                leading: Hero(
                  tag: 'option$index',
                  child: SvgPicture.asset(
                    options[index].iconPath,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
                title: Text(
                  options[index].title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
        separatorBuilder: (context, index) => const Divider(
          thickness: 1,
          height: 4,
        ),
      );
}
