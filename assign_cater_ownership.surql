RELATE "users:h21ttf6qgqnoldhu0qyj" -> owned_caterer -> "caterers:bo0d7udisaipida90qfq";

DEFINE INDEX caterer_unique ON TABLE owned_caterer COLUMNS out UNIQUE;

SELECT *, ->owned_caterer.out.* AS cater_shops FROM users PARALLEL;

SELECT *, (SELECT * FROM ->owned_caterer.out ORDER BY cater_name ASC) AS cater_shops FROM users ORDER BY first_name DESC;