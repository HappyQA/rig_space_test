package ru.tetrasoft.rig.space.admin.tests;

import ru.tetrasoft.rig.space.utilities.BaseTest;
import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static ru.tetrasoft.rig.space.admin.pages.NewPitPage.matCellClickPitPage;
import static ru.tetrasoft.rig.space.common.CommonComponentsAdminPage.*;
import static ru.tetrasoft.rig.space.common.LoginModulePage.loginIntoModule;
import static ru.tetrasoft.rig.space.admin.pages.NewPitPage.*;
import static ru.tetrasoft.rig.space.common.UrlPage.openAdminModule;

/**
 *   autor a.stupin
 */

@Epic("Модуль Admin")
public class CRUDPitTest extends BaseTest {

    @Feature("Тестирование функции создания емкостного обоудования")
    @Tag("create")
    @Test
    @Description("Создание емкости")
    public void createPit () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewPitMenu();
        clickCreateButtonPit();
        sendDataInputDescription("Тестовое Описание");
        selectOwner("COSL Drilling");
        selectType("Доливная");
        sendDataInputCapacity("1");
        sendDataInputDeadZone("1");
        sendDataInputComment("Тестовый коментария");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции редактирования емкостного обоудования")
    @Tag("update")
    @Test
    @Description("Обновление емкости")
    public void updatePit () {
        openAdminModule();
        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewPitMenu();
        matCellCheckSaveResultPitPage("Тестовое Описание");
        matCellClickPitPage();
        clearInputField("Описание");
        sendDataInputDescription("Обновленное Описание");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции удаления емкостного обоудования")
    @Tag("delete")
    @Test
    @Description("Удаление емкости")
    public void deletePit () {
        openAdminModule();
//        loginIntoModule("admin","1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewPitMenu();
        matCellCheckSaveResultPitPage( "Обновленное Описание");
        matCellClickPitPage();
        clickOnDeleteButton();
        matCellCheckDeleteResult("Обновленное Описание");
    }
}