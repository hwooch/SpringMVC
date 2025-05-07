package kr.ac.hansung.cse.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import kr.ac.hansung.cse.model.Course;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class CourseDao {

    @PersistenceContext
    private EntityManager entityManager;

    public List<Course> getCoursesByYearAndSemester(int year, int semester) {
        return entityManager.createQuery("SELECT c FROM Course c WHERE c.year = :year AND c.semester = :semester", Course.class)
                .setParameter("year", year)
                .setParameter("semester", semester)
                .getResultList();
    }

    public void insert(Course course) {
        entityManager.persist(course);
    }

    public int getTotalCredits() {
        Long total = entityManager.createQuery("SELECT SUM(c.credit) FROM Course c", Long.class)
                .getSingleResult();

        return total != null ? total.intValue() : 0;
    }

    public List<Object[]> getCreditsGroupedByYearAndSemester() {
        return entityManager.createQuery(
                        "SELECT c.year, c.semester, SUM(c.credit) " +
                                "FROM Course c " +
                                "GROUP BY c.year, c.semester " +
                                "ORDER BY c.year, c.semester", Object[].class)
                .getResultList();
    }
}