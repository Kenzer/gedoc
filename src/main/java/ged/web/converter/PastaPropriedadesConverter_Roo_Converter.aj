// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ged.web.converter;

import ged.domain.documentos.PastaPropriedades;
import ged.web.converter.PastaPropriedadesConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

privileged aspect PastaPropriedadesConverter_Roo_Converter {
    
    declare parents: PastaPropriedadesConverter implements Converter;
    
    declare @type: PastaPropriedadesConverter: @FacesConverter("ged.web.converter.PastaPropriedadesConverter");
    
    public Object PastaPropriedadesConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Long id = Long.parseLong(value);
        return PastaPropriedades.findPastaPropriedades(id);
    }
    
    public String PastaPropriedadesConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof PastaPropriedades ? ((PastaPropriedades) value).getId().toString() : "";
    }
    
}
