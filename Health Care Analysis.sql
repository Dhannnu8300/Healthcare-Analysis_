Use health_care;

select * from healthcare;

# Total Discharge 
select year, Sum(dis_tot) as "Total Discharges", sum(dis_ltc) as "long term discharge care" from healthcare group by year;

# Patient Days
select year, Sum(day_tot) from healthcare group by year;

# Revenue Trend
select fac_name, sum(net_tot) from healthcare group by Fac_name order by sum(net_tot) desc limit 5;

# Net Patient revenue
select year, sum(net_tot) from healthcare group by year order by sum(net_tot);

# City wise number of Hospitals
select county_name, count(fac_name),sum(grip_tot), sum(grop_tot) from healthcare group by county_name order by sum(grip_tot),sum(grop_tot) limit 5;

# Type of Hospital Revenue
select type_hosp, sum(grip_tot), sum(grop_tot) from healthcare group by type_hosp;

# Year wise net Revenue
select year, sum(net_tot) from healthcare group by year order by year;

# Total Patients, Doctors and Hospitals
select count(fac_name), count(type_hosp), sum(pat_day_tot_cc) from healthcare;

Desc healthcare;