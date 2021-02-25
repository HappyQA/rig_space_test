package ru.tetrasoft.rig.space.admin.tests;

import ru.tetrasoft.rig.space.utilities.BaseTest;
import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static ru.tetrasoft.rig.space.common.CommonComponentsAdminPage.*;
import static ru.tetrasoft.rig.space.common.LoginModulePage.loginIntoModule;
import static ru.tetrasoft.rig.space.admin.pages.NewDegasserPage.*;
import static ru.tetrasoft.rig.space.common.UrlPage.openAdminModule;

/**
 *   autor a.stupin
 */

@Epic("Модуль Admin")
public class CRUDDegasserTest extends BaseTest {

    @Feature("Тестирование функции создания дегазатора")
    @Tag("create")
    @Test
    @Description("Создание дегазатора")
    public void createDegasser () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewDegasserMenu();
        clickCreateButtonDegasser();
        sendDataInputSerialNumber("666");
        selectModel("AKR-300");
        selectType("Дегазатор центробежный");
        selectCreator("Акрос");
        sendDataInputPerformance("777");
        sendDataInputPerformanceOnGas("888");
        sendDataInputLength("1");
        sendDataInputHeight("1");
        selectOwner("COSL Drilling");
        sendDataInputComment("Для теста");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции редактирования дегазатора")
    @Tag("update")
    @Test
    @Description("Обновление дегазатора")
    public void updateDegasser () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewDegasserMenu();
        matCellCheckSaveResultDegasserPage("666");
        matCellClickDegasserPage();
        clearInputField("Серийный №");
        sendDataInputSerialNumber("Тест 666");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции удаления дегазатора")
    @Tag("delete")
    @Test
    @Description("Удаление дегазатора")
    public void deleteDegasser () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewDegasserMenu();
        matCellCheckSaveResultDegasserPage("Тест 666");
        matCellClickDegasserPage();
        clickOnDeleteButton();
        matCellCheckDeleteResult("Тест 666");
    }
}