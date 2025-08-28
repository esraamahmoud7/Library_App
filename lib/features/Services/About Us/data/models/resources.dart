class ResourceModel
{
  final String image;
  final String title;
  final String count;

  ResourceModel({required this.image, required this.title , required this.count});

  // factory constructor
  factory ResourceModel.fromJson(Map<String, dynamic> json) {
    return ResourceModel(
      image: '',
      title: '',
      count: '',
    );
  }
}