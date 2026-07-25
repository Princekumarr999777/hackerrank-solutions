-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true
-- Problem     New Companies
-- Difficulty  Medium
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-26, 01:58 a.m.
-- ──────────────────────────────────────────────────

SELECT cm.company_code,cm.founder ,count(distinct lm.lead_manager_code),count(distinct sm.senior_manager_code),
count(distinct m.manager_code), count(distinct em.employee_code)
FROM Company cm
LEFT JOIN Lead_Manager lm on cm.company_code = lm.company_code
Left Join Senior_Manager sm on cm.company_code = sm.company_code
Left Join Manager m on cm.company_code=m.company_code
Left Join Employee em on cm.company_code=em.company_code
group by cm.company_code,cm.founder
order by cm.company_code;
