-- What percentage of customers accepted any campaign?

select count(customer_id) * 100 / (select count(*) from campaigns) as accepted_customer
from campaigns
where accepted_cmp1 + accepted_cmp2 + accepted_cmp3 + accepted_cmp4 + accepted_cmp5 > 0; 
    


