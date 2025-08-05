package com.funnyawm.competitionmanagesystem.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Award {
    int id;
    int teamId;
    int amount;
    String detail;
    String note;
}
