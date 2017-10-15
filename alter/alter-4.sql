ALTER TABLE entry DROP INDEX keyword_length_idx;
ALTER TABLE entry ADD INDEX keyword_length_keyword_idx (keyword_length, keyword);
