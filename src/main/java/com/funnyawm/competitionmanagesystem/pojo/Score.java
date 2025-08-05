package com.funnyawm.competitionmanagesystem.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Score {
    int id;
    int teamId;
    int score;
    String comment;
    String appealReason;
    String appealStatus;
}
