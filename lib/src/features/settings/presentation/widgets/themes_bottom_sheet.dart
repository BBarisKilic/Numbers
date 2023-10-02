part of '../pages/settings_page.dart';

class _ThemesBottomSheet extends StatelessWidget {
  const _ThemesBottomSheet();

  @override
  Widget build(BuildContext context) => Material(
        color: Theme.of(context).colorScheme.background,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalSpace,
                vertical: kLongVerticalSpace,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: kIconSize),
                      Hero(
                        tag: 'option0',
                        child: SvgPicture.asset(
                          kThemeIconPath,
                          color: Theme.of(context).iconTheme.color,
                          height: MediaQuery.of(context).size.height * 0.10,
                        ),
                      ),
                      InkWell(
                        onTap: () => context
                            .read<SettingsCubit>()
                            .onTapCloseButton(context),
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                        highlightColor: Colors.transparent,
                        child: SvgPicture.asset(
                          kCloseIconPath,
                          color: Theme.of(context).iconTheme.color,
                          width: kIconSize,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: kVerticalSpace),
                  Text(
                    kThemeOptionsText,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox(height: kVeryLongVerticalSpace),
                  _buildThemeSelectionRow(context),
                ],
              ),
            ),
          ),
        ),
      );

  Widget _buildThemeSelectionRow(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            kThemeText,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SharpToggleSwitch(
            onToggle: (position) => context
                .read<SettingsCubit>()
                .onToggleThemeSwitch(context, position),
            initialPosition:
                context.read<AppCubit>().state.theme == AvailableTheme.light
                    ? SwitchPosition.left
                    : SwitchPosition.right,
            leftSwitch: kLightText,
            rightSwitch: kDarkText,
            primaryColor: Theme.of(context).primaryColorLight,
            secondaryColor: Theme.of(context).colorScheme.background,
          ),
        ],
      );
}
