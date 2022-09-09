import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:revanced_manager/ui/widgets/shared/custom_card.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      theme: ExpandableThemeData(
        hasIcon: true,
        iconColor: Theme.of(context).iconTheme.color,
        iconPadding: const EdgeInsets.symmetric(vertical: 16.0),
        animationDuration: const Duration(milliseconds: 400),
      ),
      header: ListTile(
        contentPadding: EdgeInsets.zero,
        title: I18nText(
          'socialMediaCard.widgetTitle',
          child: const Text(
            '',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        subtitle: I18nText('socialMediaCard.widgetSubtitle'),
      ),
      expanded: CustomCard(
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(
                  FontAwesomeIcons.github,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              title: Text(
                'GitHub',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              subtitle: Text(
                'github.com/revanced',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              onTap: () => launchUrl(
                Uri.parse('https://github.com/revanced'),
                mode: LaunchMode.externalApplication,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Padding(
                padding: const EdgeInsets.all(8.0).copyWith(left: 5),
                child: FaIcon(
                  FontAwesomeIcons.discord,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              title: Text(
                'Discord',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              subtitle: Text(
                'discord.gg/revanced',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              onTap: () => launchUrl(
                Uri.parse('https://discord.gg/rF2YcEjcrT'),
                mode: LaunchMode.externalApplication,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(
                  FontAwesomeIcons.telegram,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              title: Text(
                'Telegram',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              subtitle: Text(
                't.me/app_revanced',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              onTap: () => launchUrl(
                Uri.parse('https://t.me/app_revanced'),
                mode: LaunchMode.externalApplication,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(
                  FontAwesomeIcons.reddit,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              title: Text(
                'Reddit',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              subtitle: Text(
                'r/revancedapp',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              onTap: () => launchUrl(
                Uri.parse('https://reddit.com/r/revancedapp'),
                mode: LaunchMode.externalApplication,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              title: Text(
                'Twitter',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              subtitle: Text(
                '@revancedapp',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              onTap: () => launchUrl(
                Uri.parse('https://twitter.com/revancedapp'),
                mode: LaunchMode.externalApplication,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(
                  FontAwesomeIcons.youtube,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              title: Text(
                'YouTube',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              subtitle: Text(
                'youtube.com/revanced',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              onTap: () => launchUrl(
                Uri.parse('https://youtube.com/revanced'),
                mode: LaunchMode.externalApplication,
              ),
            ),
          ],
        ),
      ),
      collapsed: Container(),
    );
  }
}
