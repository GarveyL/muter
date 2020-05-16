import 'package:meedu/api/instance.dart';
import 'package:meedu/models/vip.dart';
import 'package:meedu/models/slider.dart';
import 'package:meedu/models/course.dart';
import 'package:meedu/models/index_banner.dart';

Future<List<SliderModel>> getBanners() async {
  List<SliderModel> slider = [];
  var instance = new Instance();
  var data = await instance.get("/sliders", {});
  List<Map<String, dynamic>> items = new List<Map<String, dynamic>>.from(data);
  items.forEach((ele) {
    slider.add(SliderModel.fromJson(ele));
  });
  return slider;
}

Future<List<IndexBannerModel>> getIndexBanners() async {
  List<IndexBannerModel> banners = [];
  var instance = new Instance();
  var data = await instance.get("/index/banners", {});
  List<Map<String, dynamic>> items = new List<Map<String, dynamic>>.from(data);

  items.forEach((ele) {
    List<CourseModel> courses = [];
    var courseList = new List<Map<String, dynamic>>.from(ele['courses']);
    courseList.forEach((course) {
      courses.add(CourseModel.fromJson(course));
    });
    ele['courses'] = courses;
    banners.add(IndexBannerModel.fromJson(ele));
  });
  return banners;
}

Future<List<VipModel>> getRoles() async {
  List<VipModel> roles = [];
  var instance = new Instance();
  var data = await instance.get("/roles", {});
  List<Map<String, dynamic>> items = new List<Map<String, dynamic>>.from(data);

  items.forEach((ele) {
    roles.add(VipModel.fromJson(ele));
  });
  return roles;
}
