select Score, cast(a.Rank as signed) as Rank
from  (SELECT Score, @rank:=CASE WHEN Score=@previous THEN @rank ELSE @rank+1 END AS Rank, @previous:=Score FROM Scores,
        (SELECT @previous:=-1,@rank:=0) b order by Score desc
) as a