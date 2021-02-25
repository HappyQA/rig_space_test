package ru.tetrasoft.rig.space.admin.tests;

import ru.tetrasoft.rig.space.utilities.BaseTest;
import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static ru.tetrasoft.rig.space.common.CommonComponentsAdminPage.*;
import static ru.tetrasoft.rig.space.common.LoginModulePage.*;
import static ru.tetrasoft.rig.space.common.UrlPage.openAdminModule;
import static ru.tetrasoft.rig.space.admin.pages.NewRolePage.*;

/**
 *   autor a.stupin
 */

@Epic("Модуль Admin")
public class CRUDRoleTest extends BaseTest {

    @Feature("Тестирование функции создания Роли")
    @Tag("create")
    @Test
    @Description("Создание Роли")
    public void createRole () {
        openAdminModule();
        loginIntoModule("admin","1");
        clickTabRoles();
        clickOnButtonPlusRoles();
        sendDataNameRole("Тестовая роль / Все права");
        sendDataDescriptionRole("Тестовая роль");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции редактирования  Роли")
    @Tag("update")
    @Test
    @Description("Обновление Роли")
    public void updateRole () {
        openAdminModule();
        loginIntoModule("admin","1");
        clickTabRoles();
        matCellCheckSaveRolePage("роль");
        matCellClickRolePage();
        clearInputField("Название");
        sendDataNameRole("Переименованная роль");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции удаления Роли")
    @Tag("delete")
    @Test
    @Description("Удаление Роли")
    public void deleteRole () {
        openAdminModule();
        loginIntoModule("admin","1");
        clickTabRoles();
        matCellCheckSaveRolePage("роль");
        matCellClickRolePage();
        clickOnDeleteButton();
        clickOnDeleteButtonInDialogContainer();
        matCellCheckDeleteResult("Переименованная роль");
    }
}