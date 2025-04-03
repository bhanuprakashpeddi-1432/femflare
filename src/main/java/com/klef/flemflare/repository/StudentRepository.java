package com.klef.flemflare.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.flemflare.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {

    @Query("SELECT s FROM Student s WHERE s.email = ?1 AND s.password = ?2")
    Student checkstulogin(String stuemail, String stupwd);

    // Check if a student exists by email
    boolean existsByEmail(String email);

    // Check if a student exists by student ID
    boolean existsByStudentIdNo(String studentIdNo);
}
