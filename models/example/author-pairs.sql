WITH authors AS (
SELECT
id,
       researcher_id,
FROM
`covid-19-dimensions-ai.data.publications`
LEFT JOIN UNNEST (researcher_ids) AS
researcher_id
)
SELECT
       authors.researcher_id,
authors.id,
       coauthor.researcher_ids,
FROM authors
LEFT JOIN
`covid-19-dimensions-ai.data.publications`
coauthor ON coauthor.id = authors.id