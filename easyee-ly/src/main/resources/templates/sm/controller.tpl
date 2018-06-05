package ${pkgName}.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import ${baseControllerImport};
import ${baseServiceImport};

import ${pkgName}.criteria.${ClassName}Criteria;
import ${pkgName}.entity.${ClassName};
import ${pkgName}.service.${ClassName}Service;

 /**
 * ${ClassName} Controller, generated by EasyAuto
 * 所有Controller处理类统一继承BaseController.
 * 
 * BaseController中定义了一下内容：
 * - request, application Servlet API 
 * - 请求响应相关的JSON参数（EasyUI框架请求都是通过JSON响应） 
 * - 初始化JSON响应数据的方法（setJsonMap，setJsonMsgMap，setJsonPaginationMap(PageBean, Object...)） 
 * - 获得分页对象：super.getPageBean() 
 * 
 * @author easyproject.cn
 * @version 1.0
 */
@RestController
@RequestMapping("${ClassName}")
public class ${ClassName}Controller extends BaseController<${ClassName}, ${ClassName}Criteria> {

	public static Logger logger = LoggerFactory.getLogger(${ClassName}Controller.class);
	
	@Resource
	private ${ClassName}Service ${ClassName?uncap_first}Service;
	
	@Override
    public BaseService<${ClassName}> getService() {
        return ${ClassName?uncap_first}Service;
    }
    
	@RequestMapping("page")
	public ModelAndView page(ModelAndView mv) {
		mv.setViewName("main/${Module}/${ClassName}");
		return mv;
	}
	
}
