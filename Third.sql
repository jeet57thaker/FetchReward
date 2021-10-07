--Calculating sum of money spent buying a product
SELECT brands.ID AS Brand, brands.barcode, SUM(receipt.totalSpent) AS returns
FROM brands
INNER JOIN rewrds ON brands.barcode = rewards.barcode
OUTER JOIN receipt ON rewards.receiptID = receipt.ID
GROUP BY Brand 
ORDER BY returns
LIMIT 30;
