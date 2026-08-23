-- Get all records from the new_finance_dataset table
-- select *
-- from new_finance_dataset;

-- Getting the summary statistics for the Amount column in the new_finance_dataset table
-- select
--  count(*) as total_transactions,
--  avg(Amount) as average_amount,
--  sum(Amount) as total_amount,
--  min(Amount) as minimum_amount,
--  max(Amount) as maximum_amount
-- from new_finance_dataset;

-- Getting all the invoices that have been paid
-- select *
-- from new_finance_dataset
-- where invoice_status = 'Paid'
-- order by Amount desc;

select 
      Amount, 
      invoice_status, 
      Region
from new_finance_dataset
where Region = 'South'
group by Amount, invoice_status, Region
order by Amount desc;

