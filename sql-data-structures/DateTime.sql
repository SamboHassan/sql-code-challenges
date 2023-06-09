CREATE TABLE TimeExperiment(
    a TIMESTAMP WITH TIME ZONE,
    b TIMESTAMP WITHOUT TIME ZONE
);

SELECT * FROM TimeExperiment;

-- Dates and time values can be entered in a variety of ways
INSERT INTO TimeExperiment (a)
    VALUES
        ('2020-01-02'), -- Standard date format
        ('Jan 2, 2020'), -- Can also use text abbreviations
        ('2 January, 2020 14:25'), -- Combine date and time
        ('2 Jan, 2020 2:25 PM') -- Specify PM when entering afternoon times in 12 hour format
;

DROP TABLE TimeExperiment;


