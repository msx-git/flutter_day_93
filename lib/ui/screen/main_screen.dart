import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/models/contact.dart';
import 'chat_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  var faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Conversations',
          style: GoogleFonts.montserrat(
            color: const Color(0xff0F1828),
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/chat_icon.svg'),
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 66.h,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    height: 60.h,
                    width: 60.w,
                    padding: EdgeInsets.all(4.r),
                    margin: EdgeInsets.only(right: 16.w),
                    decoration: BoxDecoration(
                      color: const Color(0xffF7F7FC),
                      border: Border.all(
                        color: const Color(0xffADB5BD),
                        width: 2.r,
                      ),
                      borderRadius: BorderRadius.circular(18.r),
                    ),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.add,
                      color: Color(0xffADB5BD),
                    ),
                  );
                }
                return Container(
                  height: 60.h,
                  width: 60.w,
                  padding: EdgeInsets.all(2.r),
                  margin: EdgeInsets.only(right: 16.w),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFD84D4D),
                      width: 2.5,
                    ),
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                  clipBehavior: Clip.hardEdge,
                  alignment: Alignment.center,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.r),
                      child: Image.network(
                          "https://randomuser.me/api/portraits/men/${Random().nextInt(90) + 1}.jpg")),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
            child: Divider(),
          ),
          ...List.generate(
            7,
            (index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4),
              child: ListTile(
                title: Text(
                  faker.person.firstName(),
                  style: GoogleFonts.montserrat(color: const Color(0xff0F1828)),
                ),
                subtitle: Text(faker.lorem.words(4).join(' ')),
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Image.network(
                        "https://randomuser.me/api/portraits/men/${Random().nextInt(90) + 1}.jpg")),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(faker.date.time()),
                    if (index % 4 == 0)
                      const Icon(
                        Icons.check,
                        color: Color(0xFFd84d4d),
                      )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ChatScreen(contactId: allContacts[0].contactId),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
