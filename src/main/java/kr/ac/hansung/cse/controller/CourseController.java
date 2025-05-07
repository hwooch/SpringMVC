package kr.ac.hansung.cse.controller;

import kr.ac.hansung.cse.dao.CourseDao;
import kr.ac.hansung.cse.model.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class CourseController {

    @Autowired
    private CourseDao courseDao;

    // 이수 학점 조회
    @GetMapping("/checkGradesByYear")
    public String checkGradesByYear(Model model) {
        List<Object[]> summary = courseDao.getCreditsGroupedByYearAndSemester();
        int totalCredits = courseDao.getTotalCredits();
        model.addAttribute("summary", summary);
        model.addAttribute("totalCredits", totalCredits);
        return "grades";
    }

    // 수강 신청 폼
    @GetMapping("/registerCourses")
    public String registerCourses(Model model) {
        model.addAttribute("course", new Course());
        return "register";
    }

    // 수강 신청 데이터 저장
    @PostMapping("/registerCourses")
    public String submitCourse(@ModelAttribute Course course) {
        courseDao.insert(course);
        return "redirect:/";
    }

    // 수강 신청 조회
    @GetMapping("/viewRegisteredCourses")
    public String viewRegisteredCourses(Model model) {
        List<Course> courses = courseDao.getCoursesByYearAndSemester(2025, 2);
        model.addAttribute("registeredCourses", courses);
        return "registered";
    }

    // 링크 버튼을 통한 학기 과목 조회
    @GetMapping("/viewDetails")
    public String viewDetails(@RequestParam("year") int year,
                              @RequestParam("semester") int semester,
                              Model model) {
        List<Course> detailCourses = courseDao.getCoursesByYearAndSemester(year, semester);
        model.addAttribute("detailCourses", detailCourses);
        model.addAttribute("year", year);
        model.addAttribute("semester", semester);
        return "details";
    }
}