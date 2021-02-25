package ru.tetrasoft.rig.space.common;

import io.qameta.allure.Step;

import static com.codeborne.selenide.Selenide.open;

/**
 *   autor a.stupin
 */

public class UrlPage {

    @Step("Открытие страницы Аутентификации")
    public static void openAuthModule () {
        open("http://test.rig.space/auth/");
    }

    @Step("Открытие страницы Админки")
    public static void openAdminModule () {
        open("http://test.rig.space/admin/");
    }

    @Step("Открытие страницы Репортинга")
    public static void openReportingModule () {
        open("http://qa.rig.space/reporting/");
    }

    @Step("Открытие страницы Еквипмента")
    public static void openEquipmentModule () {
        open("http://qa.rig.space/equipment/");
    }

    @Step("Открытие страницы Аналитики")
    public static void openAnalyticsModule () {
        open("http://qa.rig.space/analytics/");
    }

    @Step("Открытие страницы Мониторинга")
    public static void openMonitoringModule () {
        open("http://qa.rig.space/monitoring/");
    }

    @Step("Открытие страницы Рэйтинга")
    public static void openRatingModule () {
        open("http://qa.rig.space/raiting/");
    }
}