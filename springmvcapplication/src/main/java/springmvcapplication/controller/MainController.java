package springmvcapplication.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import springmvcapplication.dao.ProductDao;
import springmvcapplication.model.Product;

@Controller
public class MainController {

	@Autowired
	ProductDao productdao;
	
	@RequestMapping("/new")
	public String home() {

		return "index";
	}

	@RequestMapping("/add-product")
	public String addProduct(Model m) {
		m.addAttribute("title", "Add Product");
		return "add_product_form";
	}

	@RequestMapping(path = "processform", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {

		System.out.println(product);
		RedirectView redirectView = new RedirectView();

		this.productdao.createProduct(product);
		
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
}
