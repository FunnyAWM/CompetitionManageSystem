package com.funnyawm.competitionmanagesystem.pojo;

public enum Background {
    UNDERGRADUATE, GRADUATE, DOCTOR, POSTDOCTORAL;

    @Override
    public String toString() {
        return switch (this) {
            case UNDERGRADUATE ->  "本科生/学士";
            case GRADUATE -> "研究生/硕士";
            case DOCTOR -> "博士";
            case POSTDOCTORAL -> "博士后";
            default -> "";
        };
    }
}
