use budget;
CREATE VIEW transactions_by_category AS
SELECT transaction_id
	, user_id
	, vendor_name
    , transaction_date
    , amount
    , notes
    , category_name
FROM transactions
INNER JOIN categories on transactions.category_id = categories.category_id
INNER JOIN vendors on transactions.vendor_id = vendors.vendor_id;

SELECT *
FROM transactions_by_category;