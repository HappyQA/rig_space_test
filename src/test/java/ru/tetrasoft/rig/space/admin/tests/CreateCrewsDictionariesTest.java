package ru.tetrasoft.rig.space.admin.tests;

import ru.tetrasoft.rig.space.utilities.BaseTest;
import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static ru.tetrasoft.rig.space.common.CommonComponentsAdminPage.*;
import static ru.tetrasoft.rig.space.common.LoginModulePage.loginIntoModule;
import static ru.tetrasoft.rig.space.admin.pages.NewDictionariesPage.*;
import static ru.tetrasoft.rig.space.common.UrlPage.openAdminModule;

/**
 *   autor a.stupin
 */

@Epic("Модуль Admin")
public class CreateCrewsDictionariesTest extends BaseTest {

    @Feature("Тестирование функции создания записей в справочниках Буровые бригады")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Буровые бригады - Статусы")
    public void createCrewsDictionaryItemStatus () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openCrewsDictionaryTab();
        clickCreateButton();
        sendDataInputDictionary("Тестовый статус");
        clickOnButtonSave();
        checkSaveResultCrewStatus("Тестовый статус");
    }

    @Feature("Тестирование функции создания записей в справочниках Буровые бригады")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Буровые бригады - Компании")
    public void createCrewsDictionaryItemCompany () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openCrewsDictionaryTab();
        openRigCompanyDictionary();
        clickCreateButton();
        sendDataInputDictionary("Тестовая компания");
        clickOnButtonSave();
        checkSaveResult("Тестовая компания");
    }
}