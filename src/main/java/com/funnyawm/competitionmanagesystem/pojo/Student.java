package com.funnyawm.competitionmanagesystem.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Student {
    int id;
    String userName;
    String password;
    String name;
    int gender;
    String studentId;
    int background;
    int grade;
    int collegeId;
    String phoneNumber;
    String email;
    String avatar;
}
