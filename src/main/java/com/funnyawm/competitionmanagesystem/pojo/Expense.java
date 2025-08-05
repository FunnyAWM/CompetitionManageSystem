package com.funnyawm.competitionmanagesystem.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Expense {
    int id;
    int teamId;
    int budget;
    int actualCost;
    String fileUrl;
    int status;
}
