package com.funnyawm.competitionmanagesystem.pojo;

public enum CompetitionLevel {
    SCHOOL, PROVINCE, NATION;

    @Override
    public String toString() {
        return switch (this) {
            case SCHOOL -> "校级";
            case PROVINCE -> "省级";
            case NATION -> "国家级";
        };
    }
}
