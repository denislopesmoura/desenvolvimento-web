/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package questaoA;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;

/**
 *
 * @author Denis Moura
 */
public class FormatarNum extends BodyTagSupport{
    
    public String numDocumento = "";
    
    public void setNumDocumento(String numDocumento) {
        this.numDocumento = numDocumento;
    }
    
    @Override
    public int doStartTag(){
        
        JspWriter out = pageContext.getOut();
        
        if(this.numDocumento.length() == 11){
            
            try {
                out.println("<div class=\"container justify-content-center\">"
                        + "<h3>O Valor do CPF é: " + formatarCpf(numDocumento) + "</h3></div>");
            } catch (IOException ex) {
                Logger.getLogger(FormatarNum.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }else if(this.numDocumento.length() == 14){
            
            try {
                out.println("<div class=\"container justify-content-center\">"
                        + "<h3>O Valor do CNPJ é: " +formatarCnpj(numDocumento)+ "</h3><div>" );
            } catch (IOException ex) {
                Logger.getLogger(FormatarNum.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
            
        
        return SKIP_BODY;
    }
    
    public String formatarCpf(String numDocumento){
        
        return numDocumento.substring(0, 3) + "." + numDocumento.substring(3, 6) + "." + numDocumento.substring(6, 9) + "-" + numDocumento.substring(6, 9);
    }
    
    public String formatarCnpj(String numDocumento){
        
        return numDocumento.substring(0, 2) + "." + numDocumento.substring(2, 5) + "." + numDocumento.substring(5, 8) + "/" + numDocumento.substring(8, 12) + "-" + numDocumento.substring(12, 14);
    }
    
    
    
}
