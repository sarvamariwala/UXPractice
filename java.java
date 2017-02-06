public class SessionCheckServlet extends HttpServlet {

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
    System.out.println("Request received for a check at " + new Date());
    HttpSession session = req.getSession(false);
    PrintWriter writer = resp.getWriter();
    if (session == null) {
      writer.write("false");
    } else {
      writer.write("true");
    }
    writer.flush();
  }
}
