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
public class CreateWellsDictionariesTest extends BaseTest {

    @Feature("Тестирование функции создания записи в справочниках Скважины")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Площади")
    public void createDictionaryItemWells () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        clickCreateButton();
        sendDataInputDictionary("Тестовая площадь");
        clickOnButtonSave();
        checkSaveResult("Тестовая площадь");
    }

    @Feature("Тестирование функции создания записей в справочниках Скважины")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Лицензионные участки")
    public void createDictionaryItemLicenseArea () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openWellsDictionaryLicenseAreas();
        clickCreateButton();
        sendDataInputDictionary("Тестовый участок");
        clickOnButtonSave();
        checkSaveResult("Тестовый участок");
    }

    @Feature("Тестирование функции создания записей в справочниках Скважины")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Месторождения")
    public void createDictionaryItemField () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openWellsDictionaryFields();
        clickCreateButton();
        sendDataInputDictionary("Тестовое месторождение");
        clickOnButtonSave();
        checkSaveResult("Тестовое месторождение");
    }

    @Feature("Тестирование функции создания записей в справочниках Скважины")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Проекты")
    public void createDictionaryItemProject () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openWellsDictionaryProjects();
        clickCreateButton();
        sendDataInputDictionary("Тестовый проект");
        clickOnButtonSave();
        checkSaveResult("Тестовый проект");
    }

    @Feature("Тестирование функции создания записей в справочниках Скважины")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Назначение скважин")
    public void createDictionaryPurpose () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openWellsDictionaryPurpose();
        clickCreateButton();
        sendDataInputDictionary("Тестовое назначение");
        clickOnButtonSave();
        checkSaveResult("Тестовое назначение");
    }

    @Feature("Тестирование функции создания записей в справочниках Скважины")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Назначение стволов")
    public void createDictionaryWellborePurpose () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openWellsDictionaryWellborePurpose();
        clickCreateButton();
        sendDataInputDictionary("Тестовое назначение ствола");
        clickOnButtonSave();
        checkSaveResult("Тестовое назначение ствола");
    }

    @Feature("Тестирование функции создания записей в справочниках Скважины")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Недропользователи")
    public void createDictionarySubsoils () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openWellsDictionarySubsoil();
        clickCreateButton();
        sendDataInputDictionary("Тестовый недропользователь");
        clickOnButtonSave();
        checkSaveResult("Тестовый недропользователь");
    }

    @Feature("Тестирование функции создания записей в справочниках Скважины")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Статус")
    public void createDictionaryStatus () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openWellsDictionaryStatus();
        clickCreateButton();
        sendDataInputDictionary("Тестовый статус");
        clickOnButtonSave();
        checkSaveResultWellsStatus("Тестовый статус");
    }

    @Feature("Тестирование функции создания записей в справочниках Скважины")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Типы")
    public void createDictionaryTypes () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openWellsDictionaryType();
        clickCreateButton();
        sendDataInputDictionary("Тестовый тип");
        clickOnButtonSave();
        checkSaveResultWellsType("Тестовый тип");
    }

    @Feature("Тестирование функции создания записей в справочниках Скважины")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Категории скважин по ГНВП")
    public void createDictionaryWellCategory () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openWellsDictionaryWellCategory();
        clickCreateButton();
        sendDataInputDictionary("Тестовая категория 2");
        clickOnButtonSave();
        checkSaveResult("Тестовая категория 2");
    }

    @Feature("Тестирование функции создания записей в справочниках Скважины")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Типы флюидов")
    public void createDictionaryWellFluid () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openWellsDictionaryFluidsType();
        clickCreateButton();
        sendDataInputDictionary("Тестовый флюид 2");
        clickOnButtonSave();
        checkSaveResult("Тестовый флюид 2");
    }

    @Feature("Тестирование функции создания записей в справочниках Скважины")
    @Tag("create")
    @Test
    @Description("Создание записи в справочнике Пласты")
    public void createDictionaryFormation () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openDictionaryPage();
        openWellsDictionaryFormation();
        clickCreateButton();
        sendDataInputDictionary("Тестовый пласт 2");
        clickOnButtonSave();
        checkSaveResult("Тестовый пласт 2");
    }
}