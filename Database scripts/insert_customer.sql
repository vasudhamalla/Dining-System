-- Customers with meal plan
INSERT INTO Customer (name, email, meal_plan_id, mobile)
VALUES ('John Doe', 'johndoe@example.com', 1, 12345),
       ('Jane Smith', 'janesmith@example.com', 1, 9876210),
       ('Bob Johnson', 'bobjohnson@example.com', 1, 5555),
       ('Alice Brown', 'alicebrown@example.com', 2, 777),
       ('David Lee', 'davidlee@example.com', 2, 8888),
       ('Lisa Davis', 'lisadavis@example.com', 2, 9999),
       ('Michael Miller', 'michaelmiller@example.com', 3, 11111),
       ('Jessica Garcia', 'jessicagarcia@example.com', 3, 22222),
       ('William Thompson', 'williamthompson@example.com', 3, 333333),
       ('Emily Clark', 'emilyclark@example.com', 4, 444444),
       ('Steven Wright', 'stevenwright@example.com', 4, 55555),
       ('Melissa Hernandez', 'melissahernandez@example.com', 4, 66666),
       ('Amy Rodriguez', 'amyrodriguez@example.com', 5, 77777),
       ('Brian Wilson', 'brianwilson@example.com', 5, 888888),
       ('Samantha Martinez', 'samanthamartinez@example.com', 5, 99999),
       ('Charles Lee', 'charleslee@example.com', 6, 11111),
       ('Nicole Anderson', 'nicoleanderson@example.com', 6, 222222),
       ('Christopher Hernandez', 'christopherhernandez@example.com', 6, 3333),
       ('Olivia Taylor', 'oliviataylor@example.com', 7, 44444),
       ('Thomas Wilson', 'thomaswilson@example.com', 7, 55555),
       ('Victoria Davis', 'victoriadavis@example.com', 7, 66666),
       ('Matthew Rodriguez', 'matthewrodriguez@example.com', 8, 77777),
       ('Ashley Wilson', 'ashleywilson@example.com', 8, 88888),
       ('Christopher Wright', 'christopherwright@example.com', 8, 9999);

-- Customers without meal plan
INSERT INTO Customer (name, email, mobile)
VALUES ('Sarah Lee', 'sarahlee@example.com', 123490),
       ('Peter Johnson', 'peterjohnson@example.com', 98760),
       ('Karen Brown', 'karenbrown@example.com', 5555);
