package Calculator with SPARK_Mode => On is

   function Add
     (First_Operand  : Integer;
      Second_Operand : Integer) return Integer
   --  Compute the addition of First_Operand plus Second_Operand
     with Pre  => 
       (if First_Operand > 0 and Second_Operand > 0 then
          First_Operand   <= Integer'Last - Second_Operand
       )
       and
       (if First_Operand < 0 and Second_Operand < 0 then
          Second_Operand >= Integer'First - First_Operand
       ),

         Post => 
           (if First_Operand < 0 and Second_Operand >= 0 and First_Operand > Integer'First then
              (if abs(First_Operand) > Second_Operand then
                      Add'Result >= First_Operand
                        else
                       Add'Result <= Second_Operand
              )
                
           )
           and
            (if First_Operand >= 0 and Second_Operand < 0 and  Second_Operand > Integer'First then
              (if First_Operand > abs(Second_Operand) then
                      Add'Result <= First_Operand
                        else
                       Add'Result >= Second_Operand
              )
                 
                               
            ) 
             and 
               (if First_Operand >= 0 and Second_Operand >= 0 then
                  Add'Result >= First_Operand
               
               )
               and
                  (if First_Operand < 0 and Second_Operand < 0 then
                  Add'Result <= First_Operand
               
                  )
   ;
                 

       
   
   
   --  Completa esta especificacion para que podamos verificar
   --  formalmente esta funcion.

   procedure Subtract
     (First_Operand  : Integer;
      Second_Operand : Integer;
      Result         : out Integer)
   --  Using Add, compute the subtraction of First_Operand plus Second_Operand
     with Pre  => 
       
        (if First_Operand > 0 and Second_Operand < 0 then
           First_Operand <= Integer'Last + Second_Operand 
        )
       and
       (if First_Operand < 0 and Second_Operand > 0 then
          Second_Operand >= Integer'First - First_Operand
       ), 
           
         Post => 
          true; --Terminar cuando hagamos la multiplicación 
                
         
   

   --  Completa esta especificacion para que podamos verificar
   --  formalmente esta funcion.
    
end Calculator;
