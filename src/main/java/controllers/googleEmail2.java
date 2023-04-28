package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/googleEmail")
public class googleEmail2 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf8");
		String cmd = request.getRequestURI();




		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
	}


	//		switch (com) {

	//		
	//
	//		case "/confirmEmail.four":
	//			command = new DupleEmailCheckCommand();
	//			command.execute(request, response);
	//			viewPage = "confirmEmail.jsp";
	//			break;
	//
	//
	//
	//		}
	//
	//		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	//		dispatcher.forward(request, response);
	//
	//	}	
	//}
	//
	//public class DupleEmailCheckCommand implements Command {
	//
	//	@Override
	//	public void execute(HttpServletRequest request, HttpServletResponse response) {
	//		//중복체크
	//		String email = request.getParameter("email");
	//		Dao_Login dao = new Dao_Login();
	//		String result = dao.emailDupleCheck(email);
	//		
	//		request.setAttribute("emailDupleCheckResult", result);
	//		request.setAttribute("email", email);
	//	}
	//


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
