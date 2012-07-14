package ged.web;

import ged.domain.documentos.Local;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Local.class, beanName = "localController")
public class LocalController {
}
