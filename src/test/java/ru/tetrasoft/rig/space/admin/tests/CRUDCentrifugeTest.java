package ru.tetrasoft.rig.space.admin.tests;

import ru.tetrasoft.rig.space.utilities.BaseTest;
import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static ru.tetrasoft.rig.space.common.CommonComponentsAdminPage.*;
import static ru.tetrasoft.rig.space.common.LoginModulePage.loginIntoModule;
import static ru.tetrasoft.rig.space.admin.pages.NewCentrifugePage.*;
import static ru.tetrasoft.rig.space.common.UrlPage.openAdminModule;

/**
 *   autor a.stupin
 */

@Epic("Модуль Admin")
public class CRUDCentrifugeTest extends BaseTest {

    @Feature("Тестирование функции создания центрифуги")
    @Tag("create")
    @Test
    @Description("Создание центрифуги")
    public void createCentrifuge () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewCentrifugesMenu();
        clickCreateButtonCentrifuge();
        sendDataInputSerialNumber("666");
        selectModel("AKR-363");
        selectType("Центрифуга");
        selectCreator("Акрос");
        sendDataInputMaxSpeed("123");
        sendDataInputPerformance("1");
        selectOwner("COSL Drilling");
        sendDataInputComment("Для теста");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции редактирования центрифуги")
    @Tag("update")
    @Test
    @Description("Обновление центрифуги")
    public void updateCentrifuge () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewCentrifugesMenu();
        matCellCheckSaveResultCentrifugePage("666");
        matCellClickCentrifugePage();
        clearInputField("Серийный №");
        sendDataInputSerialNumber("Тест 666");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции удалениия центрифуги")
    @Tag("delete")
    @Test
    @Description("Удаление центрифуги")
    public void deleteCentrifuge () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewCentrifugesMenu();
        matCellCheckSaveResultCentrifugePage("Тест 666");
        matCellClickCentrifugePage();
        clickOnDeleteButton();
        matCellCheckDeleteResult("Тест 666");
    }
}