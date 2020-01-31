package com.project.cntr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.serv.AjaxServ;
import com.project.serv.PackageAjaxServ;

@Controller
public class AjaxController {

	
	@Autowired
	private AjaxServ ajaxService;
	
	@Autowired
	private PackageAjaxServ packageAjaxServ;
	
	
	@RequestMapping(value="/check_username",method = RequestMethod.GET)
	@ResponseBody
	public String checkAvailability(@RequestParam String userName)
	{
		if(ajaxService.isUsernameExist(userName))
			return "Username already exist";
		else if(userName == "")
			return "username Cannot blank";
		else
			return "";
	}
	
	@RequestMapping(value="/check_packageId",method = RequestMethod.GET)
	@ResponseBody
	public String checkAvailabilitypid(@RequestParam String packageId)
	{
		System.out.println(packageId);
		if(packageAjaxServ.isPackageIdExist(packageId))
			return "Package Id already exist";
		else if(packageId == "")
			return "Package Id Cannot blank";
		else
			return "";
	
	}
}
