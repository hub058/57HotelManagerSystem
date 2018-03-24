package cn.control;

import java.util.List;

import javax.annotation.Resource;
import javax.swing.JOptionPane;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.entity.Evaluate;
import cn.service.WeddingEvaluateService;
import cn.service.Imp.WeddingEvaluateServiceImp;

@Controller
public class evaluateController {
	@Resource
	private WeddingEvaluateServiceImp imp;
	
	//新增评价
	@RequestMapping("/appEvaluate")
	public String appEvaluate(@RequestParam("cname")String csex,@RequestParam("ctel")String ctel,@RequestParam("evaluateName")String evaluateName,@RequestParam("alias")String alias){
		int appEvaluate = imp.appEvaluate(csex, ctel, evaluateName,alias);
		if (appEvaluate >0) {
			JOptionPane.showMessageDialog(null, "谢谢你的评价");
		}else {
			JOptionPane.showMessageDialog(null, "评价失败");
		}
		return "About Us";
	}
	
	//所有评价
	@RequestMapping("/selectEvaluate")
	public String selectEvaluate(Model model){
		
		List<Evaluate> list = imp.selectEvaluate();
		model.addAttribute("listEvaluate",list);
		return "";
	}
	
	@RequestMapping("/wedding")
	public String wedding(){
		
		return "wedding";
	}
	
}
