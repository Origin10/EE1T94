package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.ProductBean;
import model.ProductService;

@WebServlet(
		urlPatterns={"/pages/product.controller"}
)
public class ProductServlet extends HttpServlet {
	private SimpleDateFormat sdFormat;
	private ProductService productService;
	@Override
	public void init() throws ServletException {
		sdFormat = new SimpleDateFormat("yyyy-MM-dd");
		WebApplicationContext context =
				WebApplicationContextUtils.getWebApplicationContext(this.getServletContext());
		productService = (ProductService) context.getBean("productService");
	}
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
//接收資料
		String temp1 = request.getParameter("id");
		String name = request.getParameter("name");
		String temp2 = request.getParameter("price");
		String temp3 = request.getParameter("make");
		String temp4 = request.getParameter("expire");
		String prodaction = request.getParameter("prodaction");
		
//驗證資料
		Map<String, String> errors = new HashMap<String, String>();
		request.setAttribute("errors", errors);
		
		if("Insert".equals(prodaction) || "Update".equals(prodaction) || "Delete".equals(prodaction)) {
			if(temp1==null || temp1.length()==0) {
				errors.put("id", "請輸入Id以便執行"+prodaction);
			}
		}
		
//轉換資料
		int id = 0;
		if (temp1!=null && temp1.length()!=0) {
			try {
				id = Integer.parseInt(temp1);
			} catch (NumberFormatException e) {
				e.printStackTrace();
				errors.put("id", "Id欄位請輸入整數");
			}
		}
		
		double price = 0;
		if (temp2!=null && temp2.length()!=0) {
			try {
				price = Double.parseDouble(temp2);
			} catch (NumberFormatException e) {
				e.printStackTrace();
				errors.put("price", "Price欄位請輸入整數");
			}
		}

		java.util.Date make = null;
		if (temp3!=null && temp3.length()!=0) {
			try {
				make = sdFormat.parse(temp3);
			} catch (ParseException e) {
				e.printStackTrace();
				errors.put("make", "Make必須是擁有YYYY-MM-DD格式的日期");
			} 
		}
		
		int expire = 0;
		if (temp4!=null && temp4.length()!=0) {
			try {
				expire = Integer.parseInt(temp4);
			} catch (NumberFormatException e) {
				e.printStackTrace();
				errors.put("expire", "Expire欄位請輸入整數");
			}
		}
		
		if(errors!=null && !errors.isEmpty()) {
			request.getRequestDispatcher(
					"/pages/product.jsp").forward(request, response);
			return;
		}
		
//呼叫Model
		ProductBean bean = new ProductBean();
		bean.setId(id);
		bean.setName(name);
		bean.setPrice(price);
		bean.setMake(make);
		bean.setExpire(expire);

//根據Model執行結果呼叫View
		if("Select".equals(prodaction)) {
			List<ProductBean> result = productService.select(bean);
			request.setAttribute("select", result);
			request.getRequestDispatcher(
					"/pages/display.jsp").forward(request, response);
		} else if("Insert".equals(prodaction)) {
			ProductBean result = productService.insert(bean);
			if(result==null) {
				errors.put("action", "Insert失敗");
			} else {
				request.setAttribute("insert", result);
			}
			request.getRequestDispatcher(
					"/pages/product.jsp").forward(request, response);
		} else if("Update".equals(prodaction)) {
			ProductBean result = productService.update(bean);
			if(result==null) {
				errors.put("action", "Update失敗");
			} else {
				request.setAttribute("update", result);
			}
			request.getRequestDispatcher(
					"/pages/product.jsp").forward(request, response);
		} else if("Delete".equals(prodaction)) {
			boolean result = productService.delete(bean);
			if(result) {
				request.setAttribute("delete", 1);
			} else {
				request.setAttribute("delete", 0);
			}
			request.getRequestDispatcher(
					"/pages/product.jsp").forward(request, response);
		} else {
			errors.put("action", "Unknown Action:"+prodaction);
			request.getRequestDispatcher(
					"/pages/product.jsp").forward(request, response);
		}
	}
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}
}
