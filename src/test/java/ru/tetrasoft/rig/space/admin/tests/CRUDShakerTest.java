package ru.tetrasoft.rig.space.admin.tests;

import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static ru.tetrasoft.rig.space.common.CommonComponentsAdminPage.*;
import static ru.tetrasoft.rig.space.common.LoginModulePage.loginIntoModule;
import static ru.tetrasoft.rig.space.admin.pages.NewShakerPage.*;
import static ru.tetrasoft.rig.space.common.UrlPage.openAdminModule;

/**
 *   autor a.stupin
 */

@Epic("Модуль Admin")
public class CRUDShakerTest {

    @Feature("Тестирование функции создания вибрационного сита")
    @Tag("create")
    @Test
    @Description("Создание вибрационного сита")
    public void createShaker () {
        openAdminModule();
        loginIntoModule("admin", "1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewShakerMenu();
        clickCreateButtonShaker();
        sendDataInputSerialNumber("666");
        selectModel("Falcon 4");
        selectType("Осушающее вибросито");
        clickOnCheckbox();
        selectCreator("Акрос");
        sendDataInputPerformance("666");
        sendDataInputShakerPanel("1");
        sendDataInputDeckQuantity("1");
        selectOwner("COSL Drilling");
        sendDataInputComment("Для теста");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции редактирования вибрационного сита")
    @Tag("update")
    @Test
    @Description("Обновление вибрационного сита")
    public void updateShaker () {
        openAdminModule();
        loginIntoModule("admin", "1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewShakerMenu();
        matCellCheckSaveResultShakerPage("666");
        matCellClickShakerPage();
        clearInputField("Серийный №");
        sendDataInputSerialNumber("Тест 666");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции удаления вибрационного сита")
    @Tag("delete")
    @Test
    @Description("Удалениие вибрационного сита")
    public void deleteShaker () {
        openAdminModule();
        loginIntoModule("admin", "1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewShakerMenu();
        matCellCheckSaveResultShakerPage("Тест 666");
        matCellClickShakerPage();
        clickOnDeleteButton();
        matCellCheckDeleteResult("Тест 666");
    }
}