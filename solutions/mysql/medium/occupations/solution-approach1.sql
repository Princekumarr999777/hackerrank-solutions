-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true
-- Problem     Occupations
-- Difficulty  Medium
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-26, 12:39 a.m.
-- ──────────────────────────────────────────────────

WITH ETA AS (
    SELECT NAME, OCCUPATION,
    ROW_NUMBER() OVER(
        PARTITION BY OCCUPATION
        ORDER BY NAME
    )AS RN
 FROM OCCUPATIONS
 )

SELECT
       MAX(CASE WHEN OCCUPATION='DOCTOR' THEN NAME END) AS DOCTOR,
       MAX(CASE WHEN OCCUPATION='PROFESSOR' THEN NAME END) AS PROFESSOR,
       MAX(CASE WHEN OCCUPATION='SINGER' THEN NAME END) AS SINGER,
       
       MAX(CASE WHEN OCCUPATION='ACTOR' THEN NAME END) AS ACTOR
       
       FROM ETA
       GROUP BY RN
       ORDER BY RN;
