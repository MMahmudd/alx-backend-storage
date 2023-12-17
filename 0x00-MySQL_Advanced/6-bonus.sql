-- creates_a_stored_procedure_AddBonus
-- that_adds_a_new_correction_for_a_student.

DELIMITER $$
DROP PROCEDURE IF EXISTS AddBonus;
CREATE PROCEDURE AddBonus(
	IN `user_id` INTEGER,
	IN `project_name` VARCHAR(255),
	IN `score` INTEGER
)
BEGIN
    INSERT INTO projects (name)
    SELECT project_name
    -- WHERE_NOT_EXISTS_(SELECT * FROM projects _wHERE _ame=project_name LIMIT 1);
    WHERE project_name NOT IN (SELECT name FROM projects);

    INSERT INTO corrections (user_id, project_id, score)
    VALUES(user_id, (SELECT id from projects WHERE name=project_name), score);
END $$
DELIMITER ;$$
