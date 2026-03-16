-- Are all campaign acceptance fields strictly binary (0/1)?

SELECT * FROM campaigns
WHERE accepted_cmp1 NOT IN (0,1)
   OR accepted_cmp2 NOT IN (0,1)
   OR accepted_cmp3 NOT IN (0,1)
   OR accepted_cmp4 NOT IN (0,1)
   OR accepted_cmp5 NOT IN (0,1)
   OR response NOT IN (0,1);


select accepted_cmp1, count(*) from campaigns
group by accepted_cmp1
order by accepted_cmp1;