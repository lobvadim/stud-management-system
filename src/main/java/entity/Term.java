package entity;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Term {
    private int id;
    private String name;
    private String duration;
    private int status;
    private List<Discipline> disciplineList = new ArrayList<>();

    public Term() {
    }

    public Term(int id, String name, String duration, int status, List<Discipline> disciplineList) {
        this.id = id;
        this.name = name;
        this.duration = duration;
        this.status = status;
        this.disciplineList = disciplineList;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String term) {
        this.name = term;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public List<Discipline> getDisciplineList() {
        return disciplineList;
    }

    public void setDisciplineList(List<Discipline> disciplineList) {
        this.disciplineList = disciplineList;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Term term1 = (Term) o;
        return id == term1.id && status == term1.status && Objects.equals(name, term1.name) && Objects.equals(duration, term1.duration) && Objects.equals(disciplineList, term1.disciplineList);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, duration, status, disciplineList);
    }
    
}
