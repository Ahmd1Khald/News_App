import 'package:flutter/material.dart';

import '../screens/web_view.dart';

class ItemBuilder extends StatelessWidget {
  const ItemBuilder({Key? key, required this.list}) : super(key: key);

  final Map list;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(list['urlToImage']);
        navigateTo(context, WebViewScreen("${list['url']}"));
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        '${list['title']}',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Text(
                      '${list['publishedAt']}',
                      style: const TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 120,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: list['urlToImage'] != null
                      ? NetworkImage('${list['urlToImage']}')
                      : const NetworkImage(
                          'https://as1.ftcdn.net/v2/jpg/02/48/42/64/1000_F_248426448_NVKLywWqArG2ADUxDq6QprtIzsF82dMF.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
