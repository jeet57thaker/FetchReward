SELECT brands.ID AS Brand, brands.barcode, user.active, COUNT(rewards.*) AS rewardings, SUM(receipt.bonusPointEarned) AS bonuses
FROM brands
JOIN rewards ON brands.barcode = rewards.barcode
RIGHT JOIN receipt ON rewards.receiptId = receipt.ID
OUTER JOIN user_ON receipt.userId = users.ID
GROUP BY Brand 
ORDER BY bonuses DESC, rewardings DESC 
LIMIT 10;
