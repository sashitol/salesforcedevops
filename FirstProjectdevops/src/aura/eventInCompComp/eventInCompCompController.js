({
	sendMessage : function(component, event, helper) {
		var id = event.getSource().getLocalId();
        var text = id=="1" ?"hellooooo"  :(id=="2" ? "GoodByeeee" :"");
        var aurat=$A.get("e.c:messgaeEvent");
        aurat.setParams({text:text}).fire();
	}
})