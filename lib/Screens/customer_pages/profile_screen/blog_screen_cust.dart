import 'package:flutter/material.dart';
import '../../../datas/model/blog.dart';
import '../../../datas/service/services.dart';
import '../../../utils/size_config.dart';

class BlogsForCustomer extends StatelessWidget {
  const BlogsForCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: BlogBodyCust(),
    );
  }
}

class BlogBodyCust extends StatefulWidget {
  const BlogBodyCust({Key? key}) : super(key: key);

  @override
  State<BlogBodyCust> createState() => _BlogBodyCustState();
}

class _BlogBodyCustState extends State<BlogBodyCust> {
  ApiService apiService = ApiService();
  List<BlogModel>? listBlogData = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    listBlogData = await apiService.getBlogData();
    if (listBlogData != null) {
      setState(() {
        isLoading = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Text(
                "Blog Ekranı ",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight - 75,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: listBlogData!.length,
            itemBuilder: (context, index) => BlogNewCard(
              press: () {},
              // press: () => Navigator.pushNamed(
              //     context, BlogDetailScreen.routeName,
              //     arguments: BlogDetailArguments(blog: listBlogData![index])),
              blog: listBlogData![index],
            ),
          ),
        ),
      ],
    );
  }
}

class BlogNewCard extends StatefulWidget {
  const BlogNewCard({Key? key, required this.press, required this.blog})
      : super(key: key);

  final GestureTapCallback press;
  final BlogModel blog;

  @override
  State<BlogNewCard> createState() => _BlogNewCardState();
}

class _BlogNewCardState extends State<BlogNewCard> {
  ApiService apiService = ApiService();
  List<BlogModel>? listBlogData = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    listBlogData = await apiService.getBlogData();
    if (listBlogData != null) {
      setState(() {
        isLoading = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 8,
              offset: Offset(0, 0),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black54,
            width: 3,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Container(
                height: SizeConfig.screenHeight / 4.5,
                width: SizeConfig.screenWidth,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     fit: BoxFit.cover,
                //     image: NetworkImage(widget.blog.resim),
                //   ),
                //   border: Border.all(
                //     color: Colors.black,
                //   ),
                // ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  // listBlogData![index].kisaaciklama,
                  widget.blog.baslik,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                width: SizeConfig.screenWidth,
                child: Text(
                  widget.blog.kisaaciklama,
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
