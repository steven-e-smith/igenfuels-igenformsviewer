--MF002_1 WI

--TODOS
--Section 1 - where do we get this data, Type of Change, date of change, No activity?
	--Line 29 how to determine late
	--Line 30 do calc


--1.2.1.1 -Gasoline
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'TD') and (Product in (065, 123, 124, 241) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.2.1.2 - Undyed Diesel
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'TD') and (Product in (161, 167) or (Product Between 'B00' and 'B99'))

--1.2.1.3 - Other
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'TD') and (Product in (073, 074, 122, 125, 130, 145, 147, 226, 227, 231) or (Product Between 'D00' and 'D99'))

--1.2.2.1 - Gasoline
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'OD') and (Product in (065, 123, 124, 241) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.2.2.2 - Undyed Diesel
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'OD') and (Product in (161, 167) or (Product Between 'B00' and 'B99'))

--1.2.2.3 - Other
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'OD') and (Product in (073, 074, 122, 125, 130, 145, 147, 226, 227, 231) or (Product Between 'D00' and 'D99'))

--1.2.4.1 - Gasoline
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '1F') and (Product in (065, 123, 124, 241) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.2.4.2 - Undyed Diesel
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '1F') and (Product in (161, 167) or (Product Between 'B00' and 'B99'))

--1.2.4.3 - Other
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '1F') and (Product in (073, 074, 122, 125, 130, 145, 147, 226, 227, 231) or (Product Between 'D00' and 'D99'))

--1.2.5.1 - Gasoline
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '7') and (Product in (065, 123, 124, 241) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.2.5.2 - Undyed Diesel
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '7') and (Product in (161, 167) or (Product Between 'B00' and 'B99'))

--1.2.5.3 - Other
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '7') and (Product in (073, 074, 122, 125, 130, 145, 147, 226, 227, 231) or (Product Between 'D00' and 'D99'))

--1.2.5.1 - Gasoline
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '8') and (Product in (065, 123, 124, 241) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.2.5.2 - Undyed Diesel
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '8') and (Product in (161, 167) or (Product Between 'B00' and 'B99'))

--1.2.5.3 - Other
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '8') and (Product in (073, 074, 122, 125, 130, 145, 147, 226, 227, 231) or (Product Between 'D00' and 'D99'))

--1.2.9.1 - Gasoline
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '10A') and (Product in (065, 123, 124, 241) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.2.10.1 - Gasoline
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '10B') and (Product in (065, 123, 124, 241) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.2.11.1 - Gasoline
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '10C') and (Product in (065, 123, 124, 241) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.2.11.2 - Undyed Diesel
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '10C') and (Product in (161, 167) or (Product Between 'B00' and 'B99'))

--1.2.12.1 - Gasoline
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '10E') and (Product in (065, 123, 124, 241) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.2.12.2 - Undyed Diesel
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '10E') and (Product in (161, 167) or (Product Between 'B00' and 'B99'))

--1.2.13.2 - Undyed Diesel
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '10G') and (Product in (161, 167) or (Product Between 'B00' and 'B99'))

--1.2.14.2 - Undyed Diesel
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '10H') and (Product in (161, 167) or (Product Between 'B00' and 'B99'))

--1.2.15.1 - Gasoline
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '10T') and (Product in (065, 123, 124, 241) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.2.15.2 - Undyed Diesel
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = '10T') and (Product in (161, 167) or (Product Between 'B00' and 'B99'))

--1.2.32.1 - gasoline ********FOR THE NEXT THREE IF THE SCHED CODE DOESNT RETURN CORRECT RESULTS TRY ORIGIN DEST COMBO*********************************************************
--Select( SELECT SUM(Gross_Quantity) FROM vw_WSTF WHERE (Origin_State) = 'WI' and (Product in (065, 123, 124, 241) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')) - (SELECT SUM(Gross_Quantity) FROM vw_WSTF WHERE (Destination_State) != 'WI')
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'TD_NT') and (Product in (065, 123, 124, 241) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--1.2.32.2 - undyed diesel
--Select( SELECT SUM(Gross_Quantity) FROM vw_WSTF WHERE (Origin_State) = 'WI' and (Product in (161, 167) or (Product Between 'B00' and 'B99'))) - (SELECT SUM(Gross_Quantity) FROM vw_WSTF WHERE (Destination_State) != 'WI')
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'TD_NT') and (Product in (161, 167) or (Product Between 'B00' and 'B99'))

--1.2.32.3 - other
--Select( SELECT SUM(Gross_Quantity) FROM vw_WSTF WHERE (Origin_State) = 'WI' and (Product in (073, 074, 122, 125, 130, 145, 147, 226, 227, 231) or (Product Between 'D00' and 'D99'))) - (SELECT SUM(Gross_Quantity) FROM vw_WSTF WHERE (Destination_State) != 'WI')
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'TD_NT') and (Product in (073, 074, 122, 125, 130, 145, 147, 226, 227, 231) or (Product Between 'D00' and 'D99'))

--2.3.1.1 -Gasoline
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'PD') and (Product in (065, 123, 124, 241) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--2.3.1.2 - Undyed Diesel
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'PD') and (Product in (161, 167) or (Product Between 'B00' and 'B99'))

--2.3.1.3 - Other
Select Sum(Gross_Quantity) From vw_WSTF Where (Schedule_Code = 'PD') and (Product in (073, 074, 122, 125, 130, 145, 147, 226, 227, 231) or (Product Between 'D00' and 'D99'))

--2.3.1.1 -Gasoline
Select Sum(Net_Quantity) From vw_WSTF Where (Schedule_Code = 'PD') and (Product in (065, 123, 124, 241) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--2.3.1.2 - Undyed Diesel
Select Sum(Net_Quantity) From vw_WSTF Where (Schedule_Code = 'PD') and (Product in (161, 167) or (Product Between 'B00' and 'B99'))

--2.3.1.3 - Other
Select Sum(Net_Quantity) From vw_WSTF Where (Schedule_Code = 'PD') and (Product in (073, 074, 122, 125, 130, 145, 147, 226, 227, 231) or (Product Between 'D00' and 'D99'))

--2.4.1.1 -Gasoline
Select Sum(Net_Quantity) From vw_WSTF Where (Schedule_Code = 'TR') and (Product in (065, 123, 124, 241) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--2.4.1.2 - Undyed Diesel
Select Sum(Net_Quantity) From vw_WSTF Where (Schedule_Code = 'TR') and (Product in (161, 167) or (Product Between 'B00' and 'B99'))

--2.4.1.3 - Other
Select Sum(Net_Quantity) From vw_WSTF Where (Schedule_Code = 'TR') and (Product in (073, 074, 122, 125, 130, 145, 147, 226, 227, 231) or (Product Between 'D00' and 'D99'))

--2.4.2.1 -Gasoline
Select Sum(Net_Quantity) From vw_WSTF Where (Schedule_Code = 'TD_T' and Schedule_Code = 'TD_NT') and (Product in (065, 123, 124, 241) or (Product Between 'E00' and 'E99') or Product Between 'M00' and 'M99')

--2.4.2.2 - Undyed Diesel
Select Sum(Net_Quantity) From vw_WSTF Where (Schedule_Code = 'TD_T' and Schedule_Code = 'TD_NT') and (Product in (161, 167) or (Product Between 'B00' and 'B99'))

--2.4.2.3 - Other
Select Sum(Net_Quantity) From vw_WSTF Where (Schedule_Code = 'TD_T' and Schedule_Code = 'TD_NT') and (Product in (073, 074, 122, 125, 130, 145, 147, 226, 227, 231) or (Product Between 'D00' and 'D99'))
	

