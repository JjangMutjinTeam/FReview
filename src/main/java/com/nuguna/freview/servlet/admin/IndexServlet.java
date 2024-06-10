package com.nuguna.freview.servlet.admin;

import com.nuguna.freview.dao.admin.MainPageDAO;
import com.nuguna.freview.dto.MainpageGongjiDTO;
import com.nuguna.freview.dto.MainpageMojipDTO;
import com.nuguna.freview.dto.MainpageRequesterDTO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/start")
public class IndexServlet extends HttpServlet {

  @Override
  public void init() throws ServletException {
  }

  @Override
  protected void service(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {

    MainPageDAO mdao = new MainPageDAO();

    ArrayList<MainpageMojipDTO> mojipPost = mdao.getMojipPostforMainPage();
    ArrayList<MainpageRequesterDTO> requesters = mdao.getRequestersForMainPage();
    ArrayList<MainpageGongjiDTO> gongji = mdao.getGongjisForMainPage();

    req.setAttribute("mojips", mojipPost);
    req.setAttribute("requesters", requesters);
    req.setAttribute("gongji", gongji);

    req.getRequestDispatcher("COMM_main.jsp").forward(req, resp);

  }

  @Override
  public void destroy() {
  }
}