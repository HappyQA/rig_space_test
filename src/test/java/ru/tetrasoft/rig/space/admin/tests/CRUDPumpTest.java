package ru.tetrasoft.rig.space.admin.tests;

import ru.tetrasoft.rig.space.utilities.BaseTest;
import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static ru.tetrasoft.rig.space.common.CommonComponentsAdminPage.*;
import static ru.tetrasoft.rig.space.common.LoginModulePage.loginIntoModule;
import static ru.tetrasoft.rig.space.admin.pages.NewPumpPage.*;
import static ru.tetrasoft.rig.space.common.UrlPage.openAdminModule;

/**
 *   autor a.stupin
 */

@Epic("Модуль Admin")
public class CRUDPumpTest extends BaseTest {

    @Feature("Тестирование функции создания бурового насоса")
    @Tag("create")
    @Test
    @Description("Создание бурового насоса")
    public void createPump () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewPumpMenu();
        clickCreateButtonPump();
        sendDataInputInventoryNumber("666");
        selectModel("УНБТ 1180L1");
        selectType("Дуплекс");
        clickOnCheckbox();
        selectCreator("Акрос");
        sendDataInputQuantityCylinder("1");
        sendDataInputLengthStep("1");
        sendDataInputStockDiameter("1");
        sendDataInputValueEfficiency("1");
        selectOwner("COSL Drilling");
        sendDataInputComment("Тестовый буровой насос");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции редактирования бурового насоса")
    @Tag("update")
    @Test
    @Description("Обновление бурового насоса")
    public void updatePump () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewPumpMenu();
        matCellCheckSaveResultPumpPage("666");
        matCellClickPumpPage();
        clearInputField("Инвентарный №");
        sendDataInputInventoryNumber("Тест 666");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции удаления бурового насоса")
    @Tag("delete")
    @Test
    @Description("Удаление бурового насоса")
    public void deletePump () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewPumpMenu();
        matCellCheckSaveResultPumpPage("Тест 666");
        matCellClickPumpPage();
        clickOnDeleteButton();
        matCellCheckDeleteResult("Тест 666");
    }
}