package com.funnyawm.competitionmanagesystem.pojo;

import javax.validation.constraints.NotNull;

public class CompetitionLevelFactory {

    /**
     * @author FunnyAWM
     * @since 1.0
     * @param levelText 比赛等级字符串
     * @return 比赛等级枚举
     */
    public static CompetitionLevel fromString(@NotNull String levelText) {
        return switch (levelText) {
            case "校级" -> CompetitionLevel.SCHOOL;
            case "省级" -> CompetitionLevel.PROVINCE;
            case "国家级" -> CompetitionLevel.NATION;
            default -> null;
        };
    }
}
