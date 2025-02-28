part of '../pages/settings_page.dart';

class _OptionsListView extends StatelessWidget {
  const _OptionsListView(this.options);

  final List<Option> options;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: options.length + 1,
      itemBuilder: (context, index) {
        return index == options.length
            ? const SizedBox.shrink()
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
                tag: '$_kHeroTagPrefix$index',
                child: SvgPicture.asset(
                  options[index].iconPath,
                  colorFilter:
                      context.theme.iconTheme.color != null
                          ? ColorFilter.mode(
                            context.theme.iconTheme.color!,
                            BlendMode.srcIn,
                          )
                          : null,
                ),
              ),
              title: Text(
                options[index].title,
                style: context.textTheme.titleMedium,
              ),
            );
      },
      separatorBuilder: (_, __) {
        return const Divider(thickness: 1, height: AppPadding.xSmall);
      },
    );
  }
}
