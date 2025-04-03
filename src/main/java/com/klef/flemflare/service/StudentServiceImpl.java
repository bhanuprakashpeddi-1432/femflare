package com.klef.flemflare.service;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.flemflare.repository.StudentRepository;
import com.klef.flemflare.model.Student;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentRepository studentRepository;

    @Override
    public String StuRegistration(Student stu) {
        try {
            // Save student
            studentRepository.save(stu);
            return "Student Registered Successfully";
        } catch (DataIntegrityViolationException e) {
            // Handle duplicate entry exception
            return "Duplicate entry: Student ID or Email already exists.";
        }
    }

    @Override
    public Student checkstulogin(String stuemail, String stupwd) {
        return studentRepository.checkstulogin(stuemail, stupwd);
    }

    @Override
    public String updateStudentProfile(Student student) {
        Student s = studentRepository.findById(student.getSno()).get();
        s.setName(student.getName());
        s.setContact(student.getContact());
        s.setDepartment(student.getDepartment());
        s.setPassword(student.getPassword());
        studentRepository.save(s);
        return "Student Profile Updated Successfully";
    }

    @Override
    public Student displayStudentbyID(int sid) {
        return studentRepository.findById(sid).get();
    }
}
