package laba4;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="Calc", urlPatterns="/JavaCalc") //���������� �������� � URL
public class Calculator extends HttpServlet  {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestCalc Calculator = RequestCalc.fromRequestParameters(request);
		Calculator.setAsRequestAttributeAndCalculate(request);
		
		request.getRequestDispatcher("/Results.jsp").forward(request, response);
		
	}
	private static class RequestCalc {
		private final String first_calc;
		private final String second_calc;
		private final String third_calc;
		private final String fourth_calc;
		private double perimetr;
		
		private RequestCalc (String first, String second, String third, String fourth) {
			this.first_calc = first;
			this.second_calc = second;
			this.third_calc = third;
			this.fourth_calc = fourth;
		}
		public static RequestCalc fromRequestParameters(HttpServletRequest request) {
			return new RequestCalc(
			request.getParameter("first"),
			request.getParameter("second"),
			request.getParameter("third"),
			request.getParameter("fourth"));
		}
		public void setAsRequestAttributeAndCalculate(HttpServletRequest request) {
			request.setAttribute("first_result", first_calc);
			request.setAttribute("second_result", second_calc);
			request.setAttribute("third_result", third_calc);
			request.setAttribute("fourth_result", fourth_calc);
			
			double first_try;
			double second_try;
			double third_try;
			double fourth_try;
			
			try {
				
			first_try=Double.parseDouble(first_calc);
			second_try=Double.parseDouble(second_calc);
			third_try=Double.parseDouble(third_calc);
			fourth_try=Double.parseDouble(fourth_calc);
			}
			catch (NumberFormatException e)  {	
				first_try=0;
				second_try=0;
				third_try=0;
				fourth_try=0;
		
			}
			
		perimetr=first_try + second_try + third_try + fourth_try;
		request.setAttribute("perimetr", perimetr);
		}
		}	
}
