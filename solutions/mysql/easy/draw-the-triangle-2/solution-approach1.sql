-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/draw-the-triangle-2/problem?isFullScreen=true
-- Problem     Draw The Triangle 2
-- Difficulty  Easy
-- Subdomain   Alternative Queries
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-25, 12:11 a.m.
-- ──────────────────────────────────────────────────

WITH RECURSIVE NAME AS(
    SELECT 1 AS N
    UNION ALL
    SELECT N+1 FROM NAME 
    WHERE N<20
)  
SELECT REPEAT('* ' , N) FROM NAME ;
