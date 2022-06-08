import 'package:hive/hive.dart';

class Form extends HiveObject {
  String? fullName;
  int? age;
  String? gender;
  int? dob;
  int? handicappedid;
  int? mobilenumber;
  late String? email;
  int? pannumber;
  String? bloodgroup;
  String? tempProv;
  String? tempdistrict;
  String? tempMuni;
  int? tempward;
  String? tempstreettol;
  int? tempblockno;
  String? permProv;
  String? permdistrict;
  String? permMuni;
  int? permpward;
  String? permstreettol;
  int? permblockno;
  String? fatherdetails;
  String? motherdetails;
  String? spousename;
  String? grandfathername;
  String? grandmothername;
  String? sonname;
  String? daughtername;
  int? totalson;
  int? totaldaughter;
  String? jobtype;
  String? joborganization;
  String? organizationaddress;
  int? annualincome;
  String? designation;
  String? nationalismandreligion;
  String? nationality;
  String? religion;
  String? ethnicgroup;
  int? totalmonthlyincome;
  String? incomesource;
  String? incomesourceman;
  String? expensecategory;
  String? totalexpense;
  bool? isbalanceddiet;
  String? foodconsumptiontiming;
  String? regularmealdescription;
  String? isorganic;
  String? Houseaddress;
  int? Blocknumber;
  String? Streetname;
  int? Housenumber;
  String? toilettypeid;
  int? citizenshipnumber;
  int? issueddate;
  int? issuedat;
  String? verifiedby;
  String? businessorg;
  String? businesstypeid;
  String? orgname;
  int? totalinvestment;
  int? annualincomeorg;
  double? annualxpense;
  int? totalnostaff;
  String? businessarea;
  String? businessproduct;
  String? schoolname;
  String? schooltypeid;
  String? dresscode;
  String? dresscondition;
  String? childenschoolschemeid;
  String? skincolor;
  String? ishandicap;
  String? handicappedtypeid;
  String? name;
  String? childrengender;
  String? familydetailid;
  String? childrendob;
  String? interestedfieldid;
  bool? istakingtraining;
  String? professionalstatus;
  String? durationofactivities;
  String? childrenbloodgroup;
  String? childrenbirthplace;
  int? chilrenbirthweight;
  String? childrenbirthcondition;
  bool? childrenisBCGvaccinated;
  bool? childrenisDPTHEPBvaccinated;
  bool? childrenisOPVvaccinated;
  bool? childrenisPCVvaccinated;
  bool? childrenisIPVvaccinated;
  bool? childrenisMRvaccinated;
  bool? childrenisJEvaccinated;
  bool? childrenisTDvaccinated;
  bool? childrenisgeneticdiseaseissue;
  String? childrengeneticdiseasedescription;
  bool? childreniscovidvaccinated;
  String? childrenvaccinedetails;
  String? childrenvacinedose;
  String? healthbloodgroup;
  String? birthplace;
  int? birthweight;
  String? birthcondition;
  bool? isbelow5vaccinated;
  bool? iscovidvaccinated;
  String? vaccinedetails;
  String? vacinedose;
  bool? isgeneticdiseaseissue;
  String? geneticdiseasedescription;
  String? latitude;
  String? longitude;

  Form(
    this.fullName,
    this.age,
    this.gender,
    this.dob,
    this.handicappedid,
    this.mobilenumber,
    this.email,
    this.pannumber,
    this.bloodgroup,
    this.tempProv,
    this.tempdistrict,
    this.tempMuni,
    this.tempward,
    this.tempstreettol,
    this.tempblockno,
    this.permProv,
    this.permdistrict,
    this.permMuni,
    this.permpward,
    this.permstreettol,
    this.permblockno,
    this.fatherdetails,
    this.motherdetails,
    this.spousename,
    this.grandfathername,
    this.grandmothername,
    this.sonname,
    this.daughtername,
    this.totalson,
    this.totaldaughter,
    this.jobtype,
    this.joborganization,
    this.organizationaddress,
    this.annualincome,
    this.designation,
    this.nationalismandreligion,
    this.nationality,
    this.religion,
    this.ethnicgroup,
    this.totalmonthlyincome,
    this.incomesource,
    this.incomesourceman,
    this.expensecategory,
    this.totalexpense,
    this.isbalanceddiet,
    this.foodconsumptiontiming,
    this.regularmealdescription,
    this.isorganic,
    this.Houseaddress,
    this.Blocknumber,
    this.Streetname,
    this.Housenumber,
    this.toilettypeid,
    this.citizenshipnumber,
    this.issueddate,
    this.issuedat,
    this.verifiedby,
    this.businessorg,
    this.businesstypeid,
    this.orgname,
    this.totalinvestment,
    this.annualincomeorg,
    this.annualxpense,
    this.totalnostaff,
    this.businessarea,
    this.businessproduct,
    this.schoolname,
    this.schooltypeid,
    this.dresscode,
    this.dresscondition,
    this.childenschoolschemeid,
    this.skincolor,
    this.ishandicap,
    this.handicappedtypeid,
    this.name,
    this.childrengender,
    this.familydetailid,
    this.childrendob,
    this.interestedfieldid,
    this.istakingtraining,
    this.professionalstatus,
    this.durationofactivities,
    this.childrenbloodgroup,
    this.childrenbirthplace,
    this.chilrenbirthweight,
    this.childrenbirthcondition,
    this.childrenisBCGvaccinated,
    this.childrenisDPTHEPBvaccinated,
    this.childrenisOPVvaccinated,
    this.childrenisPCVvaccinated,
    this.childrenisIPVvaccinated,
    this.childrenisMRvaccinated,
    this.childrenisJEvaccinated,
    this.childrenisTDvaccinated,
    this.childrenisgeneticdiseaseissue,
    this.childrengeneticdiseasedescription,
    this.childreniscovidvaccinated,
    this.childrenvaccinedetails,
    this.childrenvacinedose,
    this.healthbloodgroup,
    this.birthplace,
    this.birthweight,
    this.birthcondition,
    this.isbelow5vaccinated,
    this.iscovidvaccinated,
    this.vaccinedetails,
    this.vacinedose,
    this.isgeneticdiseaseissue,
    this.geneticdiseasedescription,
    this.latitude,
    this.longitude,
  );
}
