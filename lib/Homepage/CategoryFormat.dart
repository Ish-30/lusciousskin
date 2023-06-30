import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'category_data.dart';


class CategoryFormat extends StatelessWidget {
  const CategoryFormat ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 210,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(left: 16.0),

              child: SizedBox(
                  width:150,

                  child: Card (
                    color: Colors.transparent,
                    elevation: 0.0,

                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12),)
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => cat[index].path),
                        ),
                          child: Column(
                            children: [

                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(cat[index].image,
                                  width: double.maxFinite,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),

                              ),
                              SizedBox(height: 5),
                               Column(
                                  children: [
                                     Container(
                                         child: Text(
                                              cat[index].title,
                                              style: GoogleFonts.poppins(
                                                fontSize:16,
                                              ),
                                          ),

                                     ),


                                  ],
                                ),

                            ],
                          ),

                      ),
                    ),
                  )
              ),
            );
          },
          separatorBuilder: (context,index)=> const Padding(padding: EdgeInsets.only(right: 5,),),
          itemCount: cat.length),
    );
  }
}