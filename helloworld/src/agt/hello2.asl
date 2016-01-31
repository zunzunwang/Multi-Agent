// Agent hello2 in project helloworld

/* Initial beliefs and rules */
msg(fr,"Bonjour").
msg(br,"Bom dia").
msg(it,"Buon giorno").
msg(us,"Good morning").

/* Initial goals */

!start.



/* Plans */








+!start : country(C) & msg(C,M) <- .print(M).
+!start : true <- .print("hello world.").


{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
{ include("$jacamoJar/templates/org-obedient.asl") }

// uncomment the include below to have a agent that always complies with its organization  
{ include("$jacamoJar/templates/org-obedient.asl") }
