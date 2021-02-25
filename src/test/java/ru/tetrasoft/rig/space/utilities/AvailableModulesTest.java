package ru.tetrasoft.rig.space.utilities;

import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static ru.tetrasoft.rig.space.common.LoginModulePage.checkModuleTitle;
import static ru.tetrasoft.rig.space.common.LoginModulePage.loginIntoModule;
import static ru.tetrasoft.rig.space.common.UrlPage.*;

/**
 *   autor a.stupin
 */

@Epic("Проверка доступности модулей")
public class AvailableModulesTest extends BaseTest {

    @Feature("Модуль Auth")
    @Tag("other")
    @Test
    @Description("Проверка доступности модуля Auth")
    public void availableAuth () {
        openAuthModule();
        checkModuleTitle("Rigspace Login");
    }

    @Feature("Модуль Admin")
    @Tag("other")
    @Test
    @Description("Проверка доступности модуля Admin")
    public void availableAdmin () {
        openAdminModule();
        loginIntoModule("admin", "1");
        checkModuleTitle("Rigspace Administrative Panel");
    }

    @Feature("Модуль Reporting")
    //@Test
    @Description("Проверка доступности модуля Reporting")
    public void availableReporting () {
        openReportingModule();
        loginIntoModule("admin", "1");
        checkModuleTitle("Rigspace Reporting");
    }

    @Feature("Модуль Equipment")
    //@Test
    @Description("Проверка доступности модуля Equipment")
    public void availableEquipment () {
        openEquipmentModule();
        loginIntoModule("admin", "1");
        checkModuleTitle("Rigspace Equipment");
    }

    @Feature("Модуль Analytics")
    //@Test
    @Description("Проверка доступности модуля Analytics")
    public void availableAnalytics () {
        openAnalyticsModule();
        loginIntoModule("admin", "1");
        checkModuleTitle("Rigspace Analytics");
    }

    @Feature("Модуль Monitoring")
    //@Test
    @Description("Проверка доступности модуля Monitoring")
    public void availableMonitoring () {
        openMonitoringModule();
        loginIntoModule("admin", "1");
        checkModuleTitle("Rigspace Monitoring");
    }

    @Feature("Модуль Monitoring")
    //@Test
    @Description("Проверка доступности модуля Rating")
    public void availableRating () {
        openRatingModule();
        loginIntoModule("admin", "1");
        checkModuleTitle("Rigspace Rating");
    }
}