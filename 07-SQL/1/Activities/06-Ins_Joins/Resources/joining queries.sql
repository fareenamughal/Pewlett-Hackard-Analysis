select p.first_name,p.last_name,p.hand,p.country_code, m.loser_rank from matches as m
inner join players as p on m.loser_id = p.player_id

