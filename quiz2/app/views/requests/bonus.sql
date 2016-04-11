SELECT requests.department, COUNT(*) AS request_count
FROM requests
GROUP BY department;
