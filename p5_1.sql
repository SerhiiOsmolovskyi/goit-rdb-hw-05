DELIMITER //

DROP FUNCTION IF EXISTS divide_floats //

CREATE FUNCTION divide_floats(x FLOAT, y FLOAT) 
RETURNS FLOAT
DETERMINISTIC
BEGIN
    DECLARE result FLOAT;
    
    SET result = x / y;
    
    RETURN result;
END //

DELIMITER ;


SELECT divide_floats(quantity, 2) AS divided_quantity
FROM order_details;
