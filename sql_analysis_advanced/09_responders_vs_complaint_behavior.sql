-- Are campaign responders less likely to complain?

select c.response,

round(100.0 * count(*) filter (where cm.complain = 1)/
nullif(count(*),0),2) as complaint_received

from campaigns c join complaints cm
on c.customer_id = cm.customer_id

group by c.response;