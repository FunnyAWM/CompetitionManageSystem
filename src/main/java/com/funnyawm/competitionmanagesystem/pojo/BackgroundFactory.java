package com.funnyawm.competitionmanagesystem.pojo;

import org.jetbrains.annotations.NotNull;

public class BackgroundFactory {
    /**
     * @author FunnyAWM
     * @since 1.0
     * @param backgroundText 学历字符串
     * @return 学历枚举
     */
    public Background fromString(@NotNull String backgroundText) {
        String text = backgroundText.trim();
        return switch (text) {
            case "本科生/学士" -> Background.UNDERGRADUATE;
            case "研究生/硕士" -> Background.GRADUATE;
            case "博士" -> Background.DOCTOR;
            case "博士后" -> Background.POSTDOCTORAL;
            default -> throw new IllegalArgumentException("未知的学历类型: " + backgroundText);
        };
    }
}
