package com.funnyawm.competitionmanagesystem.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Data
@AllArgsConstructor
public class Competition {
    int id;
    String name;
    String type;
    String target;
    String content;
    Date time;
    String place;
    int level;
    String organizer;
    String host;
    String introPicture;
}
