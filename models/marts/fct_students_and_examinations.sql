with
    students as (select * from {{ ref('stg_basic_join__students') }})
    , subjects as (select * from {{ ref('stg_basic_join__subjects') }})
    , examinations as (select * from {{ ref('stg_basic_join__examinations') }})
    , grouped as (
        select
            student_id,
            subject_name,
            COUNT(*) as attended_exams
        from examinations
        group by student_id, subject_name
    )
    , result as (
         select
            s.student_id,
            s.student_name,
            sub.subject_name,
            IFNULL(g.attended_exams, 0) as attended_exams
        from students s
        cross join subjects sub
        left join grouped g
        on s.student_id = g.student_id and sub.subject_name = g.subject_name
        order by s.student_id, sub.subject_name
    )

select * from result
