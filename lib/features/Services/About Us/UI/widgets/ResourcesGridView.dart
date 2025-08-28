import 'package:flutter/material.dart';
import 'package:library_app/features/Services/About%20Us/data/models/resources.dart';
import 'ResourceCard.dart';


class ResourcesGridView extends StatelessWidget {
  const ResourcesGridView({
    super.key, required this.resources,
  });

  final List<ResourceModel> resources ;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: resources.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 25,
          childAspectRatio: 1.38,
        ),
        itemBuilder: (context,index)
        {
          return ResourcesBox(resource: resources[index],);
        }
    );
  }
}
