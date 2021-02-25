package ru.tetrasoft.rig.space.admin.tests;

import ru.tetrasoft.rig.space.utilities.BaseTest;
import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static ru.tetrasoft.rig.space.admin.pages.NewUserPage.*;
import static ru.tetrasoft.rig.space.common.CommonComponentsAdminPage.*;
import static ru.tetrasoft.rig.space.common.LoginModulePage.loginIntoModule;
import static ru.tetrasoft.rig.space.common.UrlPage.openAdminModule;

/**
 *   autor a.stupin
 */

@Epic("Модуль Admin")
public class CRUDUserTest extends BaseTest {

    @Feature("Тестирование функции создания пользователя")
    @Tag("create")
    @Test
    @Description("Создание пользователя")
    public void createUser () {
        openAdminModule();
        loginIntoModule("admin","1");
        clickOnButtonPlusUsers();
        sendDataInputLoginUser("test");
        clickOnToggleButton();
        sendDataInputPasswordUser("test12");
        sendDataInputFamilyNameUser("Отчество");
        sendDataInputNameUser("Имя");
        sendDataInputLastNameUser("Фамилия");
        sendDataInputEmailUser("test@mail.ru");
        sendDataInputPhoneUser("+79996665544");
        sendDataInputCompanyUser("Test Company");
        sendDataInputDepartmentUser("QA");
        sendDataInputPositionUser("QAA");
        sendDataInputDescriptionUser("User for autotests");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции редактирования пользователя")
    @Tag("update")
    @Test
    @Description("Редактирование пользователя")
    public void updateUser () {
        openAdminModule();
        loginIntoModule("admin","1");
        matCellCheckSaveResultUserPage("Фамилия Имя");
        matCellClickUserPage();
        clearInputField("Фамилия");
        sendDataInputLastNameUser("Тест1");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции блокиовки пользователя")
    @Tag("delete")
    @Test
    @Description("Блокировка пользователя")
    public void blockUser () {
        openAdminModule();
        loginIntoModule("admin","1");
        matCellCheckSaveResultUserPage("Тест1 Имя");
        clickOnBlockUserButton();
        checkBlockUserPopup();
    }
}