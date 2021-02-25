package ru.tetrasoft.rig.space.admin.tests;

import ru.tetrasoft.rig.space.utilities.BaseTest;
import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static ru.tetrasoft.rig.space.common.CommonComponentsAdminPage.*;
import static ru.tetrasoft.rig.space.common.LoginModulePage.loginIntoModule;
import static ru.tetrasoft.rig.space.admin.pages.NewBopPage.*;
import static ru.tetrasoft.rig.space.common.UrlPage.openAdminModule;

/**
 *   autor a.stupin
 */

@Epic("Модуль Admin")
public class CRUDBopTest extends BaseTest {

    @Feature("Тестирование функции создания центрифуги")
    @Tag("create")
    @Test
    @Description("Создание центрифуги")
    public void createBop () {
        openAdminModule();
        loginIntoModule("admin", "1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewBopsMenu();
        clickCreateButtonBop();
        sendDataInputWorkPressure("123");
        sendDataInputConditionalMethod("1");
        sendDataInputDescription("Тест");
        selectModel("Тестовая модель");
        selectCreator("Акрос");
        selectOwner("COSL Drilling");
        sendDataInputComment("Для теста");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции редактирования центрифуги")
    @Tag("update")
    @Test
    @Description("Обновление центрифуги")
    public void updateBop () {
        openAdminModule();
        loginIntoModule("admin", "1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewBopsMenu();
        matCellCheckSaveResultBopPage("Тест");
        matCellClickBopPage();
        clearInputField("Описание");
        sendDataInputDescription("Тест Описание");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции удаления центрифуги")
    @Tag("delete")
    @Test
    @Description("Удаление центрифуги")
    public void deleteBop () {
        openAdminModule();
        loginIntoModule("admin", "1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewBopsMenu();
        matCellCheckSaveResultBopPage("Тест Описание");
        matCellClickBopPage();
        clickOnDeleteButton();
        matCellCheckDeleteResult("Тест Описание");
    }
}