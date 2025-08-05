package com.funnyawm.competitionmanagesystem.pojo;

import org.jetbrains.annotations.NotNull;

public class GenderFactory {

    /**
     * @author FunnyAWM
     * @since 1.0
     * @param genderText 性别字符串
     * @return 性别枚举
     */
    public static Gender fromString(@NotNull String genderText) {
        return switch (genderText) {
            case "男" -> Gender.MALE;
            case "女" -> Gender.FEMALE;
            default -> throw new IllegalArgumentException("Unexpected value: " + genderText);
        };
    }
}
