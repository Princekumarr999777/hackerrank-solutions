-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true
-- Problem     Binary Tree Nodes
-- Difficulty  Medium
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-26, 01:10 a.m.
-- ──────────────────────────────────────────────────

SELECT N,
 CASE
  WHEN P IS NULL THEN 'Root' 
  WHEN N  NOT IN (SELECT P FROM BST  WHERE P IS NOT NULL ) 
  THEN 'Leaf' 
 ELSE 'Inner' END AS NODETYPE
 FROM BST ORDER BY N;
