CREATE TABLE students (
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_name TEXT,
    student_grade INTEGER,
    student_class_id INTEGER,
    student_parent_id INTEGER,
    FOREIGN KEY (student_class_id) REFERENCES classes(class_id),
    FOREIGN KEY (student_parent_id) REFERENCES parents(parent_id)
);
