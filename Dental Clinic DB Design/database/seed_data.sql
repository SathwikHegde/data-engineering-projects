INSERT INTO `allergylist` (`Allergy_Id`, `Name`, `Desc`) VALUES
(1, 'Aspirin', 'Allergies to aspirin'),
(2, 'Soy', 'Allergies to Soy'),
(3, 'Pollen', 'Allergies to Pollen'),
(4, 'Peanuts', 'Allergies to Peanuts'),
(5, 'Shellfish', 'Allergies to Shellfish'),
(6, 'Dust mites', 'Allergies to Dust mites'),
(7, 'Ibuprofen', 'Allergies to Ibuprofen'),
(8, 'Latex', 'Allergies to Latex'),
(9, 'Wheat', 'Allergies to Wheat'),
(10, 'Dairy', 'Allergies to Dairy');

INSERT INTO `appointments` (`Appointment_Id`, `Patient_Id`, `Dentist_ID`, `DentistAvailability_Id`, `RoomAvailability_Id`, `Room_Id`, `Branch_Id`, `PatientVisit_Id`, `Appointment_Date`, `Appointmentstatus`, `StartTime`, `EndTime`, `Reasonofvisit`) VALUES
(1, 1, 15, 1, 1, 1, 1, 1, '2020-04-20', 'Confirmed', '15:00:00', '16:00:00', 'Tooth Extraction'),
(2, 2, 16, 1, 2, 2, 1, 2, '2020-01-03', 'Confirmed', '12:00:00', '12:30:00', 'General check up'),
(3, 3, 17, 3, 1, 2, 2, 3, '2020-05-07', 'Confirmed', '10:00:00', '10:15:00', 'Consulation'),
(4, 4, 15, 4, 1, 2, 3, 4, '2020-11-11', 'Not Confirmed', '13:00:00', '14:00:00', 'Teeth Filling'),
(5, 5, 18, 5, 1, 2, 4, 5, '2020-04-20', 'Confirmed', '15:00:00', '16:00:00', 'Tooth Extraction');

INSERT INTO `branch` (`Branch_Id`, `Branch_Name`, `AddressLine_1`, `AddressLine_2`, `Mobileno`, `City`, `State`, `Zip`, `Country`) VALUES
(1, 'Downtown Crossing', '36 Chauncy Street', 'Downtown Crossing', 1617338500, 'Boston', 'Massachusetts', 2111, 'USA'),
(2, 'Seaport District', '35 Court Street', 'Seaport District', 1617402500, 'Boston', 'Massachusetts', 2108, 'USA'),
(3, 'Government Center', '22 Boston Wharf Rd', 'Government Center', 1617706500, 'Boston', 'Massachusetts', 2210, 'USA'),
(4, 'Chelsea', '776 6th Ave', 'Chelsea', 1503863168, 'New York', 'New York', 10001, 'USA'),
(5, 'Union Square', '841 Broadway', 'Union Square', 1413269234, 'New York', 'New York', 10003, 'USA');

INSERT INTO `coviddisclosure` (`Covid_Detail_Id`, `Question`) VALUES
(1, 'Fever check'),
(2, 'Difficulty Breathing'),
(3, 'Cough'),
(4, 'Cold'),
(5, 'Travel in the last 14 days'),
(6, 'Contact with a suspected or confirmed case of COVID-19'),
(7, 'Experiencing pain or discomfort');

INSERT INTO `dentalhistoryinformationlist` (`DentalHistory_Id`, `Question`) VALUES
(1, 'Are you nervous during dental visits or treatment'),
(2, 'Have you ever had an unfavorable dental experience'),
(3, 'Have you ever had complications from past dental treatment'),
(4, 'Have you ever experienced a dental operation or procedure of any kind'),
(5, 'Have you ever had trouble getting numb or had reactions to local anesthetic'),
(6, 'Do you bruise easily or bleed severely when cut'),
(7, 'Have you ever worn braces?'),
(8, 'Have you ever had any teeth removed or had teeth that never developed'),
(9, 'Do your gums bleed or are they painful when brushing or flossinG'),
(10, 'Have you ever been treated for gum disease'),
(11, 'Have you ever noticed an unpleasant taste or odor in your mouth'),
(12, 'Is there anyone with a history of periodontal disease in your family'),
(13, 'Have you ever experienced gum recession'),
(14, 'Have you had any cavities within the past 3 years'),
(15, 'Do you have difficulty swallowing any food'),
(16, 'Do you have problems with your jaw joint (pain, sounds, locking, popping)'),
(17, 'Do you feel or notice any holes on the biting surface of your teeth'),
(18, 'Do you avoid or have difficulty chewing gum, nuts, or other hard, dry foods'),
(19, 'Are any teeth sensitive to hot or cold temperatures'),
(20, 'Have you ever broken teeth, chipped teeth, or had a toothache or cracked filling'),
(21, 'In the past 5 years, have your teeth or bite changed (shorter, thinner)'),
(22, 'Do you chew ice, bite your nails, or have any other oral habits'),
(23, 'Do you have any problems with sleep (i.e. restlessness or teeth grinding), wake up with a headache o');

INSERT INTO `dentist` (`Dentist_Id`, `User_Id`, `ImagePath`, `Fname`, `Lname`, `Dateofbirth`, `AddressLine_1`, `AddressLine_2`, `Mobileno`, `Emailid`, `City`, `State`, `Country`, `ZipCode`, `Certificateno`, `Specialization`) VALUES
(1, 1, '', 'John', 'Mathew', '2014-11-20', '170 Parker Hill Avenue', 'Roxbury Crossing', 2147483647, 'johnmathew@gmail.com', 'Boston', 'Massachusetts', 'USA', 2120, 456123545, 'Pediatric '),
(15, 1202, 'uploads/12121212.jpg', 'Rahul', 'Mehra', '1968-12-09', '7208 Berge Square	', 'Bilzen', 12121212, 'test@mailnator.com', 'Bilzen', 'Bilzen', 'United States', 2210, 121212, 'Ortho'),
(2, 2, '', 'Ajay', 'Nair', '2014-12-20', '10 Parker Hill street', 'Roxbury Crossing', 2147483647, 'ajay@gmail.com', 'Boston', 'Massachusetts', '02120', 0, 456234665, 'Periodonti'),
(16, 1203, 'uploads/15454545545.jpg', 'John', 'Doe', '2021-12-15', 'New Apprt', 'Road line', 2147483647, 'dmdd@mailinator.com', 'Mumbai', 'Maharashtra', 'India', 400074, 210192, 'BDSA'),
(17, 1204, 'uploads/941.jpg', 'Zelenia', 'Booker', '0000-00-00', '494 East Fabien Lane', 'Voluptatibus occaeca', 941, 'gamamob@mailinator.com', 'At vel reprehenderit', 'Veritatis occaecat l', 'Optio mollitia cum ', 16090, 0, 'Dolor vel praesentiu'),
(18, 1205, 'uploads/247.jpg', 'Maxine', 'Lamb', '0000-00-00', '87 North Cowley Drive', 'Soluta non deserunt ', 247, 'sesilyfeb@mailinator.com', 'Quia in repudiandae ', 'Qui suscipit minim a', 'Consequatur Numquam', 55055, 0, 'Et rerum ut velit do'),
(19, 1206, 'uploads/530.jpg', 'Jack', 'Bowen', '0000-00-00', '190 Rocky Old Parkway', 'Aperiam eu proident', 530, 'zuwinoq@mailinator.com', 'Ut qui sint enim exc', 'Culpa consectetur d', 'Quasi ut reiciendis ', 88747, 0, 'Hic quia magnam ut d');

INSERT INTO `dentistavailability` (`Dentistavailability_Id`, `Dentist_Id`, `Starttime`, `Endtime`, `Date`, `isDentistAvailable`) VALUES
(1, 1, '09:00:00', '09:15:00', '2021-12-15', 1),
(2, 2, '10:00:00', '10:30:00', '2021-12-15', 0);

INSERT INTO `disorderlist` (`Disorder_Id`, `Name`, `Desc`) VALUES
(1, 'AIDS/HIV Positive', 'AIDS/HIV Positive'),
(2, 'Head or Neck Injuries', 'Head or Neck Injuries'),
(3, 'Experiencing pain or discomfor', 'Experiencing pain or discomfort'),
(4, 'Organ/Medical Transplant', 'Organ/Medical Transplant'),
(5, 'Psychiatric Disorder', 'Psychiatric Disorder'),
(6, 'Alzheimers Disease', 'Alzheimers Disease'),
(7, 'Heart Attack/Failure', 'Heart Attack/Failure'),
(8, 'Anaphylaxis', 'Anaphylaxis'),
(9, 'Heart Murmur', 'Heart Murmur'),
(10, 'Anemia', 'Anemia'),
(11, 'Heart Pacemaker', 'Heart Pacemaker'),
(12, 'Arthritis/ Gout', 'Arthritis/ Gout'),
(13, 'Heart Surgery', 'Heart Surgery'),
(14, 'Artificial Heart Valve', 'Artificial Heart Valve'),
(15, 'Hemophilia', 'Hemophilia'),
(16, 'Artificial Joint', 'Artificial Joint'),
(17, 'Hepatitis A/ B or C', 'Hepatitis A/ B or C'),
(18, 'Asthma', 'Asthma'),
(19, 'Blood Disease', 'Blood Disease'),
(20, 'High Blood Pressure', 'High Blood Pressure'),
(21, 'Bruise Easily', 'Bruise Easily'),
(22, 'Infective Endocarditis', 'Infective Endocarditis'),
(23, 'Cancer', 'Cancer'),
(24, 'Alcohol or Drug Dependency', 'Alcohol or Drug Dependency'),
(25, 'Circulation Problems', 'Circulation Problems'),
(26, 'Liver Disease', 'Liver Disease'),
(27, 'Diabetes', 'Diabetes'),
(28, 'Emphysema', 'Emphysema'),
(30, 'Epilepsy/ Seizure', 'Eating Disorder'),
(31, 'Eating Disorder', 'Eating Disorder'),
(32, 'Sickle Cell Disease', 'Sickle Cell Disease'),
(33, 'Fainting', 'Fainting'),
(34, 'Stroke', 'Stroke'),
(35, 'Glaucoma', 'Glaucoma'),
(36, 'Gastrointestinal Disorders', 'Gastrointestinal Disorders');