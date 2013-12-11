--TODO/Questions
--what is difference between 1.1 and 1.2 rows? -need way to determine different inventories, ie, physical, estimated, beginning month etc from data?
--(-total gross OR net quantity?) -depends on the companies TC69 form, additional qry needed - will create separate form for now
--are rows 1.1 and 1.22 the same? -see issue number 1
--=SUM(net_gal_*) - causing error
--1.24.E - calculation states 1.12.E - 1.23.E but there is not a value in 1.23.E of the form

--1.1.A -Motor Fuel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'SYS_RFP') and (Product in (065, 71, 124) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.1.B -Undyded Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'SYS_RFP') and (Product in (150, 154, 160, 161, 167, 170, 282, 283) or (Product Between 'B00' and 'B99'))

--1.1.C -Dyed Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'SYS_RFP') and (Product in (72,73,74,153,171,226,227,228,231) or (Product Between 'D00' and 'D99'))

--1.1.D -Aviation (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'SYS_RFP') and (Product in (125))

--1.2 Rows here

--1.3.A -Motor Fuel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '2B') and (Product in (065, 71, 124) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.3.B -Undyded Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '2B') and (Product in (150, 154, 160, 161, 167, 170, 282, 283) or (Product Between 'B00' and 'B99'))

--1.3.C -Dyed Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '2B') and (Product in (72,73,74,153,171,226,227,228,231) or (Product Between 'D00' and 'D99'))

--1.3.D -Aviation (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '2B') and (Product in (125))

--1.4.D -Aviation (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '5HW-R') and (Product in (125))

--1.5.A -Motor Fuel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '5HW-R') and (Product in (065, 71, 124) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.5.B -Undyded Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '5HW-R') and (Product in (150, 154, 160, 161, 167, 170, 282, 283) or (Product Between 'B00' and 'B99'))

--1.6.A -Motor Fuel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in ('2C', '3', '3A', '3B')) and (Product in (065, 71, 124) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.6.B -Undyded Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in ('2C', '3', '3A', '3B')) and (Product in (150, 154, 160, 161, 167, 170, 282, 283) or (Product Between 'B00' and 'B99'))

--1.6.C -Dyed Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in ('2C', '3', '3A', '3B')) and (Product in (72,73,74,153,171,226,227,228,231) or (Product Between 'D00' and 'D99'))

--1.6.D -Aviation (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in ('2C', '3', '3A', '3B')) and (Product in (125))

--1.6.F -EAF (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in ('2C', '3', '3A', '3B', '4'))

--1.7.A -Motor Fuel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('2','2A','2D','2E')) and (Product in (065, 71, 124) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.7.D -Aviation (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('2','2A','2D','2E')) and (Product in (125))

--1.8.B -Undyded Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '2X') and (Product in (150, 154, 160, 161, 167, 170, 282, 283) or (Product Between 'B00' and 'B99'))

--1.8.C -Dyed Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '2X') and (Product in (72,73,74,153,171,226,227,228,231) or (Product Between 'D00' and 'D99'))

--1.9.E -Alternative (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '2K') and (Product in (224,225))

--1.10.B -Undyded Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('2', '2A')) and (Product in (150, 154, 160, 161, 167, 170, 282, 283) or (Product Between 'B00' and 'B99'))

--1.10.C -Dyed Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('2', '2A')) and (Product in (72,73,74,153,171,226,227,228,231) or (Product Between 'D00' and 'D99'))

--1.11.A -Motor Fuel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('1-R','1A-R','1F-R')) and (Product in (065, 71, 124) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.11.B -Undyded Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in ('1-R','1A-R','1F-R')) and (Product in (150, 154, 160, 161, 167, 170, 282, 283) or (Product Between 'B00' and 'B99'))

--1.11.D -Aviation (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('1-R','1A-R','1F-R')) and (Product in (125))

--1.13.A -Motor Fuel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('7', '7B','7D','7R')) and (Product in (065, 71, 124) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.13.B -Undyded Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('7', '7B','7D','7R')) and (Product in (150, 154, 160, 161, 167, 170, 282, 283) or (Product Between 'B00' and 'B99'))

--1.13.C -Dyed Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('7', '7B','7D','7R')) and (Product in (72,73,74,153,171,226,227,228,231) or (Product Between 'D00' and 'D99'))

--1.13.D -Aviation (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('7', '7B','7D','7R')) and (Product in (125))

--1.13.F -EAS FEE (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '5H')

--1.14.A -Motor Fuel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('8A', '8R','9')) and (Product in (065, 71, 124) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.14.D -Aviation (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('8A', '8R','9')) and (Product in (125))

--1.15.A -Motor Fuel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('5C', '6','6D')) and (Product in (065, 71, 124) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.15.D -Aviation (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('5C', '6','6D')) and (Product in (125))

--1.16.B -Undyded Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '6R') and (Product in (150, 154, 160, 161, 167, 170, 282, 283) or (Product Between 'B00' and 'B99'))

--1.16.C -Dyed Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '6R') and (Product in (72,73,74,153,171,226,227,228,231) or (Product Between 'D00' and 'D99'))

--1.16.F -EAS FEE (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '6X')

--1.17.B -Undyded Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '10J') and (Product in (150, 154, 160, 161, 167, 170, 282, 283) or (Product Between 'B00' and 'B99'))

--1.17.C -Dyed Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '6F') and (Product in (72,73,74,153,171,226,227,228,231) or (Product Between 'D00' and 'D99'))

--1.18.A -Motor Fuel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '5HW-D') and (Product in (065, 71, 124) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.18.D -Aviation (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '5HW-D') and (Product in (125))

--1.19.B -Undyded Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '10G') and (Product in (150, 154, 160, 161, 167, 170, 282, 283) or (Product Between 'B00' and 'B99'))

--1.20.F
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '10F')

--1.21.A -Motor Fuel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('1-D', '1A-D','1F-D')) and (Product in (065, 71, 124) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.21.B -Undyded Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('1-D', '1A-D','1F-D')) and (Product in (150, 154, 160, 161, 167, 170, 282, 283) or (Product Between 'B00' and 'B99'))

--1.21.D -Aviation (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code in('1-D', '1A-D','1F-D')) and (Product in (125))

--1.22.A -Motor Fuel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'SYS_RFP') and (Product in (065, 71, 124) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.22.B -Undyded Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'SYS_RFP') and (Product in (150, 154, 160, 161, 167, 170, 282, 283) or (Product Between 'B00' and 'B99'))

--1.22.C -Dyed Diesel (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'SYS_RFP') and (Product in (72,73,74,153,171,226,227,228,231) or (Product Between 'D00' and 'D99'))

--1.22.D -Aviation (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'SYS_RFP') and (Product in (125))

--1.26.D -Aviation (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '5X') and (Product in (125))

--1.28.D -Aviation (-total gross OR net quantity?)
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '5') and (Product in (125))