CREATE TABLE `allergylist` (
  `Allergy_Id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Desc` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `appointments` (
  `Appointment_Id` int(11) NOT NULL,
  `Patient_Id` int(11) NOT NULL,
  `Dentist_ID` int(11) NOT NULL,
  `DentistAvailability_Id` int(11) NOT NULL,
  `RoomAvailability_Id` int(11) NOT NULL,
  `Room_Id` int(11) NOT NULL,
  `Branch_Id` int(11) NOT NULL,
  `PatientVisit_Id` int(11) NOT NULL,
  `Appointment_Date` date DEFAULT NULL,
  `Appointmentstatus` varchar(15) DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `Reasonofvisit` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `billing` (
  `Billing_Id` int(11) NOT NULL,
  `Patienttreatment_id` int(11) NOT NULL,
  `Price` float DEFAULT NULL,
  `Taxprice` float DEFAULT NULL,
  `Totalcost` float DEFAULT NULL,
  `Paymentstatus` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `branch` (
  `Branch_Id` int(11) NOT NULL,
  `Branch_Name` varchar(20) DEFAULT NULL,
  `AddressLine_1` varchar(30) DEFAULT NULL,
  `AddressLine_2` varchar(30) DEFAULT NULL,
  `Mobileno` int(10) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Zip` int(10) DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `coviddisclosure` (
  `Covid_Detail_Id` int(11) NOT NULL,
  `Question` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `dentalhistoryinformationlist` (
  `DentalHistory_Id` int(11) NOT NULL,
  `Question` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `dentist` (
  `Dentist_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `ImagePath` varchar(500) NOT NULL,
  `Fname` varchar(20) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL,
  `Dateofbirth` date DEFAULT NULL,
  `AddressLine_1` varchar(50) DEFAULT NULL,
  `AddressLine_2` varchar(50) DEFAULT NULL,
  `Mobileno` int(11) NOT NULL,
  `Emailid` varchar(30) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `ZipCode` int(11) NOT NULL,
  `Certificateno` int(20) DEFAULT NULL,
  `Specialization` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `dentistavailability` (
  `Dentistavailability_Id` int(11) NOT NULL,
  `Dentist_Id` int(11) NOT NULL,
  `Starttime` time DEFAULT NULL,
  `Endtime` time DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `isDentistAvailable` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `disorderlist` (
  `Disorder_Id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Desc` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `equipmentlist` (
  `EQUIPMENT_ID` int(11) NOT NULL,
  `ROOM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `hygienist` (
  `Hygienist_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Fname` varchar(20) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL,
  `Dateofbirth` date DEFAULT NULL,
  `AddressLine_1` varchar(50) DEFAULT NULL,
  `AddressLine_2` varchar(50) DEFAULT NULL,
  `Mobileno` int(11) NOT NULL,
  `Emailid` varchar(30) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `ZipCode` int(11) NOT NULL,
  `Certificateno` int(11) DEFAULT NULL,
  `Specialization` varchar(10) DEFAULT NULL,
  `ImagePath` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `medicinelist` (
  `Medicine_Id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Desc` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `patient` (
  `Patient_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Fname` varchar(20) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL,
  `Dateofbirth` date DEFAULT NULL,
  `Mobileno` int(11) NOT NULL,
  `Emailid` varchar(30) DEFAULT NULL,
  `AddressLine_1` varchar(50) DEFAULT NULL,
  `AddressLine_2` varchar(50) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `ZipCode` int(11) NOT NULL,
  `Emergencycontactname` varchar(10) DEFAULT NULL,
  `Emergencycontactnum` varchar(10) DEFAULT NULL,
  `EMERGENCY_CONTACT_DOB` date NOT NULL,
  `Relationship` varchar(10) DEFAULT NULL,
  `Patientconsent` text NOT NULL,
  `ImagePath` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `patientallergyhistory` (
  `PATIENTALLERGYHISTORY_ID` int(11) NOT NULL,
  `Patientvisit_Id` int(11) NOT NULL,
  `Patient_id` int(11) NOT NULL,
  `Allergy_Id` int(11) NOT NULL,
  `ALLERGY_ ANSWER` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `patientcovidhistory` (
  `Patientcovidhistory_id` int(11) NOT NULL,
  `CovidDetail_Id` int(11) NOT NULL,
  `PatientVisit_id` int(11) NOT NULL,
  `COVID_ ANSWER` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `patientdentalhistory` (
  `Patientdentalhistory_id` int(11) NOT NULL,
  `Dental_History_Id` int(11) NOT NULL,
  `Patient_Id` int(11) NOT NULL,
  `DENTAL_ ANSWER` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `patientdisorderhistory` (
  `PatientdisorderHistory_Id` int(11) NOT NULL,
  `Patient_Id` int(11) NOT NULL,
  `Disorder_Id` int(11) NOT NULL,
  `PatientVisit_Id` int(11) NOT NULL,
  `DISORDER_ANSWER` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `patientinsuranceinformation` (
  `Patientinsurance_id` int(11) NOT NULL,
  `Patient_id` int(11) NOT NULL,
  `InsuranceNumber` varchar(11) NOT NULL,
  `Insurancecompanyname` varchar(50) DEFAULT NULL,
  `Policygroupno` int(15) NOT NULL,
  `Division` varchar(30) DEFAULT NULL,
  `Certificateno` int(15) NOT NULL,
  `Relationshiptopatient` varchar(30) DEFAULT NULL,
  `Insurancetype` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `patientprescription` (
  `Prescription_id` int(11) NOT NULL,
  `Patientvisit_id` int(11) NOT NULL,
  `Medicine_id` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Dosageinstruction` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `patienttoothstructure` (
  `Patientvisit_id` int(11) NOT NULL,
  `Tooth_id` int(11) NOT NULL,
  `Toothstructure_id` int(11) NOT NULL,
  `Remarks` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `patienttreatment` (
  `Patienttreatment_id` int(11) NOT NULL,
  `Patientvisit_id` int(11) NOT NULL,
  `Treatment_Id` int(11) NOT NULL,
  `Remarks` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `patientvisit` (
  `PatientVisit_Id` int(11) NOT NULL,
  `DENTIST_ID` int(11) NOT NULL,
  `Patient_Id` int(11) NOT NULL,
  `Hygienist_Id` int(11) NOT NULL,
  `VisitDate` date DEFAULT NULL,
  `Patientconsent` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `payment` (
  `Payment_Id` int(11) NOT NULL,
  `PATIENTVISIT_ID` int(11) NOT NULL,
  `Billing_Id` int(11) NOT NULL,
  `PaymentDate` date NOT NULL,
  `Paymentamount` varchar(30) DEFAULT NULL,
  `Paymentstatus` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `pharmacyinformation` (
  `Pharmacy_Id` int(11) NOT NULL,
  `Patient_Id` int(11) NOT NULL,
  `PATIENT INSURANCE _ID` int(11) NOT NULL,
  `PharmacyName` varchar(20) DEFAULT NULL,
  `AddressLine_1` varchar(50) DEFAULT NULL,
  `AddressLine_2` varchar(50) DEFAULT NULL,
  `Mobileno` int(11) NOT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `ZipCode` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `role` (
  `Role_Id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Desc` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `room` (
  `Room_Id` int(11) NOT NULL,
  `Branch_Id` int(11) NOT NULL,
  `Room_name` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `roomavailability` (
  `Roomavailability_Id` int(11) NOT NULL,
  `Room_Id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Starttime` time DEFAULT NULL,
  `Endtime` time DEFAULT NULL,
  `isRoomAsvailable` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `toothchart` (
  `Tooth_id` int(11) NOT NULL,
  `Toothname` varchar(200) DEFAULT NULL,
  `Toothnumber` varchar(200) NOT NULL,
  `Type` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `treatmentlist` (
  `Treatment_Id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Cost` varchar(30) DEFAULT NULL,
  `desc` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `user` (
  `User_Id` int(11) NOT NULL,
  `Role_Id` int(11) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;