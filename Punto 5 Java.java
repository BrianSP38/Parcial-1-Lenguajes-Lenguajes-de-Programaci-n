import java.util.*;

public class MaclaurinVisitor extends MaclaurinBaseVisitor<Double> {

    // Visitamos la regla "prog" definida en la gramática
    @Override
    public Double visitProg(MaclaurinParser.ProgContext ctx) {
        // Tomamos los dos números de entrada:
        int x = Integer.parseInt(ctx.NUM(0).getText());
        int n = Integer.parseInt(ctx.NUM(1).getText());

        double sum = 0;

        // Calcular la suma de los n primeros términos de la serie de Maclaurin
        for (int i = 0; i <= n; i++) {
            sum += Math.pow(x, i) / factorial(i);
        }

        // Imprimir el resultado aproximado
        System.out.println("Aproximación e^" + x + " con " + n + " términos = " + sum);

        return sum;
    }

    // Función auxiliar para calcular factorial de i (i!)
    private double factorial(int n) {
        if (n == 0) return 1;
        double fact = 1;
        for (int i = 1; i <= n; i++) fact *= i;
        return fact;
    }
}
