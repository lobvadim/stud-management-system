package database;

import entity.Discipline;
import entity.Mark;
import entity.Student;
import entity.Term;

import java.util.List;
import java.util.Map;

public interface IDBManager {
    List<Student> getAllActivStudents();
    List<Discipline> getAllActivDisciplenes();
    List<Term> getAllActivTerms();


    void createStudent(String surname, String name, String group, String date);
    void createDiscipline(String disciplineName);


    void deleteStudent(String id);
    void deleteDiscipline(String id);

    Student getStudentById(String id);

    Discipline getDisciplineById(String id);


    void modifyStudent(String id, String surname, String name, String group, String dateToDatabase);

    List<Discipline> getDisciplinesByTerm(int id);

    List<Mark> getMarksByTerm(int idTerm, String idStudent);

    boolean canLogin(String login, String password, String role);


    String getLastTermName();

    void createNewTerm(String newName, String duration, String[] ids);

    void deleteTerm(String idTerm);

    Term getTermById(String idTerm);

    void modifyTerm(String idTermModify, String duration, String[] idsDisc);

    void modifyDiscipline(String id, String disciplineName);
}
