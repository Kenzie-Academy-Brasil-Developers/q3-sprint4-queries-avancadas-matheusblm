select * from enderecos;

SELECT * FROM usuarios AS u
LEFT JOIN enderecos AS e
    ON (e.id = u.endereco_id)
 order by
 e .id;

SELECT * FROM usuarios AS u
LEFT JOIN usuario_rede_sociais AS r
    ON (r.usuario_id = u.id)
left join redes_sociais as redes
	on( r.rede_social_id  = redes.id );

SELECT * FROM usuarios AS u
LEFT JOIN usuario_rede_sociais AS r
    ON (r.usuario_id = u.id)
left join redes_sociais as redes
	on( r.rede_social_id  = redes.id )
left join enderecos as e
	on( e.id = u.endereco_id);


SELECT
    rede_social.nome AS rede_social,
    users.nome as usuario,
    users.email,
    endereco.cidade
FROM
    (SELECT * FROM usuario_rede_sociais) AS user_rede_social
LEFT JOIN usuarios AS users
    ON (user_rede_social.usuario_id = users.id)
LEFT JOIN redes_sociais AS rede_social
    ON (user_rede_social.rede_social_id = rede_social.id)
LEFT JOIN enderecos AS endereco
    ON (users.endereco_id = endereco.id)


SELECT
    rede_social.nome AS rede_social,
    users.nome as usuario,
    users.email,
    endereco.cidade
FROM
    (SELECT * FROM usuario_rede_sociais) AS user_rede_social
LEFT JOIN usuarios AS users
    ON (user_rede_social.usuario_id = users.id)
LEFT JOIN redes_sociais AS rede_social
    ON (user_rede_social.rede_social_id = rede_social.id)
LEFT JOIN enderecos AS endereco
    ON (users.endereco_id = endereco.id)
where rede_social.nome = 'Youtube'


SELECT
    rede_social.nome AS rede_social,
    users.nome as usuario,
    users.email,
    endereco.cidade
FROM
    (SELECT * FROM usuario_rede_sociais) AS user_rede_social
LEFT JOIN usuarios AS users
    ON (user_rede_social.usuario_id = users.id)
LEFT JOIN redes_sociais AS rede_social
    ON (user_rede_social.rede_social_id = rede_social.id)
LEFT JOIN enderecos AS endereco
    ON (users.endereco_id = endereco.id)
where rede_social.nome = 'Instagram'


SELECT
    rede_social.nome AS rede_social,
    users.nome as usuario,
    users.email,
    endereco.cidade
FROM
    (SELECT * FROM usuario_rede_sociais) AS user_rede_social
LEFT JOIN usuarios AS users
    ON (user_rede_social.usuario_id = users.id)
LEFT JOIN redes_sociais AS rede_social
    ON (user_rede_social.rede_social_id = rede_social.id)
LEFT JOIN enderecos AS endereco
    ON (users.endereco_id = endereco.id)
where rede_social.nome = 'Facebook'


SELECT
    rede_social.nome AS rede_social,
    users.nome as usuario,
    users.email,
    endereco.cidade
FROM
    (SELECT * FROM usuario_rede_sociais) AS user_rede_social
LEFT JOIN usuarios AS users
    ON (user_rede_social.usuario_id = users.id)
LEFT JOIN redes_sociais AS rede_social
    ON (user_rede_social.rede_social_id = rede_social.id)
LEFT JOIN enderecos AS endereco
    ON (users.endereco_id = endereco.id)
where rede_social.nome = 'TikTok'


SELECT
    rede_social.nome AS rede_social,
    users.nome as usuario,
    users.email,
    endereco.cidade
FROM
    (SELECT * FROM usuario_rede_sociais) AS user_rede_social
LEFT JOIN usuarios AS users
    ON (user_rede_social.usuario_id = users.id)
LEFT JOIN redes_sociais AS rede_social
    ON (user_rede_social.rede_social_id = rede_social.id)
LEFT JOIN enderecos AS endereco
    ON (users.endereco_id = endereco.id)
where rede_social.nome = 'Twitter'