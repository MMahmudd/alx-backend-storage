-- creates_a_trigger_that_resets_the_attribute_valid_email
-- only_when_the_email has_been_changed.

DELIMITER $$
CREATE TRIGGER new_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email != NEW.email THEN
	SET NEW.valid_email = 0;
    END IF;
END$$
DELIMITER ;$$
