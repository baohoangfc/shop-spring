package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import constant.Defines;
import dao.ContactDao;

@Controller
@RequestMapping("admin/contact")
public class AdminContactController {
	@Autowired
	private ContactDao contactDao;
	
	@RequestMapping(value={"{page}",""})
	public String index(@PathVariable(value="page",required=false) Integer page,ModelMap modelMap) {
		if(page == null) {
			page = 1;
		}
		int sumPage = (int)(Math.ceil((float)contactDao.countContact()/Defines.ROW_COUNT));
		int offset = (page - 1)*Defines.ROW_COUNT;
		modelMap.addAttribute("listContact", contactDao.getItems(offset));
		modelMap.addAttribute("sumPage", sumPage);
		modelMap.addAttribute("page", page);
		return "admin.contact.index";
	}
	
	/*@RequestMapping(value="del-contact",method=RequestMethod.POST)
	public String delContact(HttpServletRequest request,RedirectAttributes ra) {
		
		String[] selected = request.getParameterValues("selected");
		
		if(selected == null) {
			return "redirect:/admin/contact";
		} else {
			int dem = 0;
			for (String string : selected) {
				int id = Integer.parseInt(string);
				if(contactDao.delItem(id) > 0) {
					dem++;
				}
			}
			
			if(dem == selected.length) {
				ra.addFlashAttribute("msg", "Xóa tin thành công");
				return "redirect:/admin/contact";
			} else {
				ra.addFlashAttribute("msg", "Có lỗi khi xóa");
				return "redirect:/admin/contact";
			}
			
		}
		
	}*/
}
