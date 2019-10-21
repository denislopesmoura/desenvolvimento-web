package questaoB;

import java.io.IOException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import static jdk.nashorn.internal.objects.NativeMath.round;

/**
 *
 * @author Denis Moura
 */
public class ConverteComprimento extends SimpleTagSupport {

    public double valueMin;
    public double valueMax;
    public int passo;
    public int formato;

    @Override
    public void doTag() throws IOException {

        double valueConvertido = 0;
        double value = 0;

        JspWriter out = getJspContext().getOut();

        if (this.formato == 1) {

            out.write("<tr><td><b>Kilômetros</b></td><td><b>Milhas</b></td></tr>");

        } else if (this.formato == 2) {

            out.write("<tr><td><b>Milhas</b></td><td><b>Kilômetros</b></td></tr>");

        }

        for (int i = 0; i * this.passo <= this.valueMax; i++) {

            if (this.formato == 1) {

                value = i * this.passo;
                valueConvertido = value * this.passo * 0.62137;

            } else if (this.formato == 2) {

                value = i;
                valueConvertido = value * this.passo / 0.62137;

            }

            out.write("<tr><td><b>" + String.valueOf(value) + "</b></td><td><b>" + String.valueOf(valueConvertido) + "</b></td></tr>");

        }

    }

    public void setValueMin(double valueMin) {
        this.valueMin = valueMin;
    }

    public void setValueMax(double valueMax) {
        this.valueMax = valueMax;
    }

    public void setPasso(int passo) {
        this.passo = passo;
    }

    public void setFormato(int formato) {
        this.formato = formato;
    }

}
