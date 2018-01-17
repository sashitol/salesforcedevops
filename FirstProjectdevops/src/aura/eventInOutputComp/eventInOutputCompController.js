({
	answerMessage : function(component, event, helper) {
		var text=event.getParam("text");
        component.set("v.text",text);
		
	}
})