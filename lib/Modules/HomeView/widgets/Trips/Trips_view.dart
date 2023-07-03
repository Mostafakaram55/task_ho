
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_ho/Modules/HomeView/widgets/Trips/Tips_resulte.dart';
import 'package:task_ho/core/Manager/Color_Manager.dart';
import 'package:task_ho/core/icons.dart';
class Tips extends StatelessWidget {
const Tips({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return  Scaffold(
body:CustomScrollView(
scrollDirection: Axis.vertical,
physics: const BouncingScrollPhysics(),
slivers: [
SliverToBoxAdapter(
child: Padding(
padding:  EdgeInsets.symmetric(horizontal: 10.sp,vertical: 10.sp),
child: Row(
children:  [
IconButton(onPressed: (){
  Navigator.pop(context);
}, icon:Icon(
Icons.arrow_back_ios,
color: Colors.black,
size: 30.sp,
)),
Expanded(
child: TextField(
style: TextStyle(
height: .3.h,
),
decoration: InputDecoration(
hintText: 'Search',
hintStyle: TextStyle(
color: Colors.grey,
fontSize: 16.sp,
),
prefixIcon: const Icon(
Icons.search_rounded,
size: 20,
),
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(30),
)
),
),
),
SizedBox(
width: 8.w,
),
CircleAvatar(
radius: 20.sp,
backgroundImage: NetworkImage('https://funkylife.in/wp-content/uploads/2023/03/good-morning-image-531.jpg')
),
],
),
),
),
SliverToBoxAdapter(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Row(
children: [
IconButton(
onPressed: (){}, icon:Icon(
IconBroken.Location,
size: 25.sp,
)),
Text(
'Find Attractions',
style: TextStyle(
color: Colors.black,
fontSize: 14.sp,
fontWeight: FontWeight.bold
),
),
],
),
SizedBox(
height: 10.h,
),
Padding(
padding:EdgeInsets.symmetric(horizontal: 10.sp),
child: Text(
'Popular Things to Do',
style: TextStyle(
color: Colors.black,
fontSize: 18.sp,
fontWeight: FontWeight.bold
),
),
),
SizedBox(
height: 10.h,
),
Stack(
alignment: AlignmentDirectional.center,
children: [
const Image(
fit: BoxFit.cover,
image:NetworkImage('https://cdn.britannica.com/08/178108-050-F19D0A38/statues-entrance-Ramses-II-Luxor-temple-complex.jpg')
),
Padding(
padding:  EdgeInsets.all(8.0.sp),
child: SizedBox(
width: double.infinity,
height: 50.h,
child: ListView.separated(
separatorBuilder: (context,index)=>SizedBox(

width: 20.w,
),
itemBuilder: (context,index)=>Container(
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10.sp),
color: Colors.white.withOpacity(.7),
),
width: 120.w,
child: const Center(
child:  Text(
'City Name',
style: TextStyle(
fontWeight: FontWeight.bold
),
)
),
),
itemCount: 10,
scrollDirection: Axis.horizontal,
),
),
),
],
),
Padding(
padding:  EdgeInsets.symmetric(horizontal: 20.sp,vertical: 10.sp),
child: Row(
children:  [
Expanded(
child: Text(
'Popular Cities',
style: TextStyle(
fontWeight: FontWeight.bold,
color: Colors.black,
fontSize: 19.sp,
),
)),
InkWell(
onTap: (){},
child: Text(
'See more',
style: TextStyle(
fontSize: 13.sp,
fontWeight: FontWeight.bold
),
),
)
],
),
),
SizedBox(
height: 10.h,
),
],
),
),
SliverToBoxAdapter(
child: Padding(
padding:  EdgeInsets.symmetric(horizontal:20.sp),
child: SizedBox(
height: 200.h,
child: ListView.separated(
physics:const  BouncingScrollPhysics(),
scrollDirection: Axis.horizontal,
itemBuilder:(context,index)=>Column(
crossAxisAlignment: CrossAxisAlignment.start,
children:[
Stack(
alignment: AlignmentDirectional.topEnd,
children: [
InkWell(
onTap: (){},
child: Container(
height: 170.h,
width:220.w,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(12.sp),
image:const  DecorationImage(
image:NetworkImage(
'https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Luxor_Hotel.jpg/800px-Luxor_Hotel.jpg?20120929144414'
),
fit: BoxFit.cover,
),
),
),
),
Padding(
padding:EdgeInsets.all(8.0.sp),
child: Container(
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(8.sp),
color: Colors.grey[200],
),
width: 30.w,
height: 30.h,

child: const Icon(
IconBroken.Heart
),
),
),
],
),
Text(
'City Name',
style: TextStyle(
color: Colors.black,
fontWeight: FontWeight.w500,
fontSize: 16.sp
),
),
],
),
separatorBuilder:(context,index)=>SizedBox(width: 10.w,),
itemCount: 10),
),
),
),
SliverToBoxAdapter(
child: Padding(
padding: const EdgeInsets.symmetric(horizontal: 20),
child:  Row(
children: [
Expanded(
child: Text(
'Top Attractions in Egypt',
style: TextStyle(
fontWeight: FontWeight.bold,
color: Colors.black,
fontSize: 19.sp,
),
)),
InkWell(
onTap: (){},
child: Row(
children: [
Text(
'Sort By',
style: TextStyle(
fontSize: 13.sp,
fontWeight: FontWeight.bold,
),
),
Icon(
Icons.sort,
size: 14.sp,
),
],
),
)
],
),
),
),
SliverToBoxAdapter(
child:Padding(
padding:EdgeInsets.symmetric(horizontal: 20.sp),
child: customItem(),
),
)
],
),
);
}
Widget customItem()=>ListView.separated(
shrinkWrap: true,
physics: const NeverScrollableScrollPhysics(),
itemBuilder: (context,index){
return Row(
children: [
Container(
height: 110.w,
width: 130.w,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10.sp),
image:const  DecorationImage(
fit: BoxFit.cover,
image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Luxor_Hotel.jpg/800px-Luxor_Hotel.jpg?20120929144414')
)
),
),
SizedBox(
width: 13.sp,
),
Column(
crossAxisAlignment: CrossAxisAlignment.start,
mainAxisAlignment: MainAxisAlignment.start,
children: [
Text(
'Temple Of Karnak',
style: TextStyle(
color: Colors.black,
fontWeight: FontWeight.bold,
fontSize: 20.sp
),
),
  Text(
    'Historic site',
    style: TextStyle(
        color: Colors.grey,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400
    ),
  ),
  SizedBox(
    height: 5.h,
  ),
  Text(
    'Ancient Ruins',
    style: TextStyle(
        color: Colors.grey,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400
    ),
  ),
  SizedBox(
    height: 5.h,
  ),
  InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (_)=>TipsRuselte()));
    },
    child: Container(
      width: 80.w,
      height: 30.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color: ColorManager.buttonColor
      ),
      child: Center(
        child: Text(
          'Show Details',
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    ),
  ),
],
),

],
);
}
, separatorBuilder: (context,index)=>SizedBox(height: 10.sp,),
itemCount: 10);
}
