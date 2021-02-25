package ru.tetrasoft.rig.space.admin.tests;

import ru.tetrasoft.rig.space.utilities.BaseTest;
import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static ru.tetrasoft.rig.space.admin.pages.NewRigCrewPage.*;
import static ru.tetrasoft.rig.space.common.CommonComponentsAdminPage.*;
import static ru.tetrasoft.rig.space.common.LoginModulePage.loginIntoModule;
import static ru.tetrasoft.rig.space.common.UrlPage.openAdminModule;

/**
 *   autor a.stupin
 */

@Epic("Модуль Admin")
public class CRUDRigCrewTest extends BaseTest {

    @Feature("Тестирование функции создания буровой бригады")
    @Tag("create")
    @Test
    @Description("Создание буровой бригады")
    public void createRigCrew () {
        openAdminModule();
//        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openCrewPage();
        clickCreateButton();
        sendDataInputName("Тестовая");
        sendDataInputMasterName("Петухов А.В.");
        selectStatus("Активна");
        selectCompany("Компания 1");
        sendDataInputDescription("Для теста");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции редактирования буровой бригады")
    @Tag("update")
    @Test
    @Description("Обновление буровой бригады")
    public void updateRigCrew () {
        openAdminModule();
//        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openCrewPage();
        matCellCheckSaveResultRigCrewPage("Тестовая");
        matCellClickRigCrewPage();
        clearInputField("Название");
        sendDataInputName("ТестоваяТест");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции удаления буровой бригады")
    @Tag("delete")
    //@Test
    @Description("Удаление буровой бригады")
    public void deleteRigCrew () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openCrewPage();
        matCellCheckSaveResultRigCrewPage("ТестоваяТест");
        matCellClickRigCrewPage();
        clickOnDeleteButton();
        matCellCheckDeleteResult("ТестоваяТест");
    }
}