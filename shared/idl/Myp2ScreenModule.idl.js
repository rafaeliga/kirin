module.exports = {
        namespace: "br.com.rubythree.myp",
        classes: {
            "IMypMyp2ScreenModule": {
                namespace: ".shared",
                implementedBy: "javascript",
                methods: {
                    addNewItem: [],
                    itemSelected: [{index:"integer"}]
                }
            },
            "IMypMyp2Screen": {
                namespace: ".android",
                implementedBy: "native",
                methods: {
                    setTableContents: [{rows:"array"}], // of strings
                    "insertRow:WithContents:": [{index:"integer"}, {row:"string"}],
                    "displayDetailScreenForRow:AndContents:": [{index:"integer"}, {contents:"string"}]
                }
            }
        }
};