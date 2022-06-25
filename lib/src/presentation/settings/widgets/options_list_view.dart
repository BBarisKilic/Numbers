import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nil/nil.dart';

import '../cubit/settings_cubit.dart';
import 'themes_bottom_sheet.dart';

class OptionsListView extends StatelessWidget {
  const OptionsListView(
    this.options, {
    Key? key,
  }) : super(key: key);

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
                      theme: const ThemesBottomSheet(),
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
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
        separatorBuilder: (context, index) => const Divider(
          thickness: 1.0,
          height: 4.0,
        ),
      );
}
