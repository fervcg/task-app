package taskapp.ejb;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import com.techspot.model.Tarea;

/**
 * Bean de sesión sin estado para manejar operaciones CRUD sobre la entidad Tarea.
 */
@Stateless
public class Taskbean {

    // Inyección del EntityManager para interactuar con la base de datos
    @PersistenceContext(unitName = "taskappPU")
    private EntityManager em;

    /**
     * Crea una nueva tarea en la base de datos.
     * @param tarea La tarea a crear.
     */
    public void createTarea(Tarea tarea) {
        em.persist(tarea); // Persistir la tarea en la base de datos
    }

    /**
     * Busca una tarea por su ID.
     * @param id El ID de la tarea a buscar.
     * @return La tarea encontrada, o null si no se encuentra.
     */
    public Tarea findTarea(Long id) {
        return em.find(Tarea.class, id); // Encontrar la tarea usando el ID
    }

    /**
     * Actualiza los detalles de una tarea existente.
     * @param tarea La tarea con los datos actualizados.
     */
    public void updateTarea(Tarea tarea) {
        em.merge(tarea); // Fusionar los cambios de la tarea con la base de datos
    }

    /**
     * Elimina una tarea de la base de datos.
     * @param id El ID de la tarea a eliminar.
     */
    public void deleteTarea(Long id) {
        Tarea tarea = findTarea(id); // Buscar la tarea por su ID
        if (tarea != null) { // Verificar si la tarea existe
            em.remove(tarea); // Eliminar la tarea de la base de datos
        }
    }
}
