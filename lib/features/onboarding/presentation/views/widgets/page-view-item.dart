import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subTitle,
    required this.title,
    required this.isVisible
  });
  String image, backgroundImage, subTitle;
  Widget title;
  bool isVisible ;  
  @override
  Widget build(BuildContext context) {
    return Column(
 
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              SvgPicture.asset(
                backgroundImage,
                fit: BoxFit.cover,
                 
                width: double.infinity,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Center(child: SvgPicture.asset(image)),
              ),
          
              Visibility(
                visible:isVisible ,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("تخط",),
                ),
              ),
           
            ],
          ),
        ),
        SizedBox(height: 65,),
                    title , 
        SizedBox(height: 25,),

            Text(subTitle, textAlign: TextAlign.center, style: TextStyle(fontSize: 16),),
      ],
    );
  }
}
