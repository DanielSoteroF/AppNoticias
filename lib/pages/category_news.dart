import 'package:cached_network_image/cached_network_image.dart';
import '../models/show_category.dart';
import '../services/show_category_news.dart';
import 'package:flutter/material.dart';

class CategoryNews extends StatefulWidget {
  String name;

  CategoryNews({required this.name});

  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}


class _CategoryNewsState extends State<CategoryNews> {
  List<ShowCategoryModel> showCategory = [];
  bool _loading = true;

  @override
  void initState() {
    getShowCategory();
    super.initState();
  }

  getShowCategory() async {
    ShowCateoryNews showCategoryNews= ShowCateoryNews();
    await showCategoryNews.getShowCategory(widget.name.toLowerCase());
    showCategory = showCategoryNews.showCategory;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.name,
              style: const TextStyle(
                color: Color(0xFF0F3774),
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: showCategory.length,
            itemBuilder: (context, index) {
              return ShowCategory(
                Image: showCategory[index].urlToImage!,
                title: showCategory[index].title!,
                descrip: showCategory[index].description!,
              );
            }
        ),
      ),
    );
  }
}

class ShowCategory extends StatelessWidget {
  String Image, descrip, title;

  ShowCategory(
      {required this.Image, required this.descrip, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: Image,
            width: MediaQuery.of(context).size.width,
            height: 200,
            fit: BoxFit.cover,
          ),
          Text(title, style: const TextStyle(fontSize: 20)),
          Text(descrip, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
