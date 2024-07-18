

class JsonModel
{
  late int albumId,id;
  late String title,url,thumbnailUrl;

  JsonModel({required this.url,required this.title,required this.albumId,required this.id,required this.thumbnailUrl,});
  factory JsonModel.fromMap(Map m1)
  {
    return JsonModel(url: m1['url'], title: m1['title'], albumId: m1['albumId'], id: m1['id'], thumbnailUrl: m1['thumbnailUrl']);
  }
}