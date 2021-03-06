function createObject(filename, parent, data, createObjectCallback) {
    let component = Qt.createComponent(filename);

    let finishCreate = function () {
        if (component.status == Component.Ready) {
            createObjectCallback(component, parent, data)
        } else {
            throw "Error creating object";
        }
    }

    if (component.status == Component.Ready) {
        finishCreate();
    } else {
        component.statusChanged.connect(finishCreate);
    }
}
