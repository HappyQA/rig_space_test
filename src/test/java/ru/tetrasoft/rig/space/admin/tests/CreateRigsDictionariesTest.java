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
public class CreateRigsDictionariesTest extends BaseTest {

    @Feature("Тестирование функции создания записей в справочниках Буровые установки")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Буровые установки - Типы")
    public void createRigsDictionaryItemType () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openRigDictionaryTab();
        clickCreateButton();
        sendDataInputDictionary("Тестовый тип");
        clickOnButtonSave();
        checkSaveResult("Тестовый тип");
    }

    @Feature("Тестирование функции создания записей в справочниках Буровые установки")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Буровые установки - Статусы")
    public void createRigsDictionaryItemStatus () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openRigDictionaryTab();
        openRigStatusDictionary();
        clickCreateButton();
        sendDataInputDictionary("Тестовый статус");
        clickOnButtonSave();
        checkSaveResultRigsStatus("Тестовый статус");
    }

    @Feature("Тестирование функции создания записей в справочниках Буровые установки")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Буровые установки - Компании-владельцы")
    public void createRigsDictionaryItemCompanyOwner () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openRigDictionaryTab();
        openRigOwnerDictionary();
        clickCreateButton();
        sendDataInputDictionary("Тестовая компания");
        clickOnButtonSave();
        checkSaveResult("Тестовая компания");
    }
}