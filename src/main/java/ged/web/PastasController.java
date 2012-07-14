package ged.web;

import ged.domain.documentos.Pastas;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Pastas.class, beanName = "pastasController")
public class PastasController {
}
