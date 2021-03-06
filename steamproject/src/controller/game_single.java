package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import DAO.GameDAO;
import DTO.gameDTO;

@WebServlet("/game_single")
public class game_single extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		// category에서 넘어오는 game_name값
		String game_name = request.getParameter("game_name");
		// recommand에서 넘어오는 game_name값
//		String game_name2 = (String)session.getAttribute("game_name");
		String genre = request.getParameter("genre");
		GameDAO dao = new GameDAO();
		System.out.println(game_name);
//		System.out.println(game_name2);
//		ArrayList<gameDTO> game_name2_dto = dao.gamelist(game_name2);
//		session.setAttribute("dto", game_name2_dto);
		session.setAttribute("genre", genre);
		ArrayList<gameDTO> dto = dao.gamelist(game_name);
		session.setAttribute("dto", dto);
		session.setAttribute("genre", genre);
		response.sendRedirect("templatemo_559_zay_shop/game-single.jsp");
			
	
	}

}
