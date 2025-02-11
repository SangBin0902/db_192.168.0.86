SELECT NOTICE.CONTENT AS "CONTENT" , WRITERS.WRITER_ROLE AS "WRITER", COUNT(VISITORS.VISITOR_PK) AS "VISITOR COUNT"
FROM NOTICE 
INNER JOIN WRITERS ON NOTICE.WRITER_FK=WRITERS.WRITER_PK
INNER JOIN VISITORS ON NOTICE.NOTICE_PK = VISITORS.NOTICE_FK
GROUP BY NOTICE.CONTENT, WRITERS.WRITER_ROLE;