// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ged.web;

import ged.domain.documentos.Local;
import ged.domain.documentos.Localizador;
import ged.domain.documentos.Pastas;
import ged.web.LocalizadorController;
import ged.web.converter.LocalConverter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.faces.application.Application;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.html.HtmlOutputText;
import javax.faces.component.html.HtmlPanelGrid;
import javax.faces.context.FacesContext;
import org.primefaces.component.autocomplete.AutoComplete;
import org.primefaces.component.inputtext.InputText;
import org.primefaces.component.message.Message;
import org.primefaces.component.spinner.Spinner;
import org.primefaces.context.RequestContext;
import org.primefaces.event.CloseEvent;

privileged aspect LocalizadorController_Roo_ManagedBean {
    
    declare @type: LocalizadorController: @ManagedBean(name = "localizadorController");
    
    declare @type: LocalizadorController: @SessionScoped;
    
    private String LocalizadorController.name = "Localizadors";
    
    private Localizador LocalizadorController.localizador;
    
    private List<Localizador> LocalizadorController.allLocalizadors;
    
    private boolean LocalizadorController.dataVisible = false;
    
    private List<String> LocalizadorController.columns;
    
    private HtmlPanelGrid LocalizadorController.createPanelGrid;
    
    private HtmlPanelGrid LocalizadorController.editPanelGrid;
    
    private HtmlPanelGrid LocalizadorController.viewPanelGrid;
    
    private boolean LocalizadorController.createDialogVisible = false;
    
    private List<Pastas> LocalizadorController.selectedPastass;
    
    @PostConstruct
    public void LocalizadorController.init() {
        columns = new ArrayList<String>();
        columns.add("nivel");
        columns.add("subLocal");
    }
    
    public String LocalizadorController.getName() {
        return name;
    }
    
    public List<String> LocalizadorController.getColumns() {
        return columns;
    }
    
    public List<Localizador> LocalizadorController.getAllLocalizadors() {
        return allLocalizadors;
    }
    
    public void LocalizadorController.setAllLocalizadors(List<Localizador> allLocalizadors) {
        this.allLocalizadors = allLocalizadors;
    }
    
    public String LocalizadorController.findAllLocalizadors() {
        allLocalizadors = Localizador.findAllLocalizadors();
        dataVisible = !allLocalizadors.isEmpty();
        return null;
    }
    
    public boolean LocalizadorController.isDataVisible() {
        return dataVisible;
    }
    
    public void LocalizadorController.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid LocalizadorController.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void LocalizadorController.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid LocalizadorController.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void LocalizadorController.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid LocalizadorController.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void LocalizadorController.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid LocalizadorController.populateCreatePanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText pastassCreateOutput = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        pastassCreateOutput.setId("pastassCreateOutput");
        pastassCreateOutput.setValue("Pastass:   ");
        htmlPanelGrid.getChildren().add(pastassCreateOutput);
        
        HtmlOutputText pastassCreateInput = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        pastassCreateInput.setId("pastassCreateInput");
        pastassCreateInput.setValue("This relationship is managed from the Pastas side");
        htmlPanelGrid.getChildren().add(pastassCreateInput);
        
        Message pastassCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        pastassCreateInputMessage.setId("pastassCreateInputMessage");
        pastassCreateInputMessage.setFor("pastassCreateInput");
        pastassCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(pastassCreateInputMessage);
        
        HtmlOutputText localCreateOutput = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        localCreateOutput.setId("localCreateOutput");
        localCreateOutput.setValue("Local:   ");
        htmlPanelGrid.getChildren().add(localCreateOutput);
        
        AutoComplete localCreateInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        localCreateInput.setId("localCreateInput");
        localCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{localizadorController.localizador.local}", Local.class));
        localCreateInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{localizadorController.completeLocal}", List.class, new Class[] { String.class }));
        localCreateInput.setDropdown(true);
        localCreateInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "local", String.class));
        localCreateInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{local.descricao} #{local.orgao}", String.class));
        localCreateInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{local}", Local.class));
        localCreateInput.setConverter(new LocalConverter());
        localCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(localCreateInput);
        
        Message localCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        localCreateInputMessage.setId("localCreateInputMessage");
        localCreateInputMessage.setFor("localCreateInput");
        localCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(localCreateInputMessage);
        
        HtmlOutputText nivelCreateOutput = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nivelCreateOutput.setId("nivelCreateOutput");
        nivelCreateOutput.setValue("Nivel: * ");
        htmlPanelGrid.getChildren().add(nivelCreateOutput);
        
        Spinner nivelCreateInput = (Spinner) application.createComponent(Spinner.COMPONENT_TYPE);
        nivelCreateInput.setId("nivelCreateInput");
        nivelCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{localizadorController.localizador.nivel}", Integer.class));
        nivelCreateInput.setRequired(true);
        
        htmlPanelGrid.getChildren().add(nivelCreateInput);
        
        Message nivelCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nivelCreateInputMessage.setId("nivelCreateInputMessage");
        nivelCreateInputMessage.setFor("nivelCreateInput");
        nivelCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nivelCreateInputMessage);
        
        HtmlOutputText subLocalCreateOutput = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        subLocalCreateOutput.setId("subLocalCreateOutput");
        subLocalCreateOutput.setValue("Sub Local: * ");
        htmlPanelGrid.getChildren().add(subLocalCreateOutput);
        
        Spinner subLocalCreateInput = (Spinner) application.createComponent(Spinner.COMPONENT_TYPE);
        subLocalCreateInput.setId("subLocalCreateInput");
        subLocalCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{localizadorController.localizador.subLocal}", Integer.class));
        subLocalCreateInput.setRequired(true);
        
        htmlPanelGrid.getChildren().add(subLocalCreateInput);
        
        Message subLocalCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        subLocalCreateInputMessage.setId("subLocalCreateInputMessage");
        subLocalCreateInputMessage.setFor("subLocalCreateInput");
        subLocalCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(subLocalCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid LocalizadorController.populateEditPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText pastassEditOutput = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        pastassEditOutput.setId("pastassEditOutput");
        pastassEditOutput.setValue("Pastass:   ");
        htmlPanelGrid.getChildren().add(pastassEditOutput);
        
        HtmlOutputText pastassEditInput = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        pastassEditInput.setId("pastassEditInput");
        pastassEditInput.setValue("This relationship is managed from the Pastas side");
        htmlPanelGrid.getChildren().add(pastassEditInput);
        
        Message pastassEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        pastassEditInputMessage.setId("pastassEditInputMessage");
        pastassEditInputMessage.setFor("pastassEditInput");
        pastassEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(pastassEditInputMessage);
        
        HtmlOutputText localEditOutput = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        localEditOutput.setId("localEditOutput");
        localEditOutput.setValue("Local:   ");
        htmlPanelGrid.getChildren().add(localEditOutput);
        
        AutoComplete localEditInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        localEditInput.setId("localEditInput");
        localEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{localizadorController.localizador.local}", Local.class));
        localEditInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{localizadorController.completeLocal}", List.class, new Class[] { String.class }));
        localEditInput.setDropdown(true);
        localEditInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "local", String.class));
        localEditInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{local.descricao} #{local.orgao}", String.class));
        localEditInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{local}", Local.class));
        localEditInput.setConverter(new LocalConverter());
        localEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(localEditInput);
        
        Message localEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        localEditInputMessage.setId("localEditInputMessage");
        localEditInputMessage.setFor("localEditInput");
        localEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(localEditInputMessage);
        
        HtmlOutputText nivelEditOutput = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nivelEditOutput.setId("nivelEditOutput");
        nivelEditOutput.setValue("Nivel: * ");
        htmlPanelGrid.getChildren().add(nivelEditOutput);
        
        Spinner nivelEditInput = (Spinner) application.createComponent(Spinner.COMPONENT_TYPE);
        nivelEditInput.setId("nivelEditInput");
        nivelEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{localizadorController.localizador.nivel}", Integer.class));
        nivelEditInput.setRequired(true);
        
        htmlPanelGrid.getChildren().add(nivelEditInput);
        
        Message nivelEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nivelEditInputMessage.setId("nivelEditInputMessage");
        nivelEditInputMessage.setFor("nivelEditInput");
        nivelEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nivelEditInputMessage);
        
        HtmlOutputText subLocalEditOutput = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        subLocalEditOutput.setId("subLocalEditOutput");
        subLocalEditOutput.setValue("Sub Local: * ");
        htmlPanelGrid.getChildren().add(subLocalEditOutput);
        
        Spinner subLocalEditInput = (Spinner) application.createComponent(Spinner.COMPONENT_TYPE);
        subLocalEditInput.setId("subLocalEditInput");
        subLocalEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{localizadorController.localizador.subLocal}", Integer.class));
        subLocalEditInput.setRequired(true);
        
        htmlPanelGrid.getChildren().add(subLocalEditInput);
        
        Message subLocalEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        subLocalEditInputMessage.setId("subLocalEditInputMessage");
        subLocalEditInputMessage.setFor("subLocalEditInput");
        subLocalEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(subLocalEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid LocalizadorController.populateViewPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText pastassLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        pastassLabel.setId("pastassLabel");
        pastassLabel.setValue("Pastass:   ");
        htmlPanelGrid.getChildren().add(pastassLabel);
        
        HtmlOutputText pastassValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        pastassValue.setId("pastassValue");
        pastassValue.setValue("This relationship is managed from the Pastas side");
        htmlPanelGrid.getChildren().add(pastassValue);
        
        HtmlOutputText localLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        localLabel.setId("localLabel");
        localLabel.setValue("Local:   ");
        htmlPanelGrid.getChildren().add(localLabel);
        
        HtmlOutputText localValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        localValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{localizadorController.localizador.local}", Local.class));
        localValue.setConverter(new LocalConverter());
        htmlPanelGrid.getChildren().add(localValue);
        
        HtmlOutputText nivelLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nivelLabel.setId("nivelLabel");
        nivelLabel.setValue("Nivel:   ");
        htmlPanelGrid.getChildren().add(nivelLabel);
        
        HtmlOutputText nivelValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nivelValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{localizadorController.localizador.nivel}", String.class));
        htmlPanelGrid.getChildren().add(nivelValue);
        
        HtmlOutputText subLocalLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        subLocalLabel.setId("subLocalLabel");
        subLocalLabel.setValue("Sub Local:   ");
        htmlPanelGrid.getChildren().add(subLocalLabel);
        
        HtmlOutputText subLocalValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        subLocalValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{localizadorController.localizador.subLocal}", String.class));
        htmlPanelGrid.getChildren().add(subLocalValue);
        
        return htmlPanelGrid;
    }
    
    public Localizador LocalizadorController.getLocalizador() {
        if (localizador == null) {
            localizador = new Localizador();
        }
        return localizador;
    }
    
    public void LocalizadorController.setLocalizador(Localizador localizador) {
        this.localizador = localizador;
    }
    
    public List<Pastas> LocalizadorController.getSelectedPastass() {
        return selectedPastass;
    }
    
    public void LocalizadorController.setSelectedPastass(List<Pastas> selectedPastass) {
        if (selectedPastass != null) {
            localizador.setPastass(new HashSet<Pastas>(selectedPastass));
        }
        this.selectedPastass = selectedPastass;
    }
    
    public List<Local> LocalizadorController.completeLocal(String query) {
        List<Local> suggestions = new ArrayList<Local>();
        for (Local local : Local.findAllLocals()) {
            String localStr = String.valueOf(local.getDescricao() +  " "  + local.getOrgao());
            if (localStr.toLowerCase().startsWith(query.toLowerCase())) {
                suggestions.add(local);
            }
        }
        return suggestions;
    }
    
    public String LocalizadorController.onEdit() {
        if (localizador != null && localizador.getPastass() != null) {
            selectedPastass = new ArrayList<Pastas>(localizador.getPastass());
        }
        return null;
    }
    
    public boolean LocalizadorController.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void LocalizadorController.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String LocalizadorController.displayList() {
        createDialogVisible = false;
        findAllLocalizadors();
        return "localizador";
    }
    
    public String LocalizadorController.displayCreateDialog() {
        localizador = new Localizador();
        createDialogVisible = true;
        return "localizador";
    }
    
    public String LocalizadorController.persist() {
        String message = "";
        if (localizador.getId() != null) {
            localizador.merge();
            message = "Successfully updated";
        } else {
            localizador.persist();
            message = "Successfully created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialog.hide()");
        context.execute("editDialog.hide()");
        
        FacesMessage facesMessage = new FacesMessage(message);
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllLocalizadors();
    }
    
    public String LocalizadorController.delete() {
        localizador.remove();
        FacesMessage facesMessage = new FacesMessage("Successfully deleted");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllLocalizadors();
    }
    
    public void LocalizadorController.reset() {
        localizador = null;
        selectedPastass = null;
        createDialogVisible = false;
    }
    
    public void LocalizadorController.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}