CREATE TABLE `tbl_students` (
	`id` BINARY NOT NULL AUTO_INCREMENT,
	`firstname` varchar(255) NOT NULL,
	`middlename` varchar(255) NOT NULL,
	`lastname` varchar(255) NOT NULL,
	`dob` DATE NOT NULL,
	`instructor` INT NOT NULL,
	`class` INT NOT NULL,
	`contact` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`address` varchar(255) NOT NULL,
	`batch` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tbl_instructors` (
	`id` BINARY NOT NULL AUTO_INCREMENT,
	`firstname` varchar(255) NOT NULL,
	`middlename` varchar(255) NOT NULL,
	`lastname` varchar(255) NOT NULL,
	`contact` varchar(255) NOT NULL,
	`batch` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tbl_batches` (
	`id` BINARY NOT NULL AUTO_INCREMENT,
	`batch_name` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tbl_grading_criteria` (
	`id` BINARY NOT NULL AUTO_INCREMENT,
	`grading_criteria` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tbl_grades` (
	`id` BINARY NOT NULL AUTO_INCREMENT,
	`grade` DECIMAL(18,2) NOT NULL,
	`instructor_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tbl_period` (
	`id` BINARY NOT NULL AUTO_INCREMENT,
	`period_name` varchar(255) NOT NULL,
	`student_id` INT NOT NULL,
	`milestone` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tbl_milestones` (
	`id` BINARY NOT NULL AUTO_INCREMENT,
	`milestone_name` varchar(255) NOT NULL,
	`student_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tbl_projects` (
	`id` BINARY NOT NULL AUTO_INCREMENT,
	`project_name` varchar(255) NOT NULL,
	`student_id` BINARY NOT NULL,
	`period_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tbl_notices` (
	`id` BINARY NOT NULL,
	`notice` varchar(255) NOT NULL,
	`instrucor_id` BINARY NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tbl_students` ADD CONSTRAINT `tbl_students_fk0` FOREIGN KEY (`instructor`) REFERENCES `tbl_instructors`(`id`);

ALTER TABLE `tbl_students` ADD CONSTRAINT `tbl_students_fk1` FOREIGN KEY (`class`) REFERENCES `tbl_students`(``);

ALTER TABLE `tbl_students` ADD CONSTRAINT `tbl_students_fk2` FOREIGN KEY (`batch`) REFERENCES `tbl_batches`(`id`);

ALTER TABLE `tbl_instructors` ADD CONSTRAINT `tbl_instructors_fk0` FOREIGN KEY (`batch`) REFERENCES `tbl_batches`(`id`);

ALTER TABLE `tbl_grades` ADD CONSTRAINT `tbl_grades_fk0` FOREIGN KEY (`instructor_id`) REFERENCES `tbl_instructors`(`id`);

ALTER TABLE `tbl_period` ADD CONSTRAINT `tbl_period_fk0` FOREIGN KEY (`student_id`) REFERENCES `tbl_students`(`id`);

ALTER TABLE `tbl_period` ADD CONSTRAINT `tbl_period_fk1` FOREIGN KEY (`milestone`) REFERENCES `tbl_milestones`(`id`);

ALTER TABLE `tbl_milestones` ADD CONSTRAINT `tbl_milestones_fk0` FOREIGN KEY (`student_id`) REFERENCES `tbl_students`(`id`);

ALTER TABLE `tbl_projects` ADD CONSTRAINT `tbl_projects_fk0` FOREIGN KEY (`student_id`) REFERENCES `tbl_students`(`id`);

ALTER TABLE `tbl_projects` ADD CONSTRAINT `tbl_projects_fk1` FOREIGN KEY (`period_id`) REFERENCES `tbl_period`(`id`);

ALTER TABLE `tbl_notices` ADD CONSTRAINT `tbl_notices_fk0` FOREIGN KEY (`notice`) REFERENCES `tbl_instructors`(`id`);

ALTER TABLE `tbl_notices` ADD CONSTRAINT `tbl_notices_fk1` FOREIGN KEY (`instrucor_id`) REFERENCES `tbl_instructors`(`id`);

