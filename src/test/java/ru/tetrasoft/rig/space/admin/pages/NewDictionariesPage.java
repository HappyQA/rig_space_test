package ru.tetrasoft.rig.space.admin.pages;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.Selenide;
import com.codeborne.selenide.SelenideElement;
import io.qameta.allure.Step;

import static com.codeborne.selenide.Configuration.timeout;
import static com.codeborne.selenide.Selenide.*;

/**
 *   autor a.stupin
 */

public class NewDictionariesPage {

    private static SelenideElement openWells = $x("//a[@href='/admin/dictionaries/wells/place']");
    private static SelenideElement openLicenseArea = $x("//a[@href='/admin/dictionaries/wells/license-area']");
    private static SelenideElement openWellFields = $x("//a[@href='/admin/dictionaries/wells/field']");
    private static SelenideElement openProjects = $x("//a[@href='/admin/dictionaries/wells/project']");
    private static SelenideElement openPurpose = $x("//a[@href='/admin/dictionaries/wells/purpose']");
    private static SelenideElement openWellborePurpose = $x("//a[@href='/admin/dictionaries/wells/wellbore-purpose']");
    private static SelenideElement openSubsoil = $x("//a[@href='/admin/dictionaries/wells/subsoil']");
    private static SelenideElement openWellStatus = $x("//a[@href='/admin/dictionaries/wells/status']");
    private static SelenideElement openWellType = $x("//a[@href='/admin/dictionaries/wells/types']");
    private static SelenideElement openWellCategory = $x("//a[@href='/admin/dictionaries/wells/well-category']");
    private static SelenideElement openFluidType = $x("//a[@href='/admin/dictionaries/wells/well-fluid']");
    private static SelenideElement openFormation = $x("//a[@href='/admin/dictionaries/wells/formation']");
    private static SelenideElement createButton = $x("//button[@id='add-button']");
    private static SelenideElement fieldDictionaryInput = $x("//input[@id='create-input']");
    private static SelenideElement fieldSaveResult = $x("//input[@id='edit-input-1']");
    private static SelenideElement fieldSaveResultWellStatus = $x("//input[@id='edit-input-7']");
    private static SelenideElement fieldSaveResultRigStatus = $x("//input[@id='edit-input-3']");
    private static SelenideElement fieldSaveResultRigType = $x("//input[@id='edit-input-3']");
    private static SelenideElement tabWells = $x("//a[@href='/admin/dictionaries/wells']");
    private static SelenideElement tabRigs = $x("//a[@href='/admin/dictionaries/rigs']");
    private static SelenideElement tabCrews = $x("//a[@href='/admin/dictionaries/crews']");
    private static SelenideElement tabEquipment = $x("//a[@href='/admin/dictionaries/equipment']");
    private static SelenideElement openRigType = $x("//a[@href='/admin/dictionaries/rigs/rig-types']");
    private static SelenideElement openRigStatus = $x("//a[@href='/admin/dictionaries/rigs/rig-status']");
    private static SelenideElement openRigOwners = $x("//a[@href='/admin/dictionaries/rigs/rig-owners']");
    private static SelenideElement openCrewStatus = $x("//a[@href='/admin/dictionaries/crews/drilling-crew-status']");
    private static SelenideElement openCrewCompany = $x("//a[@href='/admin/dictionaries/crews/drilling-contractor-company']");
    private static SelenideElement fieldSaveResultCrewStatus = $x("//input[@id='edit-input-3']");
    private static SelenideElement openEquipmentPumpModel = $x("//a[@href='/admin/dictionaries/equipment/pump-model']");
    private static SelenideElement openEquipmentShakerModel = $x("//a[@href='/admin/dictionaries/equipment/shaker-model']");
    private static SelenideElement openEquipmentHydrocloneModel = $x("//a[@href='/admin/dictionaries/equipment/hydroclone-model']");
    private static SelenideElement openEquipmentDegasserModel = $x("//a[@href='/admin/dictionaries/equipment/degasser-model']");
    private static SelenideElement openEquipmentBopModel = $x("//a[@href='/admin/dictionaries/equipment/bop-model']");
    private static SelenideElement openEquipmentCentrifugeModel = $x("//a[@href='/admin/dictionaries/equipment/centrifuge-model']");
    private static SelenideElement openEquipmentBopComponentModel = $x("//a[@href='/admin/dictionaries/equipment/bop-component-model']");
    private static SelenideElement openEquipmentAggregateManufacturer = $x("//a[@href='/admin/dictionaries/equipment/aggregate-manufacturer']");
    private static SelenideElement openEquipmentShakerType = $x("//a[@href='/admin/dictionaries/equipment/shaker-type']");
    private static SelenideElement openEquipmentHydrocloneType = $x("//a[@href='/admin/dictionaries/equipment/hydroclone-type']");
    private static SelenideElement openEquipmentDegasserType = $x("//a[@href='/admin/dictionaries/equipment/degasser-type']");
    private static SelenideElement openEquipmentPitType = $x("//a[@href='/admin/dictionaries/equipment/pits-type']");
    private static SelenideElement openEquipmentCentrifugeType = $x("//a[@href='/admin/dictionaries/equipment/centrifuge-type']");
    private static SelenideElement openEquipmentBopComponentType = $x("//a[@href='/admin/dictionaries/equipment/bop-component-type']");

    /** Компоненты справочниа Скважины */

    @Step("Открытие словаря - Скважины - Площади")
    public static void openWellsDictionary () {
        $(openWells).click();
    }

    @Step("Открытие словаря - Скважины - Лицензионные участки")
    public static void openWellsDictionaryLicenseAreas () {
        $(openLicenseArea).click();
    }

    @Step("Открытие словаря - Скважины - Месторождения")
    public static void openWellsDictionaryFields () {
        $(openWellFields).click();
    }

    @Step("Открытие словаря - Скважины - Проекты")
    public static void openWellsDictionaryProjects () {
        $(openProjects).click();
    }

    @Step("Открытие словаря - Скважины - Назначение скважин")
    public static void openWellsDictionaryPurpose () {
        $(openPurpose).click();
    }

    @Step("Открытие словаря - Скважины - Назначение стволов")
    public static void openWellsDictionaryWellborePurpose () {
        $(openWellborePurpose).click();
    }

    @Step("Открытие словаря - Скважины - Недропользователи")
    public static void openWellsDictionarySubsoil () {
        $(openSubsoil).click();
    }

    @Step("Открытие словаря - Скважины - Статусы")
    public static void openWellsDictionaryStatus () {
        $(openWellStatus).click();
    }

    @Step("Открытие словаря - Скважины - Типы")
    public static void openWellsDictionaryType () {
        $(openWellType).click();
    }

    @Step("Открытие словаря - Скважины - Категории скважин по ГНВП")
    public static void openWellsDictionaryWellCategory () {
        $(openWellCategory).click();
    }

    @Step("Открытие словаря - Скважины - Типы флюидов")
    public static void openWellsDictionaryFluidsType () {
        $(openFluidType).click();
    }

    @Step("Открытие словаря - Скважины - Пласты")
    public static void openWellsDictionaryFormation () {
        $(openFormation).click();
    }

    /** Взаимодействие c табами справочника */

    @Step("Открытие вкладки Скважины")
    public static void openWellsDictionaryTab () {
        $(tabWells).click();
    }

    @Step("Открытие вкладки Буровые установки")
    public static void openRigDictionaryTab () {
        $(tabRigs).click();
    }

    @Step("Открытие вкладки Буровые бригады")
    public static void openCrewsDictionaryTab () {
        $(tabCrews).click();
    }

    @Step("Открытие вкладки Оборудование")
    public static void openEquipmentDictionaryTab () {
        $(tabEquipment).click();
    }

    /** Компоненты справочника Буровые установки */

    @Step("Открытие словаря - Буровые установки - Типы")
    public static void openRigTypeDictionary () {
        $(openRigType).click();
    }

    @Step("Открытие словаря - Буровые установки - Статусы")
    public static void openRigStatusDictionary () {
        $(openRigStatus).click();
    }

    @Step("Открытие словаря - Буровые установки - Компании-владельцы")
    public static void openRigOwnerDictionary () {
        $(openRigOwners).click();
    }

    /** Компоненты справочника Буровые бригады */

    @Step("Открытие словаря  - Буровые бригады - Статусы")
    public static void openCrewStatusDictionary () {
        $(openCrewStatus).click();
    }

    @Step("Открытие словаря  - Буровые бригады - Компании")
    public static void openRigCompanyDictionary () {
        $(openCrewCompany).click();
    }

    @Step("Проверка что данные сохранились Буровые бригады - Статус")
    public static void checkSaveResultCrewStatus (String value) {
        $(fieldSaveResultCrewStatus).shouldHave(Condition.value(value));
    }

    /** Компоненты справочника Оборудование */

    @Step("Открытие словаря  - Оборудование - Модели буровых насосов")
    public static void openEquipmentPumpModelDictionary () {
        $(openEquipmentPumpModel).click();
    }

    @Step("Открытие словаря  - Оборудование - Модели вибрационных сит")
    public static void openEquipmentShakerModelDictionary () {
        $(openEquipmentShakerModel).click();
    }

    @Step("Открытие словаря  - Оборудование - Модели гидроциклонов")
    public static void openEquipmentHydrocloneModelDictionary () {
        $(openEquipmentHydrocloneModel).click();
    }

    @Step("Открытие словаря  - Оборудование - Модели дегазаторов")
    public static void openEquipmentDegasserModelDictionary () {
        $(openEquipmentDegasserModel).click();
    }

    @Step("Открытие словаря  - Оборудование - Модели ПВО")
    public static void openEquipmentBopModelDictionary () {
        $(openEquipmentBopModel).click();
    }

    @Step("Открытие словаря  - Оборудование - Модели центрифуг")
    public static void openEquipmentCentrifugesModelDictionary () {
        $(openEquipmentCentrifugeModel).click();
    }

    @Step("Открытие словаря  - Оборудование - Модели элементов ПВО")
    public static void openEquipmentBopComponentModelDictionary () {
        $(openEquipmentBopComponentModel).click();
    }

    @Step("Открытие словаря  - Оборудование - Производители оборудования")
    public static void openEquipmentAggregateManufacturerDictionary () {
        $(openEquipmentAggregateManufacturer).click();
    }

    @Step("Открытие словаря  - Оборудование - Типы вибрационных сит")
    public static void openEquipmentShakerTypeDictionary () {
        $(openEquipmentShakerType).click();
    }

    @Step("Открытие словаря  - Оборудование - Типы гидроциклонов")
    public static void openEquipmentHydrocloneTypeDictionary () {
        $(openEquipmentHydrocloneType).click();
    }

    @Step("Открытие словаря  - Оборудование - Типы дегазаторов")
    public static void openEquipmentDeggaserTypeDictionary () {
        $(openEquipmentDegasserType).click();
    }

    @Step("Открытие словаря  - Оборудование - Типы емкостей")
    public static void openEquipmentPitTypeDictionary () {
        $(openEquipmentPitType).click();
    }

    @Step("Открытие словаря  - Оборудование - Типы центрифуг")
    public static void openEquipmentCentrifugesTypeDictionary () {
        $(openEquipmentCentrifugeType).click();
    }

    @Step("Открытие словаря  - Оборудование - Типы элементов ПВО")
    public static void openEquipmentBopComponentTypeDictionary () {
        $(openEquipmentBopComponentType).click();
    }

    /** Взаимодействие со справочниками, кнопки, проверка результата */

    @Step("Нажатие кнопки создания")
    public static void clickCreateButton () {
        $(createButton).click();
    }

    @Step("Ввод данных записи в справочник")
    public static void sendDataInputDictionary (String value) {
        timeout = 10000;
        $(fieldDictionaryInput).shouldBe(Condition.visible);
        $(fieldDictionaryInput).sendKeys(value);
    }

    @Step("Проверка что данные сохранились")
    public static void checkSaveResult (String value) {
        $(fieldSaveResult).shouldHave(Condition.value(value));
    }

    @Step("Проверка что данные сохранились Скважины - Статус")
    public static void checkSaveResultWellsStatus (String value) {
        $(fieldSaveResultWellStatus).shouldHave(Condition.value(value));
    }

    @Step("Проверка что данные сохранились Буровые установки - Статус")
    public static void checkSaveResultRigsStatus (String value) {
        $(fieldSaveResultRigStatus).shouldHave(Condition.value(value));
    }

    @Step("Проверка что данные сохранились Скважины - Типы")
    public static void checkSaveResultWellsType (String value) {
        $(fieldSaveResultRigType).shouldHave(Condition.value(value));
    }
}

