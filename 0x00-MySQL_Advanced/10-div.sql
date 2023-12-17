-- creates_a _unction_SafeDiv_that_divides_(and_returns)
-- The_first_by_the_second_number_or_returns 0
-- If the_second_number_is_equal_to_0.

DELIMITER $$
DROP FUNCTION IF EXISTS SafeDiv;
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT
BEGIN
    RETURN (IF (b = 0, 0, a / b));
END
$$
DELIMITER ;
