(*
 *  CS164 Fall 94
 *
 *  Programming Assignment 1
 *    Implementation of a simple stack machine.
 *
 *  Skeleton file
 *)
class StackNode {
   command: String;
   next: StackNode;

   init( cmd: String , node: StackNode): StackNode {
      {
         command <-cmd;
         next <- node;
         self;
      }
   };
   getnext(): StackNode{
      {
         next;
      }
   };
   push(cmd:String):StackNode{
         let newNode : StackNode in {

            newNode <- (new StackNode).init(cmd,next);
            next <- newNode;
            newNode;
         }
      
   };
   pop():Object{

      next <- next.getnext()
      
   };
   getcommand():String{
      {
         command;
      }
   };
   setnext(node :StackNode):Object{
      next <- node
   };
};




class Main inherits A2I {

   main() : Object {

      let instring : String,
          bottomnode : StackNode,
          topnode: StackNode <- (new StackNode).init("top",bottomnode)
      in {
         
         while(true) loop{

            (new IO).out_string(">");
            instring <- (new IO).in_string();
            
            if instring = "+" then 
            {
               topnode.push(instring);
            }
            else 
               if instring = "s" then
               {
                  topnode.push(instring);
               } 
               else 
                  if instring = "d" then 
                  {
                     print(topnode);
                  }
                  else
                     if instring = "x" then
                     {
                        (new IO).out_string("stop !");
                        abort();
                     }
                     else
                        if instring = "e" then 
                        {
                           evaluate(topnode);
                        }
                        else
                        {
                           
                           topnode.push(instring);
                           
                        }
                        fi
                     fi
                  fi
               fi
            fi;
         }
         pool;
      }      
   };


   evaluate(topnode :StackNode):Object{
      let commandnode:StackNode <- topnode.getnext()
      in
      {
         if ( not(isvoid commandnode) ) then  
         {
            if commandnode.getcommand() = "+" then 
            {
               add(topnode);
            }
            else
               if commandnode.getcommand() = "s" then
               {
                  topnode.pop();
                  swap(topnode);
               }
               else
               {
                  1;
               }
                fi
            fi;
         }
         else
         {
            1;
         }
              
         fi;
      }
      
   };
    -- top ->1 -> + ->2
    -- top ->+ -> 1 ->2
   -- top ->a -> b ->next
   -- top ->b -> a ->next
   swap(topnode:StackNode):Object{

      

      let  newNode2:StackNode <-(new StackNode).init(topnode.getnext().getcommand(),topnode.getnext().getnext().getnext()),
           newNode1:StackNode <-(new StackNode).init(topnode.getnext().getnext().getcommand(),newNode2)
      in
      {
      
         --(new IO).out_string(topnode.getnext().getnext().getcommand());
         topnode.setnext(newNode1);
      }

   };
   add(node: StackNode): Object {
      let node1 : StackNode <- node.getnext().getnext(),
          node2 : StackNode <- node1.getnext(),
          node3 : StackNode <- node2.getnext(),
          tmp :String
      in 
      {

         -- a + b 
         tmp <- i2a_aux(a2i_aux(node1.getcommand())+a2i_aux(node2.getcommand()));
         node.pop();--pop "+"
         node.pop();--pop "a"
         node.pop();--pop "b"
         node.push(tmp);
      }
   };

   print(node:StackNode):Object{

      let tmp:StackNode <- node.getnext() in
      {
         while (not(isvoid tmp)) loop
         {
            (new IO).out_string(tmp.getcommand().concat("\n"));
            tmp <- tmp.getnext();
         }
         pool;

      } 

   };

   

};

-- e
-- e
-- 1
-- +
-- 2
-- s
-- d
-- e
-- e
-- d
-- e
-- +
-- 1
-- s
-- s
-- s
-- d
-- e
-- e
-- s
-- e
-- e
-- e
-- d
-- x