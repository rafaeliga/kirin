
var sentence = "All work and no play makes rafaeliga a dull boy",
    items = sentence.split(/\s+/);
    

function MyModule () {
    this.screen = null;
    this.index = 0;
}

MyModule.prototype.onLoad = function (ui) {
    this.screen = ui;
};

MyModule.prototype.onUnload = function () {
    this.screen = null;
};

MyModule.prototype.onResume = function () {
    // the screen is about to appear.
    this.screen.setTableContents(["click on add HERE"]);
    this.index = 0;
};

MyModule.prototype.onPause = function () {
    // the screen is about to go away.
};

MyModule.prototype.addNewItem = function () {
    this.screen.insertRowWithContents(this.index, items[this.index]);
    this.index = (this.index + 1) % items.length; 
    this.screen.showAlert();
};

MyModule.prototype.itemSelected = function (row) {
    this.screen.displayDetailScreenForRowAndContents(row, items[row % items.length]);
};

MyModule.prototype.nslog = function () {
    this.screen.nslog();
};

module.exports = MyModule;

