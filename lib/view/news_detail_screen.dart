import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


class NewsDetailScreen extends StatefulWidget {
  final String newImage , newsTitle , newsDate, author, description, content, source ;

  const NewsDetailScreen({Key? key,
  required this.newImage,
    required this.newsTitle,
    required this.newsDate,
    required this.author,
    required this.description,
    required this.content,
    required this.source ,

  });

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  final format = DateFormat('MMMM, dd, yyyy');
  @override
  Widget build(BuildContext context) {
    final width =MediaQuery.sizeOf(context).width * 1;
    final height = MediaQuery.sizeOf(context).height * 1;

    DateTime dateTime = DateTime.parse(widget.newsDate);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Stack(
        children: [
           Container(
             width: double.infinity,
             height: 290,
             child: ClipRRect(
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(20),
                 topRight: Radius.circular(20)
               ),

               child: CachedNetworkImage(
                 imageUrl: widget.newImage,
                 fit: BoxFit.cover,
                 placeholder: (context, url)=> Center(child: CircularProgressIndicator()),

               ),
             ),
           ),

          Container(
            height: height * .6,
            margin: EdgeInsets.only(top: height * .3),
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
              ),

            ),
            child: ListView(
              children: [
                Text(widget.newsTitle,style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87),),


                Row(
                  children: [
                    Expanded
                      (child: Text(widget.source, style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.black87) )),

                    Text(format.format(dateTime), style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black87))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
