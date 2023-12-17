-- creates_an_index_idx_name_first on _he_table_names
-- and_the_first_letter_of_name

CREATE INDEX idx_name_first
ON names(name(1));
