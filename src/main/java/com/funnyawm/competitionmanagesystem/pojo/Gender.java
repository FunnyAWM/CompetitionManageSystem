package com.funnyawm.competitionmanagesystem.pojo;

public enum Gender {
    MALE, FEMALE;

    public String toString() {
        return switch (this) {
            case MALE -> "男";
            case FEMALE -> "女";
            default -> "";
        };
    }
}
