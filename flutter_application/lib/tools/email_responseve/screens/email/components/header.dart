import 'package:flutter/material.dart';
import 'package:flutter_application/tools/email_responseve/responsive.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          // We need this back button on mobile only
          if (Responsive.isMobile(context)) const BackButton(),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/icons/Trash.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/icons/Reply.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/icons/Reply all.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/icons/Transfer.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          const Spacer(),
          // We don't need print option on mobile
          if (Responsive.isDesktop(context))
            IconButton(
              icon: WebsafeSvg.asset(
                "assets/icons/Printer.svg",
                width: 24,
              ),
              onPressed: () {},
            ),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/icons/Markup.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/icons/More vertical.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
