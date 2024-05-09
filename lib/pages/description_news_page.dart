import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_shark_app/model/news_item.dart';
import 'package:flutter/material.dart';

class DescriptionNewsPage extends StatefulWidget {
  const DescriptionNewsPage({
    super.key,
    required this.news,
  });
  final NewsItem news;

  @override
  State<DescriptionNewsPage> createState() => _DescriptionNewsPageState();
}

class _DescriptionNewsPageState extends State<DescriptionNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 65, 16, 24),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
                      decoration: BoxDecoration(
                          color: const Color(0xFFF8624F),
                          borderRadius: BorderRadius.circular(32)),
                      child: Image.asset('assets/arrow_back.png')),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'Back',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Text(
                      widget.news.title!,
                      style: const TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Container(
                      height: 178,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(
                                widget.news.image!,
                              ))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      widget.news.text!,
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
