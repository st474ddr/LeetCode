select Score, cast(a.Rank as signed) as Rank
from (
select Score,@pre_score := @now_score,@now_score := score,@rank := if(@pre_score = @now_score, @rank,@rank+1) as Rank
    from Scores,(select @pre_score := -1,@now_score := -1,@rank := 0 ) b order by Score desc
) as a
