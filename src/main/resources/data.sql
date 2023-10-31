INSERT INTO category (category_name)
VALUES
  ('Java'),
  ('JavaScript'),
  ('HTML/CSS'),
  ('Development Tools'),
  ('Vue.js'),
  ('Networking/HTTP/APIs'),
  ('Postgresql'),
  ('Interview Questions');

INSERT INTO question (question_text)
VALUES
  ('What is overloading a method?'),
  ('What is a derived property?'),
  ('What is a set?');

INSERT INTO question_category (question_id, category_id)
VALUES
  ((SELECT id FROM question WHERE question_text = 'What is overloading a method?'), (SELECT id FROM category WHERE category_name = 'Java')),
  ((SELECT id FROM question WHERE question_text = 'What is overloading a method?'), (SELECT id FROM category WHERE category_name = 'Interview Questions')),
  ((SELECT id FROM question WHERE question_text = 'What is a derived property?'), (SELECT id FROM category WHERE category_name = 'Java')),
  ((SELECT id FROM question WHERE question_text = 'What is a set?'), (SELECT id FROM category WHERE category_name = 'Java')),
  ((SELECT id FROM question WHERE question_text = 'What is a derived property?'), (SELECT id FROM category WHERE category_name = 'Interview Questions'));

INSERT INTO answers (answer_text, question_id, is_correct)
VALUES
  ('Setting multiple methods in the same java class with the same name and different parameters',
    (SELECT id FROM question WHERE question_text = 'What is overloading a method?'), true),
  ('Inheriting a method from a superclass and modifying the behavior',
    (SELECT id FROM question WHERE question_text = 'What is overloading a method?'), false),
  ('Setting multiple methods in different java classes with the same name and different parameters',
    (SELECT id FROM question WHERE question_text = 'What is overloading a method?'), false),
  ('Inheriting a method from an interface and creating the behavior',
    (SELECT id FROM question WHERE question_text = 'What is overloading a method?'), false),
  ('A property that is inherited from a superclass without any modifications.',
    (SELECT id FROM question WHERE question_text = 'What is a derived property?'), false),
  ('A property that is exclusively used in functional programming and has no relevance in object-oriented programming.',
    (SELECT id FROM question WHERE question_text = 'What is a derived property?'), false),
  ('A property whose default value is calculated from an expression that you define.',
    (SELECT id FROM question WHERE question_text = 'What is a derived property?'), true),
  ('A property that is declared within a class but has no relation to other properties within the class.',
    (SELECT id FROM question WHERE question_text = 'What is a derived property?'), false),
  ('An unordered java collection that enforces uniqueness in its values.',
    (SELECT id FROM question WHERE question_text = 'What is a set?'), true),
  ('An ordered java collection that enforces uniqueness in its values.',
    (SELECT id FROM question WHERE question_text = 'What is a set?'), false),
  ('An ordered Java collection containing key-value pairs.',
    (SELECT id FROM question WHERE question_text = 'What is a set?'), false),
  ('An unordered Java collection containing key-value pairs.',
    (SELECT id FROM question WHERE question_text = 'What is a set?'), false);
