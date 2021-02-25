package ru.tetrasoft.rig.space.admin.tests;

import ru.tetrasoft.rig.space.utilities.BaseTest;
import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static ru.tetrasoft.rig.space.admin.pages.NewRigPage.*;
import static ru.tetrasoft.rig.space.common.CommonComponentsAdminPage.*;
import static ru.tetrasoft.rig.space.common.LoginModulePage.loginIntoModule;
import static ru.tetrasoft.rig.space.common.UrlPage.openAdminModule;

/**
 *   autor a.stupin
 */

@Epic("Модуль Admin")
public class CRUDRigTest extends BaseTest {

    @Feature("Тестирование функции создания буровой установки")
    @Tag("create")
    @Test
    @Description("Создание буровой установки")
    public void createWell () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openRigPage();
        clickCreateButton();
        sendInputSerialNumber("666");
        sendInputName("Тестовая");
        selectType("Наземная");
        selectStatus("Активна");
        clickOnCheckbox();
        sendInputWeightEmptyHook("666");
        sendInputCandleLength("1");
        selectCompanyOwner("COSL Drilling");
        sendDataInputDescription("Тест");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции редактирования буровой установки")
    @Tag("update")
    @Test
    @Description("Обновление буровой установки")
    public void updateWell () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openRigPage();
        matCellCheckSaveResultRigPage("666 «Тестовая»");
        matCellClickRigPage();
        clearInputField("Серийный №");
        sendInputSerialNumber("777");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции удаления буровой установки")
    @Tag("delete")
    //@Test
    @Description("Удаление буровой установки")
    public void deleteWell () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openRigPage();
        matCellCheckSaveResultRigPage("777 «Тестовая»");
        matCellClickRigPage();
        clickOnDeleteButton();
        matCellCheckDeleteResult("777 «Тестовая»");
    }
}