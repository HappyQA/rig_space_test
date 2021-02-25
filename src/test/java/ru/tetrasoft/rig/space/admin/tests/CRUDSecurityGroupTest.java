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
import static ru.tetrasoft.rig.space.admin.pages.NewSecurityGroupPage.*;

/**
 *   autor a.stupin
 */

@Epic("Модуль Admin")
public class CRUDSecurityGroupTest extends BaseTest {

    @Feature("Тестирование функции создания пользователя")
    @Tag("create")
    @Test
    @Description("Создание группы безопасности")
    public void createSecurityGroup () {
        openAdminModule();
        loginIntoModule("admin","1");
        clickTabSecurityGroups();
        clickOnButtonPlusSecurityGroups();
        sendDataNameSecurityGroup("Тестовая группа");
        sendDataDescriptionSecurityGroup("Тестовое описание");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции редактирования группы безопасности")
    @Tag("update")
    @Test
    @Description("Обновления группы безопасности")
    public void updateSecurityGroup () {
        openAdminModule();
        loginIntoModule("admin","1");
        clickTabSecurityGroups();
        matCellCheckSaveResultSecurityGroupsPage("Тестовая группа");
        matCellClickSecurityGroupsPage();
        clearInputField("Название");
        sendDataNameSecurityGroup("Переименованная группа");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции удаления группы безопасности")
    @Tag("delete")
    @Test
    @Description("Удаление группы безопасности")
    public void deleteSecurityGroup () {
        openAdminModule();
        loginIntoModule("admin","1");
        clickTabSecurityGroups();
        matCellCheckSaveResultSecurityGroupsPage("Переименованная группа");
        matCellClickSecurityGroupsPage();
        clickOnDeleteButton();
        clickOnDeleteButtonInDialogContainer();
        matCellCheckDeleteResult("Переименованная группа");
    }
}