package com.funnyawm.competitionmanagesystem.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Profession {
    int id;
    int collegeId;
    String name;
    String bio;
    String introPicture;
}
