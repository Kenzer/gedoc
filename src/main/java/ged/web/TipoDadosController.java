package ged.web;

import ged.domain.documentos.TipoDados;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = TipoDados.class, beanName = "tipoDadosController")
public class TipoDadosController {
}
