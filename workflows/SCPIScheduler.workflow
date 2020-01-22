{
	"contents": {
		"1af63425-ba7f-415f-b377-95e5591042e3": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "scpischeduler",
			"subject": "SCPIScheduler",
			"name": "SCPIScheduler",
			"lastIds": "2b2a6a89-97e2-43dc-845b-672767c97358",
			"events": {
				"3d5bb5fb-bf4a-44b5-88b5-56a6ea63b777": {
					"name": "StartEvent1"
				},
				"80758c9e-5380-43f1-94d2-cf4b7c39eaa5": {
					"name": "5MinsDelay"
				},
				"ad28a011-0b52-4c31-b396-0678c22e543b": {
					"name": "EndEvent2"
				}
			},
			"activities": {
				"75978898-8e65-4ab7-9ae4-cdad89e34467": {
					"name": "QuerySCPI"
				},
				"a7b4c3a0-f439-492e-972c-1c1292ca0b78": {
					"name": "Extract&Compare"
				},
				"8d6415eb-ab16-49ac-88b4-48ca52de2da3": {
					"name": "QuerySCPI2"
				},
				"b72dcfd0-0ee5-4dc3-87f7-877a54b946eb": {
					"name": "PushToApps"
				},
				"83aab813-3f42-4455-ae02-2c2030730327": {
					"name": "ParallelGateway2"
				}
			},
			"sequenceFlows": {
				"0421e2ed-bb66-4fa1-9217-74e30274ee1e": {
					"name": "SequenceFlow1"
				},
				"c9cd153e-c5eb-4133-a556-f770e778096d": {
					"name": "SequenceFlow7"
				},
				"863a8a3a-f2ba-4a51-bafb-310a2ad377e4": {
					"name": "SequenceFlow8"
				},
				"5f6dcf78-4f4c-4544-b37e-63495ee20c45": {
					"name": "SequenceFlow9"
				},
				"4cf23991-c585-4c21-bbe3-d92d751f5dab": {
					"name": "SequenceFlow18"
				},
				"edde1606-541f-4b79-bf2f-3b97731fc446": {
					"name": "SequenceFlow19"
				},
				"756ac60e-5051-46a4-8818-ba703b2aea33": {
					"name": "SequenceFlow20"
				},
				"096b6295-04a4-4402-a780-c880b00ed43c": {
					"name": "SequenceFlow21"
				}
			},
			"diagrams": {
				"eac058ef-c2b7-4d3b-adef-7da4a40372ea": {}
			}
		},
		"3d5bb5fb-bf4a-44b5-88b5-56a6ea63b777": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"80758c9e-5380-43f1-94d2-cf4b7c39eaa5": {
			"classDefinition": "com.sap.bpm.wfs.IntermediateCatchEvent",
			"id": "intermediatetimerevent2",
			"name": "5MinsDelay",
			"eventDefinitions": {
				"b243b797-71a8-4f61-a7b5-69b96139a90d": {}
			}
		},
		"ad28a011-0b52-4c31-b396-0678c22e543b": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2"
		},
		"75978898-8e65-4ab7-9ae4-cdad89e34467": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "SCPI_ODATA",
			"path": "/MessageProcessingLogs?$filter=Status eq 'FAILED'",
			"httpMethod": "GET",
			"responseVariable": "${context.logData1}",
			"id": "servicetask1",
			"name": "QuerySCPI",
			"apiReference": "43df8fd5-6cdb-44a0-8e86-3c2b2a26f726"
		},
		"a7b4c3a0-f439-492e-972c-1c1292ca0b78": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SCPIScheduler/extract.js",
			"id": "scripttask1",
			"name": "Extract&Compare"
		},
		"8d6415eb-ab16-49ac-88b4-48ca52de2da3": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "SCPI_ODATA",
			"path": "/MessageProcessingLogs?$filter=Status eq 'FAILED'",
			"httpMethod": "GET",
			"responseVariable": "${context.logData2}",
			"id": "servicetask2",
			"name": "QuerySCPI2",
			"apiReference": "90f8ed04-59a9-40e2-bfdb-d27570e08893"
		},
		"b72dcfd0-0ee5-4dc3-87f7-877a54b946eb": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "PushToApps",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/scpischeduler/errorlist/webapp/errorlist",
			"recipientUsers": "System",
			"userInterfaceParams": [],
			"id": "usertask1",
			"name": "PushToApps"
		},
		"83aab813-3f42-4455-ae02-2c2030730327": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway2",
			"name": "ParallelGateway2"
		},
		"0421e2ed-bb66-4fa1-9217-74e30274ee1e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "3d5bb5fb-bf4a-44b5-88b5-56a6ea63b777",
			"targetRef": "75978898-8e65-4ab7-9ae4-cdad89e34467"
		},
		"c9cd153e-c5eb-4133-a556-f770e778096d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "75978898-8e65-4ab7-9ae4-cdad89e34467",
			"targetRef": "80758c9e-5380-43f1-94d2-cf4b7c39eaa5"
		},
		"863a8a3a-f2ba-4a51-bafb-310a2ad377e4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "80758c9e-5380-43f1-94d2-cf4b7c39eaa5",
			"targetRef": "8d6415eb-ab16-49ac-88b4-48ca52de2da3"
		},
		"5f6dcf78-4f4c-4544-b37e-63495ee20c45": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "8d6415eb-ab16-49ac-88b4-48ca52de2da3",
			"targetRef": "a7b4c3a0-f439-492e-972c-1c1292ca0b78"
		},
		"4cf23991-c585-4c21-bbe3-d92d751f5dab": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "a7b4c3a0-f439-492e-972c-1c1292ca0b78",
			"targetRef": "83aab813-3f42-4455-ae02-2c2030730327"
		},
		"edde1606-541f-4b79-bf2f-3b97731fc446": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "SequenceFlow19",
			"sourceRef": "83aab813-3f42-4455-ae02-2c2030730327",
			"targetRef": "b72dcfd0-0ee5-4dc3-87f7-877a54b946eb"
		},
		"756ac60e-5051-46a4-8818-ba703b2aea33": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow20",
			"name": "SequenceFlow20",
			"sourceRef": "83aab813-3f42-4455-ae02-2c2030730327",
			"targetRef": "75978898-8e65-4ab7-9ae4-cdad89e34467"
		},
		"096b6295-04a4-4402-a780-c880b00ed43c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "SequenceFlow21",
			"sourceRef": "b72dcfd0-0ee5-4dc3-87f7-877a54b946eb",
			"targetRef": "ad28a011-0b52-4c31-b396-0678c22e543b"
		},
		"eac058ef-c2b7-4d3b-adef-7da4a40372ea": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"b90e5263-9f86-4000-9345-0ed193e68c23": {},
				"2272946d-4b2f-42a1-94c1-cf7c09730ad0": {},
				"bfa330d6-b67c-4a67-b92a-00600d193161": {},
				"05f6b8e1-744a-4653-b9e0-308b8417b2e0": {},
				"c3e7c1e5-501e-4d05-966c-6f6c8d30554d": {},
				"dd3136cc-7b14-4b63-9dd5-9bff5a321b34": {},
				"bcd58072-4b4a-4afe-ac64-230bbf0ae844": {},
				"6746ae5c-50cb-4b69-85c9-197715ffed12": {},
				"916e47de-3209-4bd0-92e4-42f4295fa227": {},
				"af5ae4b5-d32e-485f-ae57-b6ac5c658bfd": {},
				"0e47e527-2cf4-4b86-818a-a5f6c0441c7e": {},
				"77c077ce-2fee-48ad-9a06-ba2593a60de4": {},
				"3300f5c0-5478-4c53-8ac4-43161f8b3e23": {},
				"efd2e0d0-f049-43c1-abdc-54bebaa5b52e": {},
				"58aad6cf-7302-4120-9a95-ce68108a068d": {},
				"0d2e50e0-92f0-45cf-93ae-0c77e57f9700": {}
			}
		},
		"b243b797-71a8-4f61-a7b5-69b96139a90d": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT5M",
			"id": "timereventdefinition2"
		},
		"b90e5263-9f86-4000-9345-0ed193e68c23": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "3d5bb5fb-bf4a-44b5-88b5-56a6ea63b777"
		},
		"2272946d-4b2f-42a1-94c1-cf7c09730ad0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,117 231,117",
			"sourceSymbol": "b90e5263-9f86-4000-9345-0ed193e68c23",
			"targetSymbol": "bfa330d6-b67c-4a67-b92a-00600d193161",
			"object": "0421e2ed-bb66-4fa1-9217-74e30274ee1e"
		},
		"bfa330d6-b67c-4a67-b92a-00600d193161": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 181,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "75978898-8e65-4ab7-9ae4-cdad89e34467"
		},
		"05f6b8e1-744a-4653-b9e0-308b8417b2e0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 518,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "a7b4c3a0-f439-492e-972c-1c1292ca0b78"
		},
		"c3e7c1e5-501e-4d05-966c-6f6c8d30554d": {
			"classDefinition": "com.sap.bpm.wfs.ui.IntermediateCatchEventSymbol",
			"x": 310,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "80758c9e-5380-43f1-94d2-cf4b7c39eaa5"
		},
		"dd3136cc-7b14-4b63-9dd5-9bff5a321b34": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "231,117 326,117",
			"sourceSymbol": "bfa330d6-b67c-4a67-b92a-00600d193161",
			"targetSymbol": "c3e7c1e5-501e-4d05-966c-6f6c8d30554d",
			"object": "c9cd153e-c5eb-4133-a556-f770e778096d"
		},
		"bcd58072-4b4a-4afe-ac64-230bbf0ae844": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "326,117 416,117",
			"sourceSymbol": "c3e7c1e5-501e-4d05-966c-6f6c8d30554d",
			"targetSymbol": "6746ae5c-50cb-4b69-85c9-197715ffed12",
			"object": "863a8a3a-f2ba-4a51-bafb-310a2ad377e4"
		},
		"6746ae5c-50cb-4b69-85c9-197715ffed12": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 366,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "8d6415eb-ab16-49ac-88b4-48ca52de2da3"
		},
		"916e47de-3209-4bd0-92e4-42f4295fa227": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "416,118 568,118",
			"sourceSymbol": "6746ae5c-50cb-4b69-85c9-197715ffed12",
			"targetSymbol": "05f6b8e1-744a-4653-b9e0-308b8417b2e0",
			"object": "5f6dcf78-4f4c-4544-b37e-63495ee20c45"
		},
		"af5ae4b5-d32e-485f-ae57-b6ac5c658bfd": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 822,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "b72dcfd0-0ee5-4dc3-87f7-877a54b946eb"
		},
		"0e47e527-2cf4-4b86-818a-a5f6c0441c7e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 697,
			"y": 96,
			"object": "83aab813-3f42-4455-ae02-2c2030730327"
		},
		"77c077ce-2fee-48ad-9a06-ba2593a60de4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "568,117.5 718,117.5",
			"sourceSymbol": "05f6b8e1-744a-4653-b9e0-308b8417b2e0",
			"targetSymbol": "0e47e527-2cf4-4b86-818a-a5f6c0441c7e",
			"object": "4cf23991-c585-4c21-bbe3-d92d751f5dab"
		},
		"3300f5c0-5478-4c53-8ac4-43161f8b3e23": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "718,117 842,117",
			"sourceSymbol": "0e47e527-2cf4-4b86-818a-a5f6c0441c7e",
			"targetSymbol": "af5ae4b5-d32e-485f-ae57-b6ac5c658bfd",
			"object": "edde1606-541f-4b79-bf2f-3b97731fc446"
		},
		"efd2e0d0-f049-43c1-abdc-54bebaa5b52e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "718,117 718,41 235,41 235,104",
			"sourceSymbol": "0e47e527-2cf4-4b86-818a-a5f6c0441c7e",
			"targetSymbol": "bfa330d6-b67c-4a67-b92a-00600d193161",
			"object": "756ac60e-5051-46a4-8818-ba703b2aea33"
		},
		"58aad6cf-7302-4120-9a95-ce68108a068d": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1008.5,
			"y": 95.5,
			"width": 35,
			"height": 35,
			"object": "ad28a011-0b52-4c31-b396-0678c22e543b"
		},
		"0d2e50e0-92f0-45cf-93ae-0c77e57f9700": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "872,115.5 1009,115.5",
			"sourceSymbol": "af5ae4b5-d32e-485f-ae57-b6ac5c658bfd",
			"targetSymbol": "58aad6cf-7302-4120-9a95-ce68108a068d",
			"object": "096b6295-04a4-4402-a780-c880b00ed43c"
		},
		"2b2a6a89-97e2-43dc-845b-672767c97358": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 2,
			"hubapireference": 2,
			"sequenceflow": 21,
			"startevent": 1,
			"intermediatetimerevent": 2,
			"endevent": 2,
			"usertask": 1,
			"servicetask": 2,
			"scripttask": 1,
			"exclusivegateway": 1,
			"parallelgateway": 2
		},
		"43df8fd5-6cdb-44a0-8e86-3c2b2a26f726": {
			"classDefinition": "com.sap.bpm.wfs.HubAPIReference",
			"apiPackage": "undefined",
			"api": "MessageProcessingLogs",
			"apiName": "Message Processing Logs",
			"id": "hubapireference1"
		},
		"90f8ed04-59a9-40e2-bfdb-d27570e08893": {
			"classDefinition": "com.sap.bpm.wfs.HubAPIReference",
			"apiPackage": "undefined",
			"api": "MessageProcessingLogs",
			"apiName": "Message Processing Logs",
			"id": "hubapireference2"
		}
	}
}