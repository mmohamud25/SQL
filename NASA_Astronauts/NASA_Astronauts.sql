/* Put your data in here and query it! */

CREATE TABLE astronauts (
  id INT PRIMARY KEY AUTO_INCREMENT;,
  name VARCHAR(255) NOT NULL;,
  age_first_spaceflight INT NOT NULL;,
  num_spacewalks INT NOT NULL;,
  time_in_space INT NOT NULL;,
  country VARCHAR(255) NOT NULL;,
  gender VARCHAR(255) NOT NULL;,
  military_service VARCHAR(255) NOT NULL;,
  highest_education VARCHAR(255) NOT NULL;,
  preferred_spacewalk_position VARCHAR(255) NOT NULL;,
  experience INT NOT NULL;,
  spaceflights TEXT NOT NULL;
);




SELECT AVG(age_first_spaceflight) AS avg_age_first_spaceflight
FROM astronauts;

SELECT MAX(num_spacewalks) AS max_num_spacewalks
FROM astronauts;

SELECT MIN(time_in_space) AS min_time_in_space
FROM astronauts;

SELECT country, AVG(age_first_spaceflight) AS avg_age_first_spaceflight
FROM astronauts
GROUP BY country;

SELECT AVG(num_spacewalks) AS avg_num_spacewalks_female
FROM astronauts
WHERE gender = 'Female';

SELECT AVG(time_in_space) AS avg_time_in_space_military
FROM astronauts
WHERE military_service = 'Yes';

CASE
WHEN experience < 5 THEN 'Novice'
WHEN experience >= 5 AND experience < 10 THEN 'Experienced'
ELSE 'Veteran'
END AS experience_category, AVG(experience) AS avg_experience
FROM astronauts
GROUP BY experience_category;

SELECT highest_education, COUNT(*) AS count_astronauts
FROM astronauts
GROUP BY highest_education;

SELECT preferred_spacewalk_position, COUNT(*) AS count_astronauts
FROM astronauts
GROUP BY preferred_spacewalk_position;

SELECT *
FROM astronauts
WHERE num_spacewalks > 1 AND spaceflights LIKE '%ISS%';

SELECT *
FROM astronauts
WHERE highest_education LIKE '%Engineering%' AND highest_education LIKE '%Science%';

SELECT *
FROM astronauts
WHERE spaceflights LIKE '%Space Shuttle%' AND spaceflights LIKE '%Space Station%';
