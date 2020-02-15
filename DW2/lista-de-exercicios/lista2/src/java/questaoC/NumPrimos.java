/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package questaoC;

import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Int;

/**
 *
 * @author Denis Moura
 */
public class NumPrimos {
   
    public static boolean isPrimo(int number){
        
        if(number == 1 || number == 0){
            return false;
        }
        
        for(int i = 2; i < number; i++){
            
            if(number % i == 0){
                
                return false;
                
            }
            
        }
        
        return true;
        
    }
    
}
