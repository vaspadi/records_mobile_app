import 'package:flutter/material.dart';
import 'package:mobile_app/constants/shadows.dart';

class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 56,
        // padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: const BoxDecoration(
          color: Colors.amber,
          boxShadow: [AppShadows.blackShadow],
        ),
        child: Material(
          color: Colors.transparent,
          child: Stack(
            alignment: Alignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Positioned(
                left: 16,
                child: Row(
                  children: [
                    // if (onBackTap != null)
                    //   KFIconButton(
                    //     CupertinoIcons.chevron_back,
                    //     onTap: onBackTap,
                    //   ),
                    // ...leading
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.6,
                // child: KFText.h1(
                //   title,
                //   textAlign: TextAlign.center,
                //   maxLines: 2,
                //   overflow: TextOverflow.ellipsis,
                //   // fontWeight: FontWeight.normal,
                // ),
              ),
              Positioned(
                right: 16,
                child: Row(
                    // children: [...actions],
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
