var logdata1 = $.context.logData1; 
var logdata2 = $.context.logData2; 
var logdata3 = [];

if(logdata1.d.results.length === logdata2.d.results.length){
	logdata3 = [];
}else{
	logdata3 = logdata2.d.results.slice(logdata1.d.results.length);
}
$.context.logdata3 = logdata3;