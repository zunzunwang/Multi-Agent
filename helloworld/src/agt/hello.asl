// Agent hello in project helloworld
/**
 * 我们原始的agents将会获得所有 organisation需要的元素。
 * !start 是一个goal。
 * 一整行是一个plan
 * message是一个belif
 * 我们的目标是实现这个goal
 * 一个goal可以相信message(x);
 * 我们的目标是实现这个goal通过运行print（x）
 * x是一个变量
 * x是通过 一些agents 的belief 复合的 message(x);
 * 如果一个agent的belief是 lessage（"bom dia"）
 * 那么这个x的值就为("bom dia");
 * 如果第一个!start行运行不了 则证明这个这个agent并不相信这个message（x）
 * 之后 运行第二个
 * 
 */

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */
/**
 * 在这一行中的!start 可以被agent所阅读
 */
//+!start : message(X) <- .print(X).
+!start : message(X) <- printMsg(X).
+!start : true <- .print("hello world.").

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }

// uncomment the include below to have a agent that always complies with its organization  
{ include("$jacamoJar/templates/org-obedient.asl") }
