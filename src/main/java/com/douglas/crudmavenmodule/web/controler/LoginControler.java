package com.douglas.crudmavenmodule.web.controler;

import com.douglas.crudmavenmodule.domain.DAO.LoginDAOJSF;
import com.douglas.crudmavenmodule.domain.model.UserBean;
import com.douglas.crudmavenmodule.web.utils.SessionUtils;
import java.sql.SQLException;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "login")
@SessionScoped
public class LoginControler {

    //Obtendo dados do Objeto Modelo
    UserBean userBean = new UserBean();
    String userName = userBean.getUserName();
    String password = userBean.getPassword();
    

    //Validação do Login
    public String validaUsuarioESenha() throws SQLException{
        
        boolean valid = LoginDAOJSF.validate(userName, password);
        if (valid) {
            HttpSession session = SessionUtils.getSession();
            
            session.setAttribute("username", userName);
            return "admin";
        } else {
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_WARN, "Dados incorretos", "Favor Tente novamente"));
            System.out.println("Falhou na controladora");
            
            return "login";
            
        }

    }
    //Invalidar Sessão

    public String logout() {
        HttpSession session = SessionUtils.getSession();
        session.invalidate();
        return "login";
    }

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }
    
    
}
