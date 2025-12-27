-- Insert 10 Roles
INSERT INTO role (role_name) VALUES ('STUDENT');
INSERT INTO role (role_name) VALUES ('ADMIN');
INSERT INTO role (role_name) VALUES ('OFFICER');
INSERT INTO role (role_name) VALUES ('MANAGER');
INSERT INTO role (role_name) VALUES ('SUPPORT');
INSERT INTO role (role_name) VALUES ('SUPERVISOR');
INSERT INTO role (role_name) VALUES ('COORDINATOR');
INSERT INTO role (role_name) VALUES ('ANALYST');
INSERT INTO role (role_name) VALUES ('DIRECTOR');
INSERT INTO role (role_name) VALUES ('HEAD');

-- Insert 10 Departments
INSERT INTO department (department_name, contact_email, contact_phone) VALUES ('Computer Science', 'cs@university.edu', '1234567890');
INSERT INTO department (department_name, contact_email, contact_phone) VALUES ('Electronics & Communication', 'ece@university.edu', '1234567891');
INSERT INTO department (department_name, contact_email, contact_phone) VALUES ('Mechanical Engineering', 'mech@university.edu', '1234567892');
INSERT INTO department (department_name, contact_email, contact_phone) VALUES ('Civil Engineering', 'civil@university.edu', '1234567893');
INSERT INTO department (department_name, contact_email, contact_phone) VALUES ('AI & Data Science', 'aids@university.edu', '1234567894');
INSERT INTO department (department_name, contact_email, contact_phone) VALUES ('Information Technology', 'it@university.edu', '1234567895');
INSERT INTO department (department_name, contact_email, contact_phone) VALUES ('Electrical Engineering', 'ee@university.edu', '1234567896');
INSERT INTO department (department_name, contact_email, contact_phone) VALUES ('Chemical Engineering', 'chem@university.edu', '1234567897');
INSERT INTO department (department_name, contact_email, contact_phone) VALUES ('Administration', 'admin@university.edu', '1234567898');
INSERT INTO department (department_name, contact_email, contact_phone) VALUES ('Library Services', 'library@university.edu', '1234567899');

-- Insert 10 Users
INSERT INTO user (username, password, role_id) VALUES ('admin_user', 'admin123', 2);
INSERT INTO user (username, password, role_id) VALUES ('officer_john', 'pass123', 3);
INSERT INTO user (username, password, role_id) VALUES ('manager_sarah', 'pass456', 4);
INSERT INTO user (username, password, role_id) VALUES ('support_mike', 'pass789', 5);
INSERT INTO user (username, password, role_id) VALUES ('supervisor_lisa', 'pass321', 6);
INSERT INTO user (username, password, role_id) VALUES ('coordinator_raj', 'pass654', 7);
INSERT INTO user (username, password, role_id) VALUES ('analyst_priya', 'pass987', 8);
INSERT INTO user (username, password, role_id) VALUES ('director_kumar', 'pass147', 9);
INSERT INTO user (username, password, role_id) VALUES ('head_sharma', 'pass258', 10);
INSERT INTO user (username, password, role_id) VALUES ('admin_jones', 'pass369', 2);

-- Insert 10 Students
INSERT INTO student (first_name, last_name, email, phone, status, role_id) VALUES ('Ramesh', 'Kumar', 'ramesh@student.edu', '9876543210', 'ACTIVE', 1);
INSERT INTO student (first_name, last_name, email, phone, status, role_id) VALUES ('Priya', 'Sharma', 'priya@student.edu', '9876543211', 'ACTIVE', 1);
INSERT INTO student (first_name, last_name, email, phone, status, role_id) VALUES ('Amit', 'Patel', 'amit@student.edu', '9876543212', 'ACTIVE', 1);
INSERT INTO student (first_name, last_name, email, phone, status, role_id) VALUES ('Sneha', 'Gupta', 'sneha@student.edu', '9876543213', 'ACTIVE', 1);
INSERT INTO student (first_name, last_name, email, phone, status, role_id) VALUES ('Vikram', 'Singh', 'vikram@student.edu', '9876543214', 'ACTIVE', 1);
INSERT INTO student (first_name, last_name, email, phone, status, role_id) VALUES ('Anjali', 'Reddy', 'anjali@student.edu', '9876543215', 'INACTIVE', 1);
INSERT INTO student (first_name, last_name, email, phone, status, role_id) VALUES ('Rahul', 'Verma', 'rahul@student.edu', '9876543216', 'ACTIVE', 1);
INSERT INTO student (first_name, last_name, email, phone, status, role_id) VALUES ('Kavya', 'Iyer', 'kavya@student.edu', '9876543217', 'ACTIVE', 1);
INSERT INTO student (first_name, last_name, email, phone, status, role_id) VALUES ('Arjun', 'Nair', 'arjun@student.edu', '9876543218', 'ACTIVE', 1);
INSERT INTO student (first_name, last_name, email, phone, status, role_id) VALUES ('Divya', 'Menon', 'divya@student.edu', '9876543219', 'INACTIVE', 1);

-- Insert 10 Grievance Categories
INSERT INTO grievance_category (category_name, description, department_id) VALUES ('Lab Equipment Issue', 'Issues related to lab equipment and facilities', 1);
INSERT INTO grievance_category (category_name, description, department_id) VALUES ('Attendance Problem', 'Issues with attendance marking or records', 9);
INSERT INTO grievance_category (category_name, description, department_id) VALUES ('Library Access', 'Problems accessing library resources', 10);
INSERT INTO grievance_category (category_name, description, department_id) VALUES ('Hostel Facilities', 'Hostel accommodation and facility issues', 9);
INSERT INTO grievance_category (category_name, description, department_id) VALUES ('Fee Payment', 'Fee payment and refund related issues', 9);
INSERT INTO grievance_category (category_name, description, department_id) VALUES ('Exam Schedule', 'Exam scheduling and timing conflicts', 9);
INSERT INTO grievance_category (category_name, description, department_id) VALUES ('Course Registration', 'Course enrollment and registration issues', 6);
INSERT INTO grievance_category (category_name, description, department_id) VALUES ('Faculty Complaint', 'Issues with faculty members', 9);
INSERT INTO grievance_category (category_name, description, department_id) VALUES ('Network Connectivity', 'Internet and network access problems', 6);
INSERT INTO grievance_category (category_name, description, department_id) VALUES ('Transport Issue', 'College transport and bus service issues', 9);

-- Insert 10 Grievances
INSERT INTO grievance (title, description, priority, grievance_status, complainant_id, category_id) VALUES ('Lab computer not working', 'Computer #5 in CS Lab A is not booting up', 'HIGH', 'OPEN', 1, 1);
INSERT INTO grievance (title, description, priority, grievance_status, complainant_id, category_id) VALUES ('Attendance marked absent wrongly', 'I was present on 20th Dec but marked absent', 'MEDIUM', 'IN_PROGRESS', 2, 2);
INSERT INTO grievance (title, description, priority, grievance_status, complainant_id, category_id) VALUES ('Unable to access digital library', 'Getting error when trying to access e-books', 'LOW', 'OPEN', 3, 3);
INSERT INTO grievance (title, description, priority, grievance_status, complainant_id, category_id) VALUES ('Hostel room AC not working', 'AC in room 204 has been broken for 3 days', 'HIGH', 'OPEN', 4, 4);
INSERT INTO grievance (title, description, priority, grievance_status, complainant_id, category_id) VALUES ('Fee receipt not generated', 'Paid fees online but receipt not available', 'HIGH', 'RESOLVED', 5, 5);
INSERT INTO grievance (title, description, priority, grievance_status, complainant_id, category_id) VALUES ('Exam date clash', 'Two exams scheduled on same day at same time', 'HIGH', 'IN_PROGRESS', 6, 6);
INSERT INTO grievance (title, description, priority, grievance_status, complainant_id, category_id) VALUES ('Cannot register for elective', 'System shows elective course as full', 'MEDIUM', 'OPEN', 7, 7);
INSERT INTO grievance (title, description, priority, grievance_status, complainant_id, category_id) VALUES ('Faculty always late to class', 'Professor arrives 20-30 minutes late daily', 'MEDIUM', 'UNDER_REVIEW', 8, 8);
INSERT INTO grievance (title, description, priority, grievance_status, complainant_id, category_id) VALUES ('WiFi not working in Block B', 'No internet connectivity in entire building', 'HIGH', 'IN_PROGRESS', 9, 9);
INSERT INTO grievance (title, description, priority, grievance_status, complainant_id, category_id) VALUES ('Bus route changed without notice', 'Bus stop removed from route suddenly', 'MEDIUM', 'RESOLVED', 10, 10);

-- Insert 10 Comments
INSERT INTO comment (content, is_internal, grievance_id, user_id) VALUES ('We have received your complaint and will investigate', false, 1, 2);
INSERT INTO comment (content, is_internal, grievance_id, user_id) VALUES ('Your attendance has been corrected in the system', false, 2, 3);
INSERT INTO comment (content, is_internal, grievance_id, user_id) VALUES ('Please contact library help desk for password reset', false, 3, 4);
INSERT INTO comment (content, is_internal, grievance_id, user_id) VALUES ('Maintenance team has been notified', false, 4, 5);
INSERT INTO comment (content, is_internal, grievance_id, user_id) VALUES ('Receipt has been sent to your registered email', false, 5, 1);
INSERT INTO comment (content, is_internal, grievance_id, user_id) VALUES ('Exam dates have been rescheduled. Check portal for updates', false, 6, 3);
INSERT INTO comment (content, is_internal, grievance_id, user_id) VALUES ('Additional seats have been added to the course', false, 7, 6);
INSERT INTO comment (content, is_internal, grievance_id, user_id) VALUES ('Internal note: Need to discuss with HOD', true, 8, 8);
INSERT INTO comment (content, is_internal, grievance_id, user_id) VALUES ('IT team is working on the network issue', false, 9, 6);
INSERT INTO comment (content, is_internal, grievance_id, user_id) VALUES ('Route was optimized. Check new schedule on website', false, 10, 2);
