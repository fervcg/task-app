package taskapp.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import com.techspot.model.Tarea;

/**
 * DAO (Data Access Object) para la entidad Tarea.
 * Proporciona métodos para realizar operaciones CRUD sobre tareas.
 */
public class TareaDAO {
    
    // Inyección del EntityManager para gestionar las entidades
    @PersistenceContext(unitName = "taskappPU")
    private EntityManager entityManager;

    /**
     * Crea una nueva tarea en la base de datos.
     * @param tarea La tarea a crear.
     */
    public void create(Tarea tarea) {
        entityManager.persist(tarea);
    }

    /**
     * Encuentra una tarea por su ID.
     * @param id El ID de la tarea.
     * @return La tarea encontrada, o null si no existe.
     */
    public Tarea find(Long id) {
        return entityManager.find(Tarea.class, id);
    }

    /**
     * Actualiza una tarea existente en la base de datos.
     * @param tarea La tarea a actualizar.
     */
    public void update(Tarea tarea) {
        entityManager.merge(tarea);
    }

    /**
     * Elimina una tarea por su ID.
     * @param id El ID de la tarea a eliminar.
     */
    public void delete(Long id) {
        Tarea tarea = find(id);
        if (tarea != null) {
            entityManager.remove(tarea);
        }
    }

    /**
     * Cuenta el número de tareas que tienen un estado específico.
     * @param estado El estado de las tareas a contar.
     * @return El número de tareas con el estado especificado.
     */
    public int contarTareasPorEstado(String estado) {
        // Consulta JPQL para contar el número de tareas con el estado dado
        String jpql = "SELECT COUNT(t) FROM Tarea t WHERE t.estado = :estado";
        Query query = entityManager.createQuery(jpql);
        query.setParameter("estado", estado);
        Long count = (Long) query.getSingleResult();
        return count.intValue();
    }
}
