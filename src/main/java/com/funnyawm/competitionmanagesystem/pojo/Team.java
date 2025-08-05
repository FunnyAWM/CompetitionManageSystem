package com.funnyawm.competitionmanagesystem.pojo;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
public class Team {
    int id;
    String name;
    int leaderId;
    int competitionId;
    List<Integer> students;
    String studentsJson;
    int status;

    public void toJson() {
        Gson gson = new Gson();
        studentsJson = gson.toJson(students);
    }

    public void fromJson() {
        Gson gson = new Gson();
        if (studentsJson != null && !studentsJson.trim().isEmpty()) {
            students = gson.fromJson(studentsJson, new TypeToken<List<Integer>>() {
            }.getType());
        } else {
            students = new ArrayList<>();
        }
    }
}
