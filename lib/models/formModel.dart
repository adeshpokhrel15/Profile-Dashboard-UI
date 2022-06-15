import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

part 'formModel.g.dart';

@HiveType(typeId: 0)
class formModel extends HiveObject {
  @HiveField(0)
  String? firstname;

  @HiveField(1)
  int? age;

  @HiveField(2)
  String? gender;

  @HiveField(3)
  String? dateofbirthpersonal;

  @HiveField(4)
  String? handicappedidpersonal;

  @HiveField(5)
  int? mobilenumber;

  @HiveField(6)
  String? email;

  @HiveField(7)
  String? pannumber;

  @HiveField(8)
  String? bloodgroup;

  @HiveField(9)
  String? tempProv;

  @HiveField(10)
  String? tempdistrict;

  @HiveField(11)
  String? tempMuni;

  @HiveField(12)
  int? tempward;

  @HiveField(13)
  String? tempstreettol;

  @HiveField(14)
  int? tempblockno;

  @HiveField(15)
  String? permProv;

  @HiveField(16)
  String? permdistrict;

  @HiveField(17)
  String? permMuni;

  @HiveField(18)
  int? permpward;

  @HiveField(19)
  String? permstreettol;

  @HiveField(20)
  int? permblocknoaddress;

  @HiveField(21)
  String? fatherFirstName;

  @HiveField(22)
  String? motherFirstName;

  @HiveField(23)
  String? spouseFirstName;

  @HiveField(24)
  String? grandfatherFirstname;

  @HiveField(25)
  String? grandmotherFirstname;

  @HiveField(26)
  String? sonFirstname;

  @HiveField(27)
  String? daughterFirstname;

  @HiveField(28)
  int? totalson;

  @HiveField(29)
  int? totaldaughter;

  @HiveField(30)
  String? jobtype;

  @HiveField(31)
  String? joborganization;

  @HiveField(32)
  String? organizationaddress;

  @HiveField(33)
  double? annualincome;

  @HiveField(34)
  String? designation;

  @HiveField(35)
  String? nationalismandreligion;

  @HiveField(36)
  String? nationality;

  @HiveField(37)
  String? religion;

  @HiveField(38)
  String? ethnicgroup;

  @HiveField(39)
  int? totalmonthlyincome;

  @HiveField(40)
  String? incomesource;

  @HiveField(41)
  String? incomesourceman;

  @HiveField(42)
  String? expensecategory;

  @HiveField(43)
  double? totalexpense;

  @HiveField(44)
  bool? isbalanceddiet;

  @HiveField(45)
  String? foodconsumptiontiming;

  @HiveField(46)
  String? regularmealdescription;

  @HiveField(47)
  bool? isorganic;

  @HiveField(48)
  String? Houseaddress;

  @HiveField(49)
  int? Blocknumber;

  @HiveField(50)
  String? Streetname;

  @HiveField(51)
  int? Housenumber;

  @HiveField(52)
  String? toilettypeid;

  @HiveField(53)
  String? citizenshipnumber;

  @HiveField(54)
  String? issueddate;

  @HiveField(55)
  String? issuedat;

  @HiveField(56)
  String? verifiedby;

  @HiveField(57)
  String? businessorg;

  @HiveField(58)
  String? businesstypeid;

  @HiveField(59)
  String? orgname;

  @HiveField(60)
  int? totalinvestment;

  @HiveField(61)
  int? annualincomeorg;

  @HiveField(62)
  double? annualxpense;

  @HiveField(63)
  int? totalnostaff;

  @HiveField(64)
  String? businessarea;

  @HiveField(65)
  String? businessproduct;

  @HiveField(66)
  String? schoolname;

  @HiveField(67)
  String? schooltypeid;

  @HiveField(68)
  String? dresscode;

  @HiveField(69)
  String? dresscondition;

  @HiveField(70)
  String? childenschoolschemeid;

  @HiveField(71)
  String? skincolor;

  @HiveField(72)
  bool? ishandicap;

  @HiveField(73)
  String? handicappedtypeid;

  @HiveField(74)
  String? childrenFirstname;

  @HiveField(75)
  String? childrengender;

  @HiveField(76)
  String? familydetailid;

  @HiveField(77)
  String? childrendob;

  @HiveField(78)
  String? interestedfieldid;

  @HiveField(79)
  bool? istakingtraining;

  @HiveField(80)
  String? professionalstatus;

  @HiveField(81)
  String? durationofactivities;

  @HiveField(82)
  String? childrenbloodgroup;

  @HiveField(83)
  String? childrenbirthplace;

  @HiveField(84)
  int? chilrenbirthweight;

  @HiveField(85)
  String? childrenbirthcondition;

  @HiveField(86)
  bool? childrenisBCGvaccinated;

  @HiveField(87)
  bool? childrenisDPTHEPBvaccinated;

  @HiveField(88)
  bool? childrenisOPVvaccinated;

  @HiveField(89)
  bool? childrenisPCVvaccinated;

  @HiveField(90)
  bool? childrenisIPVvaccinated;

  @HiveField(91)
  bool? childrenisMRvaccinated;

  @HiveField(92)
  bool? childrenisJEvaccinated;

  @HiveField(93)
  bool? childrenisTDvaccinated;

  @HiveField(94)
  bool? childrenisgeneticdiseaseissue;

  @HiveField(95)
  String? childrengeneticdiseasedescription;

  @HiveField(96)
  bool? childreniscovidvaccinated;

  @HiveField(97)
  String? childrenvaccinedetails;

  @HiveField(98)
  String? childrenvacinedose;

  @HiveField(99)
  String? healthbloodgroup;

  @HiveField(100)
  String? birthplace;

  @HiveField(101)
  int? birthweight;

  @HiveField(102)
  String? birthcondition;

  @HiveField(103)
  bool? isbelowvaccinated;

  @HiveField(104)
  bool? iscovidvaccinated;

  @HiveField(105)
  String? vaccinedetails;

  @HiveField(106)
  String? vacinedose;

  @HiveField(107)
  bool? isgeneticdiseaseissue;

  @HiveField(108)
  String? geneticdiseasedescription;

  @HiveField(109)
  double? latitude;

  @HiveField(110)
  double? longitude;

  @HiveField(111)
  String? middlename;

  @HiveField(112)
  String? lastname;

  @HiveField(113)
  String? fatherMiddlename;

  @HiveField(114)
  String? fatherLastname;

  @HiveField(115)
  String? motherMiddlename;

  @HiveField(116)
  String? motherLastname;

  @HiveField(117)
  String? grandfatherMiddlename;

  @HiveField(118)
  String? grandfatherLastname;

  @HiveField(119)
  String? grandmotherMiddlename;

  @HiveField(120)
  String? grandmotherLastname;

  @HiveField(121)
  String? sonMiddlename;

  @HiveField(122)
  String? sonLastname;

  @HiveField(123)
  String? daughterMiddlename;

  @HiveField(124)
  String? daughterLastname;

  @HiveField(125)
  String? childrenMiddlename;

  @HiveField(126)
  String? childrenLastname;

  @HiveField(127)
  String? spouseMiddleName;

  @HiveField(128)
  String? spouseLastName;

  formModel({
    this.firstname,
    this.middlename,
    this.lastname,
    this.age,
    this.gender,
    this.dateofbirthpersonal,
    this.handicappedidpersonal,
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
    this.permblocknoaddress,
    this.fatherFirstName,
    this.fatherMiddlename,
    this.fatherLastname,
    this.motherFirstName,
    this.motherMiddlename,
    this.motherLastname,
    this.spouseFirstName,
    this.spouseMiddleName,
    this.spouseLastName,
    this.grandfatherFirstname,
    this.grandfatherMiddlename,
    this.grandfatherLastname,
    this.grandmotherFirstname,
    this.grandmotherMiddlename,
    this.grandmotherLastname,
    this.sonFirstname,
    this.daughterFirstname,
    this.sonMiddlename,
    this.daughterMiddlename,
    this.sonLastname,
    this.daughterLastname,
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
    this.childrenFirstname,
    this.childrenMiddlename,
    this.childrenLastname,
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
    this.isbelowvaccinated,
    this.iscovidvaccinated,
    this.vaccinedetails,
    this.vacinedose,
    this.isgeneticdiseaseissue,
    this.geneticdiseasedescription,
    this.latitude,
    this.longitude,
  });
  Map<String, dynamic> toJson() => {
        "first_name": firstname,
        "middle_name": middlename,
        "last_name": lastname,

        "dob": dateofbirthpersonal,
        "gender": gender,
        "mobile_number": mobilenumber,
        "email": email,
        "pan_number": pannumber,

        "permanent_province": permProv,
        "permanent_district": permdistrict,
        "permanent_vdc_municipality": permMuni,
        "permanent_ward_no": permpward,
        "permanent_street": permstreettol,
        "temporary_province": tempProv,
        "temporary_district": tempdistrict,
        "temporary_vdc_municipality": tempMuni,
        "temporary_ward_no": tempward,
        "temporary_street": tempstreettol,

        // "citizenship_number": citizenshipNumber,
        // "citizenship_issued_date": "${citizenshipIssuedDate.year.toString().padLeft(4, '0')}-${citizenshipIssuedDate.month.toString().padLeft(2, '0')}-${citizenshipIssuedDate.day.toString().padLeft(2, '0')}",
        // "citizenship_issued_at": citizenshipIssuedAt,
        // "citizenship_verified_by": citizenshipVerifiedBy,
        // "nationality": nationality,
        // "religion": religion,
        // "ethnic_group": ethnicGroup,
        // "father_first_name": fatherFirstName,
        // "father_middle_name": fatherMiddleName,
        // "father_last_name": fatherLastName,
        // "mother_first_name": motherFirstName,
        // "mother_middle_name": motherMiddleName,
        // "mother_last_name": motherLastName,
        // "spouse_first_name": spouseFirstName,
        // "spouse_middle_name": spouseMiddleName,
        // "spouse_last_name": spouseLastName,
        // "grand_father_first_name": grandFatherFirstName,
        // "grand_father_middle_name": grandFatherMiddleName,
        // "grand_father_last_name": grandFatherLastName,
        // "grand_mother_first_name": grandMotherFirstName,
        // "grand_mother_middle_name": grandMotherMiddleName,
        // "grand_mother_last_name": grandMotherLastName,
        // "children_first_name_0": childrenFirstName0,
        // "children_gender_0": 1,
        // "children_school_name_0": childrenSchoolName0,
        // "children_dress_code_0": childrenDressCode0,
        // "children_dress_condition_0": childrenDressCondition0,
        // "children_school_type_0": childrenSchoolType0,
        // "children_school_scheme_0": childrenSchoolScheme0,
        // "children_eca_interested_field_0": childrenEcaInterestedField0,
        // "children_is_taking_training_0": childrenIsTakingTraining0,
        // "children_professional_status_0": childrenProfessionalStatus0,
        // "children_duration_of_activities_0": childrenDurationOfActivities0,
        // "children_blood_group_0": childrenBloodGroup0,
        // "children_birth_place_0": childrenBirthPlace0,
        // "children_birth_weight_0": childrenBirthWeight0,
        // "children_birth_condition_0": childrenBirthCondition0,
        // "children_vaccine_dose_0": childrenVaccineDose0,
        // "children_vaccine_details_0": childrenVaccineDetails0,
        // "children_genetic_disease_description_0": childrenGeneticDiseaseDescription0,
        // "children_is_bcg_vaccinated_0": childrenIsBcgVaccinated0,
        // "children_is_dpt_hep_b_vaccinated_0": childrenIsDptHepBVaccinated0,
        // "children_is_pcv_vaccinated_0": childrenIsPcvVaccinated0,
        // "children_is_ipv_vaccinated_0": childrenIsIpvVaccinated0,
        // "children_is_je_vaccinated_0": childrenIsJeVaccinated0,
        // "children_is_td_vaccinated_0": childrenIsTdVaccinated0,
        // "children_first_name_1": childrenFirstName1,
        // "children_middle_name_1": childrenMiddleName1,
        // "children_last_name_1": childrenLastName1,
        // "children_dob_1": childrenDob1,
        // "children_gender_1": childrenGender1,
        // "children_school_name_1": childrenSchoolName1,
        // "children_dress_code_1": childrenDressCode1,
        // "children_dress_condition_1": childrenDressCondition1,
        // "children_school_type_1": childrenSchoolType1,
        // "children_school_scheme_1": childrenSchoolScheme1,
        // "children_eca_interested_field_1": childrenEcaInterestedField1,
        // "children_is_taking_training_1": childrenIsTakingTraining1,
        // "children_professional_status_1": childrenProfessionalStatus1,
        // "children_duration_of_activities_1": childrenDurationOfActivities1,
        // "children_blood_group_1": childrenBloodGroup1,
        // "children_birth_place_1": childrenBirthPlace1,
        // "children_birth_weight_1": childrenBirthWeight1,
        // "children_birth_condition_1": childrenBirthCondition1,
        // "children_vaccine_dose_1": childrenVaccineDose1,
        // "children_vaccine_details_1": childrenVaccineDetails1,
        //  "children_genetic_disease_description_1": childrenGeneticDiseaseDescription1,
        // "blood_group": bloodGroup,
        // "birth_place": birthPlace,
        // "birth_weight": birthWeight,
        // "birth_condition": birthCondition,
        // "vaccine_dose": vaccineDose,
        // "vaccine_details": vaccineDetails,
        // "genetic_disease_description": geneticDiseaseDescription,
        // "skin_color": skinColor,
        // "disability_type_nature": disabilityTypeNature,
        // "disability_type_severity": disabilityTypeSeverity,
        // "house_address": houseAddress,
        // "block_number": blockNumber,
        // "street_name": streetName,
        // "house_number": houseNumber,
        // "toilet_type": toiletType,
        // "job_type": jobType,
        // "job_organization": jobOrganization,
        // "organization_address": organizationAddress,
        // "annual_income": annualIncome,
        // "designation": designation,
        // "business_type": businessType,
        // "organization_name": organizationName,
        // "total_investment": totalInvestment,
        // "annual_business_income": annualBusinessIncome,
        // "annual_business_expense": annualBusinessExpense,
        // "total_staff_no": totalStaffNo,
        // "business_area": businessArea,
        // "business_product": businessProduct,
        // "latitude": latitude,
        // "longitude": longitude,
        // "food_consumption_timing": foodConsumptionTiming,
        // "regular_meal_description": regularMealDescription,
        // "total_monthly_income": totalMonthlyIncome,
        // "income_source": incomeSource,
        // "income_source_main": incomeSourceMain,
        // "expense_category": expenseCategory,
        // "total_expense": totalExpense,
        // "children_is_genetic_disease_issue_0": childrenIsGeneticDiseaseIssue0,
        // "children_is_covid_vaccinated_0": childrenIsCovidVaccinated0,
        // "children_is_opv_vaccinated_0": childrenIsOpvVaccinated0,
        // "children_is_mr_vaccinated_0": childrenIsMrVaccinated0,
        // "children_is_genetic_disease_issue_1": childrenIsGeneticDiseaseIssue1,
        // "children_is_covid_vaccinated_1": childrenIsCovidVaccinated1,
        // "children_is_bcg_vaccinated_1": childrenIsBcgVaccinated1,
        // "children_is_dpt_hep_b_vaccinated_1": childrenIsDptHepBVaccinated1,
        // "children_is_opv_vaccinated_1": childrenIsOpvVaccinated1,
        // "children_is_pcv_vaccinated_1": childrenIsPcvVaccinated1,
        // "children_is_ipv_vaccinated_1": childrenIsIpvVaccinated1,
        // "children_is_mr_vaccinated_1": childrenIsMrVaccinated1,
        // "children_is_je_vaccinated_1": childrenIsJeVaccinated1,
        // "children_is_td_vaccinated_1": childrenIsTdVaccinated1,
        // "is_below_five_vaccinated": isBelowFiveVaccinated,
        // "is_covid_vaccinated": isCovidVaccinated,
        // "is_genetic_disease_issue": isGeneticDiseaseIssue,
        // "is_disabled": isDisabled,
        // "is_balanced_diet": isBalancedDiet,
        // "is_organic": isOrganic,
      };

  // Form.intState()
  //     : fullName = '',
  //       age = 0,
  //       gender = '';
  // //       dob = '',
  // //       handicappedid = 0,
  // //       mobilenumber = 0,
  // //       email = '',
  // //       pannumber = 0,
  // //       bloodgroup = '',
  // //       tempProv = '',
  // //       tempdistrict = '',
  // //       tempMuni = '',
  // //       tempward = 0,
  // //       tempstreettol = '',
  // //       tempblockno = 0,
  // //       permProv = '',
  // //       permMuni = '',
  // //       permpward = 0,
  // //       permstreettol = '',
  // //       permblockno = 0,
  // //       permdistrict = '',
  // //       fatherdetails = '',
  // //       motherdetails = '',
  // //       spousename = '',
  // //       grandfathername = '',
  // //       grandmothername = '',
  // //       sonname = '',
  // //       daughtername = '',
  // //       totalson = 0,
  // //       totaldaughter = 0,
  // //       jobtype = '',
  // //       joborganization = '',
  // //       organizationaddress = '',
  // //       annualincome = 0,
  // //       designation = '',
  // //       nationalismandreligion = '',
  // //       nationality = '',
  // //       religion = '',
  // //       ethnicgroup = '',
  // //       totalmonthlyincome = 0,
  // //       incomesource = '',
  // //       incomesourceman = '',
  // //       expensecategory = '',
  // //       totalexpense = 0,
  // //       isbalanceddiet = false,
  // //       foodconsumptiontiming = '',
  // //       regularmealdescription = '',
  // //       isorganic = false,
  // //       Houseaddress = '',
  // //       Blocknumber = 0,
  // //       Streetname = '',
  // //       Housenumber = 0,
  // //       toilettypeid = '',
  // //       citizenshipnumber = 0,
  // //       issueddate = '',
  // //       issuedat = '',
  // //       verifiedby = '',
  // //       businessorg = '',
  // //       businesstypeid = '',
  // //       orgname = '',
  // //       totalinvestment = 0,
  // //       annualincomeorg = 0,
  // //       annualxpense = 0,
  // //       totalnostaff = 0,
  // //       businessarea = '',
  // //       businessproduct = '',
  // //       schoolname = '',
  // //       schooltypeid = '',
  // //       dresscode = '',
  // //       dresscondition = '',
  // //       childenschoolschemeid = '',
  // //       skincolor = '',
  // //       ishandicap = false,
  // //       handicappedtypeid = '',
  // //       name = '',
  // //       childrengender = '',
  // //       familydetailid = '',
  // //       childrendob = '',
  // //       interestedfieldid = '',
  // //       istakingtraining = false,
  // //       professionalstatus = '',
  // //       durationofactivities = '',
  // //       childrenbloodgroup = '',
  // //       childrenbirthplace = '',
  // //       chilrenbirthweight = 0,
  // //       childrenbirthcondition = '',
  // //       childrenisBCGvaccinated = false,
  // //       childrenisDPTHEPBvaccinated = false,
  // //       childrenisOPVvaccinated = false,
  // //       childrenisPCVvaccinated = false,
  // //       childrenisIPVvaccinated = false,
  // //       childrenisMRvaccinated = false,
  // //       childrenisJEvaccinated = false,
  // //       childrenisTDvaccinated = false,
  // //       childrenisgeneticdiseaseissue = false,
  // //       childrengeneticdiseasedescription = '',
  // //       childreniscovidvaccinated = false,
  // //       childrenvaccinedetails = '',
  // //       childrenvacinedose = '',
  // //       healthbloodgroup = '',
  // //       birthplace = '',
  // //       birthweight = 0,
  // //       birthcondition = '',
  // //       isbelowvaccinated = false,
  // //       iscovidvaccinated = false,
  // //       vaccinedetails = '',
  // //       vacinedose = '',
  // //       isgeneticdiseaseissue = false,
  // //       geneticdiseasedescription = '',
  // //       latitude = '',
  // //       longitude = '';

  // Form copyWith({
  //   String? fullName,
  //   int? age,
  //   String? gender,
  //   String? dob,
  //   int? handicappedid,
  //   int? mobilenumber,
  //   String? email,
  //   int? pannumber,
  //   String? bloodgroup,
  //   String? tempProv,
  //   String? tempdistrict,
  //   String? tempMuni,
  //   int? tempward,
  //   String? tempstreettol,
  //   int? tempblockno,
  //   String? permProv,
  //   String? permdistrict,
  //   String? permMuni,
  //   int? permpward,
  //   String? permstreettol,
  //   int? permblockno,
  //   String? fatherdetails,
  //   String? motherdetails,
  //   String? spousename,
  //   String? grandfathername,
  //   String? grandmothername,
  //   String? sonname,
  //   String? daughtername,
  //   int? totalson,
  //   int? totaldaughter,
  //   String? jobtype,
  //   String? joborganization,
  //   String? organizationaddress,
  //   int? annualincome,
  //   String? designation,
  //   String? nationalismandreligion,
  //   String? nationality,
  //   String? religion,
  //   String? ethnicgroup,
  //   int? totalmonthlyincome,
  //   String? incomesource,
  //   String? incomesourceman,
  //   String? expensecategory,
  //   double? totalexpense,
  //   bool? isbalanceddiet,
  //   String? foodconsumptiontiming,
  //   String? regularmealdescription,
  //   bool? isorganic,
  //   String? Houseaddress,
  //   int? Blocknumber,
  //   String? Streetname,
  //   int? Housenumber,
  //   String? toilettypeid,
  //   int? citizenshipnumber,
  //   String? issueddate,
  //   String? issuedat,
  //   String? verifiedby,
  //   String? businessorg,
  //   String? businesstypeid,
  //   String? orgname,
  //   int? totalinvestment,
  //   int? annualincomeorg,
  //   double? annualxpense,
  //   int? totalnostaff,
  //   String? businessarea,
  //   String? businessproduct,
  //   String? schoolname,
  //   String? schooltypeid,
  //   String? dresscode,
  //   String? dresscondition,
  //   String? childenschoolschemeid,
  //   String? skincolor,
  //   bool? ishandicap,
  //   String? handicappedtypeid,
  //   String? name,
  //   String? childrengender,
  //   String? familydetailid,
  //   String? childrendob,
  //   String? interestedfieldid,
  //   bool? istakingtraining,
  //   String? professionalstatus,
  //   String? durationofactivities,
  //   String? childrenbloodgroup,
  //   String? childrenbirthplace,
  //   int? chilrenbirthweight,
  //   String? childrenbirthcondition,
  //   bool? childrenisBCGvaccinated,
  //   bool? childrenisDPTHEPBvaccinated,
  //   bool? childrenisOPVvaccinated,
  //   bool? childrenisPCVvaccinated,
  //   bool? childrenisIPVvaccinated,
  //   bool? childrenisMRvaccinated,
  //   bool? childrenisJEvaccinated,
  //   bool? childrenisTDvaccinated,
  //   bool? childrenisgeneticdiseaseissue,
  //   String? childrengeneticdiseasedescription,
  //   bool? childreniscovidvaccinated,
  //   String? childrenvaccinedetails,
  //   String? childrenvacinedose,
  //   String? healthbloodgroup,
  //   String? birthplace,
  //   int? birthweight,
  //   String? birthcondition,
  //   bool? isbelowvaccinated,
  //   bool? iscovidvaccinated,
  //   String? vaccinedetails,
  //   String? vacinedose,
  //   bool? isgeneticdiseaseissue,
  //   String? geneticdiseasedescription,
  //   String? latitude,
  //   String? longitude,
  // }) {
  //   return Form(
  //     fullName: fullName ?? this.fullName,
  //     age: age ?? this.age,
  //     gender: gender ?? this.gender,
  //     // dob: dob ?? this.dob,
  //     // handicappedid: handicappedid ?? this.handicappedid,
  // mobilenumber: mobilenumber ?? this.mobilenumber,
  // email: email ?? this.email,
  // pannumber: pannumber ?? this.pannumber,
  // bloodgroup: bloodgroup ?? this.bloodgroup,
  // tempProv: tempProv ?? this.tempProv,
  // tempdistrict: tempdistrict ?? this.tempdistrict,
  // tempMuni: tempMuni ?? this.tempMuni,
  // tempward: tempward ?? this.tempward,
  // tempstreettol: tempstreettol ?? this.tempstreettol,
  // permProv: permProv ?? this.permProv,
  // permdistrict: permdistrict ?? this.permdistrict,
  // permMuni: permMuni ?? this.permMuni,
  // permpward: permpward ?? this.permpward,
  // permstreettol: permstreettol ?? this.permstreettol,
  // permblockno: permblockno ?? this.permblockno,
  // fatherdetails: fatherdetails ?? this.fatherdetails,
  // motherdetails: motherdetails ?? this.motherdetails,
  // spousename: spousename ?? this.spousename,
  // grandfathername: grandfathername ?? this.grandfathername,
  // grandmothername: grandmothername ?? this.grandmothername,
  // sonname: sonname ?? this.sonname,
  // daughtername: daughtername ?? this.daughtername,
  // totalson: totalson ?? this.totalson,
  // totaldaughter: totaldaughter ?? this.totaldaughter,
  // jobtype: jobtype ?? this.jobtype,
  // joborganization: joborganization ?? this.joborganization,
  // organizationaddress: organizationaddress ?? this.organizationaddress,
  // annualincome: annualincome ?? this.annualincome,
  // designation: designation ?? this.designation,
  // nationalismandreligion:
  //     nationalismandreligion ?? this.nationalismandreligion,
  // nationality: nationality ?? this.nationality,
  // religion: religion ?? this.religion,
  // ethnicgroup: ethnicgroup ?? this.ethnicgroup,
  // totalmonthlyincome: totalmonthlyincome ?? this.totalmonthlyincome,
  // incomesource: incomesource ?? this.incomesource,
  // incomesourceman: incomesourceman ?? this.incomesourceman,
  // expensecategory: expensecategory ?? this.expensecategory,
  // totalexpense: totalexpense ?? this.totalexpense,
  // isbalanceddiet: isbalanceddiet ?? this.isbalanceddiet,
  // foodconsumptiontiming:
  //     foodconsumptiontiming ?? this.foodconsumptiontiming,
  // regularmealdescription:
  //     regularmealdescription ?? this.regularmealdescription,
  // isorganic: isorganic ?? this.isorganic,
  // Houseaddress: Houseaddress ?? this.Houseaddress,
  // Blocknumber: Blocknumber ?? this.Blocknumber,
  // Streetname: Streetname ?? this.Streetname,
  // Housenumber: Housenumber ?? this.Housenumber,
  // toilettypeid: toilettypeid ?? this.toilettypeid,
  // citizenshipnumber: citizenshipnumber ?? this.citizenshipnumber,
  // issueddate: issueddate ?? this.issueddate,
  // issuedat: issuedat ?? this.issuedat,
  // verifiedby: verifiedby ?? this.verifiedby,
  // businessorg: businessorg ?? this.businessorg,
  // businesstypeid: businesstypeid ?? this.businesstypeid,
  // orgname: orgname ?? this.orgname,
  // totalinvestment: totalinvestment ?? this.totalinvestment,
  // annualincomeorg: annualincomeorg ?? this.annualincomeorg,
  // annualxpense: annualxpense ?? this.annualxpense,
  // totalnostaff: totalnostaff ?? this.totalnostaff,
  // businessarea: businessarea ?? this.businessarea,
  // businessproduct: businessproduct ?? this.businessproduct,
  // schoolname: schoolname ?? this.schoolname,
  // schooltypeid: schooltypeid ?? this.schooltypeid,
  // dresscode: dresscode ?? this.dresscode,
  // dresscondition: dresscondition ?? this.dresscondition,
  // childenschoolschemeid:
  //     childenschoolschemeid ?? this.childenschoolschemeid,
  // skincolor: skincolor ?? this.skincolor,
  // ishandicap: ishandicap ?? this.ishandicap,
  // handicappedtypeid: handicappedtypeid ?? this.handicappedtypeid,
  // name: name ?? this.name,
  // childrengender: childrengender ?? this.childrengender,
  // familydetailid: familydetailid ?? this.familydetailid,
  // childrendob: childrendob ?? this.childrendob,
  // interestedfieldid: interestedfieldid ?? this.interestedfieldid,
  // istakingtraining: istakingtraining ?? this.istakingtraining,
  // professionalstatus: professionalstatus ?? this.professionalstatus,
  // durationofactivities: durationofactivities ?? this.durationofactivities,
  // childrenbloodgroup: childrenbloodgroup ?? this.childrenbloodgroup,
  // childrenbirthplace: childrenbirthplace ?? this.childrenbirthplace,
  // chilrenbirthweight: chilrenbirthweight ?? this.chilrenbirthweight,
  // childrenbirthcondition:
  //     childrenbirthcondition ?? this.childrenbirthcondition,
  // childrenisBCGvaccinated:
  //     childrenisBCGvaccinated ?? this.childrenisBCGvaccinated,
  // childrenisOPVvaccinated:
  //     childrenisOPVvaccinated ?? this.childrenisOPVvaccinated,
  // childrenisDPTHEPBvaccinated:
  //     childrenisDPTHEPBvaccinated ?? this.childrenisDPTHEPBvaccinated,
  // childrenisIPVvaccinated:
  //     childrenisIPVvaccinated ?? this.childrenisIPVvaccinated,
  // childrenisPCVvaccinated:
  //     childrenisPCVvaccinated ?? this.childrenisPCVvaccinated,
  // childrenisMRvaccinated:
  //     childrenisMRvaccinated ?? this.childrenisMRvaccinated,
  // childrenisTDvaccinated:
  //     childrenisTDvaccinated ?? this.childrenisTDvaccinated,
  // childrenisgeneticdiseaseissue:
  //     childrenisgeneticdiseaseissue ?? this.childrenisgeneticdiseaseissue,
  // childrengeneticdiseasedescription: childrengeneticdiseasedescription ??
  //     this.childrengeneticdiseasedescription,
  // childreniscovidvaccinated:
  //     childreniscovidvaccinated ?? this.childreniscovidvaccinated,
  // childrenvaccinedetails:
  //     childrenvaccinedetails ?? this.childrenvaccinedetails,
  // childrenvacinedose: childrenvacinedose ?? this.childrenvacinedose,
  // healthbloodgroup: healthbloodgroup ?? this.healthbloodgroup,
  // birthplace: birthplace ?? this.birthplace,
  // birthweight: birthweight ?? this.birthweight,
  // birthcondition: birthcondition ?? this.birthcondition,
  // isbelowvaccinated: isbelowvaccinated ?? this.isbelowvaccinated,
  // iscovidvaccinated: iscovidvaccinated ?? this.iscovidvaccinated,
  // vaccinedetails: vaccinedetails ?? this.vaccinedetails,
  // vacinedose: vacinedose ?? this.vacinedose,
  // isgeneticdiseaseissue:
  //     isgeneticdiseaseissue ?? this.isgeneticdiseaseissue,
  // geneticdiseasedescription:
  //     geneticdiseasedescription ?? this.geneticdiseasedescription,
  // latitude: latitude ?? this.latitude,
  // longitude: longitude ?? this.longitude,
//     );
//   }
// }

// final formProvider =
//     StateNotifierProvider<FormPro, Form>((ref) => FormPro(Form.intState()));

// class FormPro extends StateNotifier<Form> {
//   FormPro(super.state);

//   void addData(Form data) {
//     state = state.copyWith();
//   }
//}
}
