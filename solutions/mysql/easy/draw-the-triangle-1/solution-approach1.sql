-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/draw-the-triangle-1/problem?isFullScreen=true
-- Problem     Draw The Triangle 1
-- Difficulty  Easy
-- Subdomain   Alternative Queries
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-24, 11:39 p.m.
-- ──────────────────────────────────────────────────

WITH RECURSIVE NAME AS (
    SELECT 1 AS N
    UNION
    SELECT N+1 FROM NAME
    WHERE (N <20)
)  SELECT REPEAT(' * ',21-N) FROM NAME;
