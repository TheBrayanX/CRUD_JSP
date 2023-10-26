package com.branferacc.com.interfaces;

import java.util.List;
import com.branferacc.model.*;

public interface CRUD {
	public List<entidades> listar();	
	public entidades list(int id);
	public boolean añadir(entidades per);
	public boolean editar(entidades per);
	public boolean eliminar(entidades per);
}
