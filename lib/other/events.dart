// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';
import 'package:table_calendar/table_calendar.dart';
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;

class Event {
  final String title;

  const Event({required this.title});

  @override
  String toString() => title;
}

final kEvents = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_kEventSource);

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// Returns a list of [DateTime] objects from [first] to [last], inclusive.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
    (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

Map<DateTime, List<Event>> _kEventSource = {
  DateTime(2023, 3, 1): [
    const Event(title: "Seven Lenses: Documenting Black Culture"),
    const Event(title: "Women's History Month: The Immigrant Experience"),
    const Event(title: "Diapers 'n Stuff: Baby Care Drive 12:00pm-1:00pm"),
    const Event(title: "What's on Your Mind? 1:00pm"),
    const Event(title: "Operation Smile Body Meeting 1:00pm-1:45pm"),
    const Event(
        title:
            "Reproductive Rights: a Student-led Panel and Discussion 1:10pm-2:00pm")
  ],
  DateTime(2023, 3, 2): [
    const Event(
        title: "Annual Class Schedule Available (Summer 2023-Spring 2024)"),
    const Event(title: "Using OwlConnect- virtual 3:00pm-4:00pm"),
    const Event(title: "Theatre Department Presents 'Gallathea' 8:00pm"),
  ],
  DateTime(2023, 3, 3): [
    const Event(title: "COVID-19 Vaccine Clinic 9:30am-12:30pm"),
  ],
  DateTime(2023, 3, 4): [
    const Event(title: "Theatre Department Presents 'Gallathea' 2:00pm"),
  ],
  DateTime(2023, 3, 5): [],
  DateTime(2023, 3, 6): [
    const Event(
        title: "Understanding Jewish Identity and Antisemitism 10:00am"),
    const Event(
        title: "Book Discussion Series: 'Atlas of the Heart' (online) 6:30pm"),
  ],
  DateTime(2023, 3, 7): [
    const Event(
        title:
            "Men and Women's Swimming & Diving vs NCAA Divsion II National Championships 10:00am"),
    const Event(
        title:
            "Healthcare & Public Health Career and Internship Fair 2:00pm-4:00pm"),
    const Event(
        title:
            "Social Work, Marriage & Family Therapy, and Counseling Career and Internship Fair 4:00pm-6:00pm"),
  ],
  DateTime(2023, 3, 8): [
    const Event(
        title:
            "Men and Women's Swimming & Diving vs NCAA Divsion II National Championships 10:00am"),
    const Event(
        title:
            "Communications, Media, and Marketing Career and Internship Fair 10:00am-12:00pm"),
    const Event(
        title: "Sports Betting, Gambling and Today's College Student 12:00pm"),
    const Event(
        title: "STEM and Business Career and Internship Fair 12:00pm-2:00pm"),
    const Event(
        title:
            "Wednesday Workshop: Everything Electronic @ The Makespace 12:45pm"),
    const Event(title: "What's on Your Mind? 1:00pm"),
    const Event(title: "Anthropology Speaker Series 1:00pm"),
    const Event(title: "Creative Music Orchestra 1:30pm"),
    const Event(title: "Baseball vs Mercy College 3:00pm"),
    const Event(title: "Women's Lacrosse vs Caldwell University 4:00pm"),
    const Event(title: "Latin Jazz, Jazz Standards, & Blues Ensemble 7:30pm"),
  ],
  DateTime(2023, 3, 9): [
    const Event(
        title:
            "K9 Jules and Friends Birthday Celebration and Self-Care Fair 10:00am-2:00pm"),
    const Event(title: "Between You and Me: Transitional Comics 5:00pm"),
    const Event(title: "Journalism Alumni Night 5:30pm"),
    const Event(title: "Heritage Ball 7:30pm"),
  ],
  DateTime(2023, 3, 10): [
    const Event(title: "COVID-19 Vaccine Clinic 9:30am-12:30pm"),
    const Event(
        title:
            "New Haven Symphony Orchestra: Miller Conducts Schumann & Beethoven 7:30pm"),
    const Event(title: "Gymnastics vs University of Bridgeport 6:00pm"),
  ],
  DateTime(2023, 3, 11): [
    const Event(title: "Women’s Lacrosse vs Saint Anselm College 1:00pm"),
  ],
  DateTime(2023, 3, 12): [
    const Event(
        title:
            "Spring classes end for first 8-week courses and last day to request a late course withdrawal from instructor"),
  ],
  DateTime(2023, 3, 13): [
    const Event(title: "Spring Recess, No Classes"),
  ],
  DateTime(2023, 3, 14): [
    const Event(title: "Spring Recess, No Classes"),
    const Event(title: "What's on Your Mind 2:00pm"),
  ],
  DateTime(2023, 3, 15): [
    const Event(title: "Spring Recess, No Classes"),
    const Event(title: "What's on Your Mind? 1:00pm"),
  ],
  DateTime(2023, 3, 16): [
    const Event(title: "Spring Recess, No Classes"),
  ],
  DateTime(2023, 3, 17): [
    const Event(title: "Spring Recess, No Classes"),
    const Event(title: "The Science of Autism Talk Series 9:00am"),
    const Event(title: "COVID-19 Vaccine Clinic 9:30am-12:30pm"),
  ],
  DateTime(2023, 3, 18): [
    const Event(title: "Spring Recess, No Classes"),
  ],
  DateTime(2023, 3, 19): [
    const Event(title: "Spring Recess, No Classes"),
  ],
  DateTime(2023, 3, 20): [
    const Event(title: "Spring classes begin for second 8-week courses"),
    const Event(title: "Summer Registration opens for all students"),
    const Event(title: "Sacred Ally Quilts: Exhibition 11:00am"),
    const Event(
        title: "Women in Leadership Student Feedback Session 1:00pm-2:00pm"),
    const Event(title: "Weekly Writing Hours 2:00pm-4:00pm"),
    const Event(
        title: "Book Discussion Series: 'Atlas of the Heart' (online) 6:30pm"),
  ],
  DateTime(2023, 3, 21): [
    const Event(
        title:
            "Spring final grades available to students for first 8-week courses"),
    const Event(
        title:
            "Sacred Ally Quilts: Opening Reception and Film Screening 10:00am"),
    const Event(title: "Swap Shop Open House 11:00am-1:30pm"),
    const Event(title: "What's on Your Mind? 2:00pm"),
    const Event(title: "Baseball vs Assumption University 3:00pm"),
    const Event(title: "Women's Lacrosse vs Pace University 4:00pm"),
  ],
  DateTime(2023, 3, 22): [
    const Event(title: "Faculty Mentoring Circle: Grant Writing Tips 10:00am"),
    const Event(title: "What's on Your Mind? 1:00pm"),
    const Event(title: "Softball vs Post University 2:00pm"),
    const Event(title: "Planetarium Double Feature 2:10pm"),
    const Event(title: "First-Gen Owls Career Connection Series 3:00pm"),
    const Event(title: "Evening Connection - Afro Hair Night 4:30pm"),
    const Event(title: "Women in Careers Panel Discussion 6:00pm"),
    const Event(title: "Game Night 7:30pm"),
    const Event(title: "Art of Trio, featuring SCSU Jazz Faculty 7:30pm"),
    const Event(title: "Women HERstory Month Karaoke 8:00pm"),
    const Event(title: "Sweets & Treats 8:00pm"),
    const Event(title: "Get Green with RA's Nikki and Adelino 8:00pm"),
    const Event(title: "Hidden Gems"),
  ],
  DateTime(2023, 3, 23): [
    const Event(title: "Commuter Breakfast 8:30am-10:30am"),
    const Event(title: "PB&J Thursday 12:00pm-1:00pm"),
    const Event(
        title:
            "PCAO's Bake it Gold: Bake Sale to Support Spencer 12:30pm-3:00pm"),
    const Event(
        title: "Connecting Students and Professionals of Color 12:30pm"),
    const Event(title: "Commuter Vision Board 1:00pm"),
    const Event(title: "Weekly Writing Hours 2:00pm"),
    const Event(title: "Student Org Event Planning- Virtual 3:00pm"),
    const Event(title: "Men's Bible Study 3:00pm"),
    const Event(title: "Revisiting the Hunting to Healing Ground 5:00pm"),
    const Event(title: "Cartoon Glass Painting 6:00pm"),
    const Event(title: "March Madness: Sweet 16 Party 6:30pm"),
  ],
  DateTime(2023, 3, 24): [
    const Event(title: "Freebie Friday"),
    const Event(title: "COVID-19 Vaccine Clinic 9:30am-12:30pm"),
    const Event(title: "Commuter Crafts: Magic Scratch 12:00pm"),
    const Event(title: "Folio Open Mic 6:00pm"),
  ],
  DateTime(2023, 3, 25): [
    const Event(title: "Sacred Ally Quilts: Exhibition"),
  ],
  DateTime(2023, 3, 26): [
    const Event(
        title:
            "Spring add/drop deadline for second 8-week courses and 100% refund deadline for part-time students"),
    const Event(title: "Sacred Ally Quilts: Exhibition"),
    const Event(
        title: "New Haven Symphony Orchestra: So Conducts Beethoven 3:00pm"),
  ],
  DateTime(2023, 3, 27): [
    const Event(title: "Community Garden Work Party 11:00am"),
    const Event(title: "Maker Mondays - Electronics & Robotics 12:00pm"),
    const Event(
        title:
            "Women in Leadership Welcomes Lt. Governor Susan Bysiewicz 1:00pm"),
    const Event(title: "Weekly Writing Hours 2:00pm"),
    const Event(title: "Evening Connection - Crochet Night 4:30pm"),
    const Event(title: "SAGE Center Gayme Night 5:00pm"),
  ],
  DateTime(2023, 3, 28): [
    const Event(title: "Community Garden Work Party 11:00am"),
    const Event(title: "Swap Shop Open House 11:00am"),
  ],
  DateTime(2023, 3, 29): [
    const Event(title: "Mental Health First Aid (Day 1) 12:30pm"),
    const Event(title: "3D Designing & 3D Printing 12:45pm"),
    const Event(title: "Near Peer Tech Time 12:00pm-2:00pm"),
    const Event(
        title:
            "Sacred Ally Quilts: Antiracist Teaching Panel & Discussion 2:00pm-4:00pm"),
  ],
  DateTime(2023, 3, 30): [
    const Event(title: "Commuter Breakfast 8:30am-10:30am"),
    const Event(title: "PB&J Thursday 12:00pm"),
    const Event(title: "Mental Health First Aid (Day 2) 12:30pm"),
  ],
  DateTime(2023, 3, 31): [
    const Event(title: "COVID-19 Vaccine Clinic 9:30am"),
    const Event(title: "Trans Day of Visibility 12:00pm-2:00pm"),
    const Event(title: "Build a Self Care Pack 9:00pm"),
    const Event(title: "Baseball vs Queens College 3:00pm-6:00pm"),
  ],
  DateTime(2023, 4, 1): [
    const Event(title: "Accepted Student Day 8:45am-3:00pm"),
    const Event(title: "Easter Egg Hunt 12:45pm-3:30pm"),
    const Event(
        title: "New Haven Symphony Orchestra: Young People’s Concert 1:00pm"),
    const Event(title: "Women’s Lacrosse vs Franklin Pierce University 1:00pm"),
    const Event(title: "Paint Night 3:00pm-5:00pm"),
    const Event(title: "WE ARE HERE Gallery Reception 7:00pm-9:00pm"),
    const Event(
        title: "2nd Annual Multicultural Greek Strollcase 7:00pm-10:30pm"),
  ],
  DateTime(2023, 4, 2): [
    const Event(
        title:
            "Spring withdrawal from second 8-week courses with 60% refund deadline for part-time students"),
    const Event(title: "Sacred Ally Quilts: Exhibition"),
    const Event(title: "Softball vs Franklin Pierce University 12:00pm-2:00pm"),
    const Event(title: "SCSU Men’s Lax vs URI 2:00pm-3:00pm")
  ],
  DateTime(2023, 4, 3): [
    const Event(title: "Fall graduate/post-baccalaureate registration begins"),
    const Event(title: "Sacred Ally Quilts: Exhibition"),
    const Event(title: "The Biology Club Bake Sale 11:00am-4:00pm"),
    const Event(title: "Maker Mondays - Media 12:00pm-2:00pm"),
    const Event(title: "QPR Training with PHS and SAGE 1:15pm-2:15pm"),
    const Event(title: "SAGE Center Gayme Night 5:00pm"),
  ],
  DateTime(2023, 4, 4): [
    const Event(title: "Fall senior registration begins"),
    const Event(title: "Southern’s Day of Caring"),
    const Event(title: "Swap Shop Open House 11:00am-1:30pm"),
    const Event(title: "Women’s Lacrosse vs Adelphi University 4:00pm"),
    const Event(title: "Karaoke: Blu & White Edition 7:00pm-8:30pm"),
  ],
  DateTime(2023, 4, 5): [
    const Event(title: "Global Brigades Bake Sale 10:00am-2:00pm"),
    const Event(title: "Anthropology Open House 1:00pm-2:00pm"),
    const Event(
        title:
            "SCSU Campus Walking Tour: Resilience and Sustainability 1:00pm"),
    const Event(title: "First-Gen Career Connections Program 3:00pm-4:00pm"),
    const Event(
        title: "Law School Q&A with an Admission’s Counselor 3:30pm-4:30pm"),
  ],
  DateTime(2023, 4, 6): [
    const Event(title: "Commuter Breakfast 8:30am-10:30am"),
    const Event(title: "PB&J Thursday 12:00pm-1:00pm"),
    const Event(title: "Let’s Talk Financial Wellness 101 1:00pm-2:00pm"),
  ],
  DateTime(2023, 4, 7): [
    const Event(title: "Holiday Recess, No Classes"),
  ],
  DateTime(2023, 4, 8): [
    const Event(title: "Holiday Recess, No Classes"),
    const Event(title: "Six Flags Trip 11:15am-6:30pm"),
    const Event(
        title: "Women's Lacrosse vs Southern New Hampshire University 1:00pm"),
  ],
  DateTime(2023, 4, 9): [
    const Event(title: "Holiday Recess, No Classes"),
  ],
  DateTime(2023, 4, 10): [
    const Event(title: "Fall junior registration begins"),
    const Event(title: "Maker Mondays - Media 12:00pm-2:00pm"),
    const Event(title: "SAGE Center Gayme Night 5:00pm"),
  ],
  DateTime(2023, 4, 11): [
    const Event(
        title:
            "Spring last day to withdraw from full-term individual courses or the university and receive 'w' grades"),
    const Event(title: "Swap Shop Open House 11:00am-1:30pm"),
    const Event(
        title:
            "Annual Latin American and Caribbean Studies' Sponsored Social Justice Keynote 12:30pm"),
    const Event(title: "Evening Connection 4:30pm-6:00pm"),
    const Event(
        title: "Monthly Magic- The Magic of Angels and Spirit Guides 5:15pm"),
    const Event(title: "Dancing for Dimes! 6:00pm-7:30pm"),
    const Event(
        title: "Alumni Coaches Panel Presented by the SCSU P.E. Club 6:00pm"),
  ],
  DateTime(2023, 4, 12): [
    const Event(title: "Fall sophomore registration begins"),
    const Event(title: "So Sweet TreatZ: Bake Sale 12:00pm-2:00pm"),
    const Event(
        title:
            "Free Narcan Training w/ Public Health Society and the SAGE center 1:00pm-2:00pm"),
    const Event(title: "An Afternoon of Song 1:30pm"),
    const Event(title: "LinkedIn and Social Media 2:00pm"),
    const Event(title: "Pie a Poodle 2:00pm-4:00pm"),
    const Event(title: "Birthing Justice 4:00pm"),
  ],
  DateTime(2023, 4, 13): [
    const Event(title: "Commuter Breakfast 8:30am-10:30am"),
    const Event(title: "PB&J Thursday 12:00pm-1:00pm"),
    const Event(title: "QPR (suicide prevention) Certification 12:00pm-1:30pm"),
  ],
  DateTime(2023, 4, 14): [
    const Event(title: "COVID-19 Vaccine Clinic 9:30am-12:30pm"),
    const Event(
        title: "Fiction and Poetry Reading: Rachel Furey and Jeff Mock 7:00pm"),
  ],
  DateTime(2023, 4, 15): [
    const Event(
        title:
            "Creative Connections Reading and End-of-Semester Event 12:30pm"),
  ],
  DateTime(2023, 4, 16): [
    const Event(
        title:
            "Spring withdrawal from second 8-week courses with 40% refund deadline for part-time students"),
    const Event(title: "SCSU Men’s Lax vs Umass Dartmouth 2:00pm"),
    const Event(
        title: "New Haven Symphony Orchestra: Blachly Conducts Dawson 3:00pm"),
  ],
  DateTime(2023, 4, 17): [
    const Event(title: "Fall continuing freshmen registration begins"),
    const Event(title: "Maker Mondays - Media 12:00pm-2:00pm"),
    const Event(title: "Commuter Luncheon 12:00pm-2:00pm"),
    const Event(title: "LGBTQ+ In Careers Panel Discussion 6:00pm"),
    const Event(
        title: "Book Discussion Series: 'Atlas of the Heart' (online) 6:30pm"),
  ],
  DateTime(2023, 4, 18): [
    const Event(title: "Swap Shop Open House 11:00am-1:30pm"),
    const Event(title: "Softball vs Adelphi University 2:30pm-4:30pm"),
    const Event(title: "BraceletZ Bar 8:00pm-9:30pm"),
  ],
  DateTime(2023, 4, 19): [
    const Event(title: "Fall non-matriculated graduate registration begins"),
    const Event(
        title: "SAGE Center Connects: Student Center Table 12:00pm-2:00pm"),
  ],
  DateTime(2023, 4, 20): [
    const Event(title: "Commuter Breakfast 8:30am-10:30am"),
    const Event(title: "PB&J Thursday 12:00pm-1:00pm"),
    const Event(title: "University Band 7:30pm"),
  ],
  DateTime(2023, 4, 21): [
    const Event(
        title:
            "Mental Health First Aid for the College of Health & Human Services 9:00am-4:15pm"),
  ],
  DateTime(2023, 4, 22): [
    const Event(title: "Softball vs Bentley University 12:00pm"),
    const Event(title: "Baseball vs The College of Saint Rose 12:00pm"),
    const Event(title: "Pediatric Cancer Awareness Gala 5:30pm-8:00pm"),
  ],
  DateTime(2023, 4, 23): [
    const Event(title: "Softball vs Dominican University 12:00pm"),
    const Event(title: "Baseball vs The College of Saint Rose 12:00pm"),
  ],
  DateTime(2023, 4, 24): [
    const Event(title: "Maker Mondays - Media 12:00pm-2:00pm"),
    const Event(title: "SAGE Center Gayme Night 5:00pm"),
    const Event(title: "University Choir 7:30pm"),
  ],
  DateTime(2023, 4, 25): [
    const Event(title: "Swap Shop Open House 11:00am-1:30pm"),
    const Event(title: "SCUFF 2023 5:00pm-8:00pm"),
    const Event(title: "Study With the Poodles 7:00pm-9:00pm"),
  ],
  DateTime(2023, 4, 26): [
    const Event(title: "Botany Club Plant Sale 2023 10:00am-3:00pm"),
    const Event(title: "Cultural Fest 11:30am-2:30pm"),
    const Event(title: "Creative Music Orchestra  1:30pm"),
    const Event(
        title:
            "Latin Jazz, Jazz Standards, Guitar Ensemble, & Blues Ensemble 7:30pm"),
  ],
  DateTime(2023, 4, 27): [
    const Event(title: "Commuter Breakfast 8:30am-10:30am"),
    const Event(title: "PB&J Thursday 12:00pm-1:00pm"),
    const Event(title: "Graduate Open House 3:00pm-7:00pm"),
  ],
  DateTime(2023, 4, 28): [
    const Event(
        title:
            "Black, Diasporic, Indigenous: Latinidad as Multiplicity & Intersectionality 8:30am-3:00pm"),
  ],
  DateTime(2023, 4, 29): [
    const Event(
        title:
            "Annual Undergraduate Research and Creativity Conference and Art Walk 9:30am-3:30pm"),
    const Event(title: "Baseball vs Pace University 12:00pm-3:00pm"),
    const Event(title: "Women's Lacrosse vs Assumption University 1:00pm"),
    const Event(title: "DIY Blankets 3:00pm-5:00pm"),
  ],
  DateTime(2023, 4, 30): [
    const Event(
        title:
            "Spring last day to withdraw from second 8-week courses and receive 'W' grades"),
    const Event(title: "Baseball vs Pace University 12:00pm"),
  ],
  DateTime(2023, 5, 1): [],
  DateTime(2023, 5, 2): [
    const Event(title: "Swap Shop Open House 11:00am-1:30pm"),
    const Event(title: "Basketball Tournament 7:30pm-10:30pm"),
    const Event(
        title: "Monthly Magic- The Magic of The Maiden Goddess 5:15pm-6:30pm")
  ],
  DateTime(2023, 5, 3): [
    const Event(
        title: "SAGE Center Connects: Student Center Table 12:00pm-2:00pm"),
    const Event(title: "Commuter Luncheon 12:00pm-2:00pm"),
    const Event(title: "Vocal Scenes Workshop 1:30pm"),
    const Event(title: "Slime & Chill 8:00pm-9:30pm"),
  ],
  DateTime(2023, 5, 4): [
    const Event(
        title: "Break The Silence: Suicide Prevention Walk 12:00pm-2:00pm"),
    const Event(title: "RHA Formal 6:00pm-7:45pm"),
  ],
  DateTime(2023, 5, 5): [
    const Event(title: "Certified User Training 10:00am-11:30am"),
  ],
  DateTime(2023, 5, 6): [
    const Event(title: "Trail Clean-Up 10:00am-11:00am"),
  ],
  DateTime(2023, 5, 7): [
    const Event(
        title:
            "Spring last day of classes and last day to request a late course withdrawal from instructor"),
    const Event(title: "Senior Honors Convocation 2:00pm"),
  ],
};

Map<String, String> eventsInfo = {
  "Seven Lenses: Documenting Black Culture":
      "https://calendar.southernct.edu/event/23829-seven-lenses-documenting-black-culture",
  "Women’s History Month: The Immigrant Experience":
      "https://calendar.southernct.edu/event/25043-womens-history-month-the-immigrant-experience",
};
