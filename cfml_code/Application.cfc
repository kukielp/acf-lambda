component {

	this.name="serverless";
	this.applicationTimeout = CreateTimeSpan(10, 0, 0, 0); //10 days
	this.sessionManagement=false;
	this.clientManagement=false;
	this.setClientCookies=false;
	
	public string function serverlessEvent(any event, any context) {
		writeOutput(context.getAwsRequestId())
		return "Hello from Lambda CFML Handler"
	}

	function onApplicationStart() {
		application.counter = 0;
		return true;
	}

}