--liquibase formatted sql

--changeset herronrb:indicators8

update tbl_sources set name_en = 'American Community Survey 5-year' where id_ = 1;
update tbl_sources set name_en = 'Bexar County Appraisal District' where id_ = 2;
update tbl_sources set name_en = 'Bexar County Elections' where id_ = 3;
update tbl_sources set name_en = 'Bexar County Juvenile Probation Dept.' where id_ = 4;
update tbl_sources set name_en = 'Centers for Disease Control and Prevention' where id_ = 5;
update tbl_sources set name_en = 'City of San Antonio' where id_ = 6;
update tbl_sources set name_en = 'COSA Neighborhood and Housing Services Dept.' where id_ = 7;
update tbl_sources set name_en = 'Decennial Census' where id_ = 8;
update tbl_sources set name_en = 'Early Development Instrument (EDI)' where id_ = 9;
update tbl_sources set name_en = 'Environmental Protection Agency' where id_ = 10;
update tbl_sources set name_en = 'FBI Uniform Crime Report' where id_ = 11;
update tbl_sources set name_en = 'Health Access San Antonio (HASA)' where id_ = 12;
update tbl_sources set name_en = 'Texas Health and Human Services (HHS)' where id_ = 13;
update tbl_sources set name_en = 'Dept. of Housing and Urban Development (HUD)' where id_ = 14;
update tbl_sources set name_en = 'Census LEHD' where id_ = 15;
update tbl_sources set name_en = 'National Vital Statistics Report' where id_ = 16;
update tbl_sources set name_en = 'National Housing Preservation Database' where id_ = 17;
update tbl_sources set name_en = 'CDC PLACES' where id_ = 18;
update tbl_sources set name_en = 'COSA Metro Health District' where id_ = 19;
update tbl_sources set name_en = 'San Antonio Police Dept.' where id_ = 20;
update tbl_sources set name_en = 'Dept. of Family and Protective Services (TDFPS)' where id_ = 21;
update tbl_sources set name_en = 'Dept. of Public Safety (TDPS)' where id_ = 22;
update tbl_sources set name_en = 'Dept. of State Health Services (TDSHS)' where id_ = 23;
update tbl_sources set name_en = 'THCIC Hospital Discharge PUDF' where id_ = 24;
update tbl_sources set name_en = 'United Way of San Antonio and Bexar County' where id_ = 25;
update tbl_sources set name_en = 'US Census Bureau' where id_ = 26;
update tbl_sources set name_en = 'USDA Food Atlas' where id_ = 27;

update tbl_indicators set name_en = '2020 Census response rate' where id_ = 1;
update tbl_indicators set name_en = 'Adequate social-emotional support' where id_ = 2;
update tbl_indicators set name_en = 'Voter registration' where id_ = 3;
update tbl_indicators set name_en = 'Voter turnout' where id_ = 4;
update tbl_indicators set name_en = 'Absentee property owners with two or more property maintenance violations within a 12-month period' where id_ = 5;
update tbl_indicators set name_en = 'Aggravated assaults (per 100K)' where id_ = 6;
update tbl_indicators set name_en = 'Burglaries (per 100K)' where id_ = 7;
update tbl_indicators set name_en = 'Child abuse prevalence - intakes (per 1K children)' where id_ = 8;
update tbl_indicators set name_en = 'Child abuse prevalence - confirmed victims (per 1K children)' where id_ = 9;
update tbl_indicators set name_en = 'Child abuse prevalence (revictimized)' where id_ = 10;
update tbl_indicators set name_en = 'Drug-related arrest rate (per 100K)' where id_ = 11;
update tbl_indicators set name_en = 'Family violence rate (per 1K)' where id_ = 12;
update tbl_indicators set name_en = 'Homicide and manslaughter rate (per 100K)' where id_ = 13;
update tbl_indicators set name_en = 'Juvenile probation rate (per 100K)' where id_ = 14;
update tbl_indicators set name_en = 'Incarcerated as of 2020 Census' where id_ = 15;
update tbl_indicators set name_en = 'Property crime rate (per 100K)' where id_ = 16;
update tbl_indicators set name_en = 'Reported hate crime offense rate  (per 100K)' where id_ = 17;
update tbl_indicators set name_en = 'Sexual assault rate (per 100K)' where id_ = 18;
update tbl_indicators set name_en = 'Arrest rate (per 100K)' where id_ = 19;
update tbl_indicators set name_en = 'Violent crime rate (per 100K)' where id_ = 20;
update tbl_indicators set name_en = 'Under 5' where id_ = 21;
update tbl_indicators set name_en = '5 to 17' where id_ = 22;
update tbl_indicators set name_en = '18 to 34' where id_ = 23;
update tbl_indicators set name_en = '35 to 64' where id_ = 24;
update tbl_indicators set name_en = '65 and Older' where id_ = 25;
update tbl_indicators set name_en = 'Limited English proficiency' where id_ = 26;
update tbl_indicators set name_en = 'Increase in population in past 10 years' where id_ = 27;
update tbl_indicators set name_en = 'Households that are multigenerational' where id_ = 28;
update tbl_indicators set name_en = 'American Indian or Alaska Native (non-Hispanic)' where id_ = 29;
update tbl_indicators set name_en = 'Asian (non-Hispanic)' where id_ = 30;
update tbl_indicators set name_en = 'Black or African American (non-Hispanic)' where id_ = 31;
update tbl_indicators set name_en = 'Hispanic or Latino' where id_ = 32;
update tbl_indicators set name_en = 'Native Hawaiian or Pacific Islander (non-Hispanic)' where id_ = 33;
update tbl_indicators set name_en = 'Other Race (non-Hispanic)' where id_ = 34;
update tbl_indicators set name_en = 'Two or More Races (non-Hispanic)' where id_ = 35;
update tbl_indicators set name_en = 'White (non-Hispanic)' where id_ = 36;
update tbl_indicators set name_en = 'Racial/ethnic diversity (Theil index)' where id_ = 37;
update tbl_indicators set name_en = 'Male' where id_ = 38;
update tbl_indicators set name_en = 'Female' where id_ = 39;
update tbl_indicators set name_en = 'Speak Spanish or Spanish Creole at home' where id_ = 40;
update tbl_indicators set name_en = 'Veteran population' where id_ = 41;
update tbl_indicators set name_en = 'Access to loans and capital' where id_ = 42;
update tbl_indicators set name_en = 'ALICE households' where id_ = 43;
update tbl_indicators set name_en = 'Assistance (food, rent assistance)' where id_ = 44;
update tbl_indicators set name_en = 'Child care capacity (per 1K kids)' where id_ = 45;
update tbl_indicators set name_en = 'Computer and broadband Subscription' where id_ = 46;
update tbl_indicators set name_en = 'Employed' where id_ = 47;
update tbl_indicators set name_en = 'Unemployed' where id_ = 48;
update tbl_indicators set name_en = 'Not in labor force and not employed' where id_ = 49;
update tbl_indicators set name_en = 'Home ownership' where id_ = 50;
update tbl_indicators set name_en = 'Housing cost burden' where id_ = 51;
update tbl_indicators set name_en = 'Owner Occupied Housing cost burden' where id_ = 52;
update tbl_indicators set name_en = 'Renter Occupied Housing cost burden' where id_ = 53;
update tbl_indicators set name_en = 'Income inequality (Gini Index)' where id_ = 54;
update tbl_indicators set name_en = 'Jobs per 100K' where id_ = 55;
update tbl_indicators set name_en = 'Family Income (median)' where id_ = 56;
update tbl_indicators set name_en = 'Household Income (median)' where id_ = 57;
update tbl_indicators set name_en = 'Monthly Earnings' where id_ = 58;
update tbl_indicators set name_en = 'Households with income <30% AMI' where id_ = 59;
update tbl_indicators set name_en = 'Households with income <60% AMI' where id_ = 60;
update tbl_indicators set name_en = 'Households with income <80% AMI' where id_ = 61;
update tbl_indicators set name_en = 'Population in Armed Forces' where id_ = 62;
update tbl_indicators set name_en = 'Income below poverty' where id_ = 63;
update tbl_indicators set name_en = 'Rental assistance' where id_ = 64;
update tbl_indicators set name_en = 'Supplemental Security Income (SSI)' where id_ = 65;
update tbl_indicators set name_en = 'Uninsured' where id_ = 66;
update tbl_indicators set name_en = 'Youth not in school or not working' where id_ = 67;
update tbl_indicators set name_en = 'Low Transportation Cost Index' where id_ = 68;
update tbl_indicators set name_en = 'Education less than high school diploma/GED' where id_ = 69;
update tbl_indicators set name_en = 'Education Bachelor''s degree or higher' where id_ = 70;
update tbl_indicators set name_en = 'Enrolled in preschool' where id_ = 71;
update tbl_indicators set name_en = 'Children in high-quality pre-K or daycare' where id_ = 72;
update tbl_indicators set name_en = 'Children scoring "Vulnerable" on kinder-readiness' where id_ = 73;
update tbl_indicators set name_en = 'Access to parks and greenspace' where id_ = 74;
update tbl_indicators set name_en = 'Air toxins cancer risk index' where id_ = 75;
update tbl_indicators set name_en = 'Environmental health hazard index' where id_ = 76;
update tbl_indicators set name_en = 'Food insecurity/food deserts' where id_ = 77;
update tbl_indicators set name_en = 'Sleeping less than seven hours among adults' where id_ = 78;
update tbl_indicators set name_en = 'Cholesterol screening among adults' where id_ = 79;
update tbl_indicators set name_en = 'COVID-19 vaccination rates' where id_ = 80;
update tbl_indicators set name_en = 'Obesity among adults' where id_ = 81;
update tbl_indicators set name_en = 'Older adults aged 65 years and older who are up to date on a core set of clinical preventive services' where id_ = 82;
update tbl_indicators set name_en = 'Opioid prescription rate (per 100K)' where id_ = 83;
update tbl_indicators set name_en = 'Cervical cancer Pap screening among adult women aged 21-65 years' where id_ = 84;
update tbl_indicators set name_en = 'Current smoking among adults' where id_ = 85;
update tbl_indicators set name_en = 'Prenatal care' where id_ = 86;
update tbl_indicators set name_en = 'Visits to dentist or dental clinic among adults' where id_ = 87;
update tbl_indicators set name_en = 'Visits to doctor for routine checkup within the past year among adults' where id_ = 88;
update tbl_indicators set name_en = 'Asthma hospitalization rate (per 10K)' where id_ = 89;
update tbl_indicators set name_en = 'Birth rates (per 1K age 15-44)' where id_ = 90;
update tbl_indicators set name_en = 'Coronary heart disease among adults' where id_ = 91;
update tbl_indicators set name_en = 'COVID-19 case rate (per 100K)' where id_ = 92;
update tbl_indicators set name_en = 'COVID-19 death rate (per 100K)' where id_ = 93;
update tbl_indicators set name_en = 'Death rate (per 100K)' where id_ = 94;
update tbl_indicators set name_en = 'Diabetes hospitalization rate (per 10K)' where id_ = 95;
update tbl_indicators set name_en = 'Diabetes among adults' where id_ = 96;
update tbl_indicators set name_en = 'Disability status' where id_ = 97;
update tbl_indicators set name_en = 'Hypertension hospitalization rate (per 10K)' where id_ = 98;
update tbl_indicators set name_en = 'Injury hospitalization rate (per 10K)' where id_ = 99;
update tbl_indicators set name_en = 'Invasive cancer incidence rate (per 10K)' where id_ = 100;
update tbl_indicators set name_en = 'Lead poisoning/elevated blood lead (per 10K)' where id_ = 101;
update tbl_indicators set name_en = 'Life expectancy (average)' where id_ = 102;
update tbl_indicators set name_en = 'Mental health hospitalization rate (per 10K)' where id_ = 103;
update tbl_indicators set name_en = 'Mental health not good for >=14 days among adults' where id_ = 104;
update tbl_indicators set name_en = 'Physical health not good for >=14 days among adults' where id_ = 105;
update tbl_indicators set name_en = 'Stroke among adults' where id_ = 106;
update tbl_indicators set name_en = 'Change in total housing units (10-year change)' where id_ = 107;
update tbl_indicators set name_en = 'Multi-family housing units' where id_ = 108;
update tbl_indicators set name_en = 'Housing units subsidized' where id_ = 109;
update tbl_indicators set name_en = 'Residential buildings in fair or poor condition' where id_ = 110;
update tbl_indicators set name_en = 'Renter housing stability (moved in past year)' where id_ = 111;
update tbl_indicators set name_en = 'Vacant housing units' where id_ = 112;
