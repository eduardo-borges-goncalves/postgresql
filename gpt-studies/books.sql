-- descubra quantos livros cada author vendeu e os ordene por um rank, em caso de empate, ranqueie em ordem ascendente
--
--

SELECT author.name, count(books.id)
from author
LEFT JOIN books on author.id = books.author_id
GROUP BY author.name
ORDER BY count(books.id) DESC
;