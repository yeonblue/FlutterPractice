import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomImage extends StatelessWidget {

final String url;
final String name;
final String location;
final String country;

  const CustomImage({
    super.key,
    required this.url,
    required this.name,
    required this.location,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        
          color: Colors.tealAccent, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                  image: DecorationImage(
                    image: NetworkImage(url),
                    fit: BoxFit.cover
                  ),
                ),
              ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white54
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _createRow(key: 'country', value: country, context: context),
                _createRow(key: 'location', value: location, context: context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _createRow(
      {required String key,
      required String value,
      required BuildContext context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
            child:
                Text('$key: ', style: Theme.of(context).textTheme.titleMedium)),
        const Spacer(),
        Expanded(
            child: Text(value, style: Theme.of(context).textTheme.titleSmall)),
      ],
    );
  }
}
