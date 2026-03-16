-- What is the average customer tenure (in days or months)?

-- Days
select Round(AVG (current_date - dt_customer),2) as AVG_tenure_in_days from customers;

-- Months
select Round(avg((current_date - dt_customer)/ 30.0),2) as avg_tenure_in_months from customers;