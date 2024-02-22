import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      itemCount: 8,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 119,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                  // image: const DecorationImage(image: image),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Curso N",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: Colors.black),
                  ),
                  Text(
                    "Lorem ipsum",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
