package ru.tetrasoft.rig.space.admin.tests;

import ru.tetrasoft.rig.space.utilities.BaseTest;
import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static ru.tetrasoft.rig.space.common.CommonComponentsAdminPage.*;
import static ru.tetrasoft.rig.space.common.LoginModulePage.loginIntoModule;
import static ru.tetrasoft.rig.space.admin.pages.NewHydroclonePage.*;
import static ru.tetrasoft.rig.space.common.UrlPage.openAdminModule;

/**
 *   autor a.stupin
 */

@Epic("Модуль Admin")
public class CRUDHydrocloneTest extends BaseTest{

    @Feature("Тестирование функции создания гидроциклона")
    @Tag("create")
    @Test
    @Description("Создание гидроциклона")
    public void createHydroclone () {
        openAdminModule();
        loginIntoModule("admin", "1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewHydroclonesMenu();
        clickCreateButtonHydroclone();
        sendDataInputSerialNumber("666");
        selectModel("Falсon 4-2S16N");
        selectType("Илоотделитель");
        clickOnCheckbox();
        selectCreator("Акрос");
        sendDataInputPerformance("666");
        sendDataInputQuantityInBattery("1");
        sendDataInputStandartSize("1");
        selectOwner("COSL Drilling");
        sendDataInputComment("Для теста");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции редактирования гидроциклона")
    @Tag("update")
    @Test
    @Description("Обновления гидроциклона")
    public void updateHydroclone () {
        openAdminModule();
        loginIntoModule("admin", "1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewHydroclonesMenu();
        matCellCheckSaveResultHydroclonePage("666");
        matCellClickHydroclonePage();
        clearInputField("Серийный №");
        sendDataInputSerialNumber("Тест 666");
        clickOnButtonSave();
        checkSaveResultPopup();
    }

    @Feature("Тестирование функции удаления гидроциклона")
    @Tag("delete")
    @Test
    @Description("Удаление гидроциклона")
    public void deleteHydroclone () {
        openAdminModule();
        loginIntoModule("admin", "1");
        openNavigationMenuAdmin();
        openRigEquipmentPage();
        clickOnNewHydroclonesMenu();
        matCellCheckSaveResultHydroclonePage("Тест 666");
        matCellClickHydroclonePage();
        clickOnDeleteButton();
        matCellCheckDeleteResult("Тест 666");
    }
}